use customer_db;
select * from ecommerce;

# Unique Customers
select count(distinct CustomerID) as ActiveCustomers from ecommerce;

# To show the distribution of total sales, average purchase size, and frequency of transactions per Customer
select CustomerID,
count(*) as TransactionFrequency,
sum(TotalSales) as TotalSales,
avg(TotalSales) as AveragePurchaseSize
from ecommerce
group by CustomerID
order by TotalSales desc;

# Understanding RFM Analysis
;with RecencyCTE as (
    select 
        CustomerID,
        DATEDIFF(DAY, MAX(InvoiceDate), GETDATE()) AS Recency
    from ecommerce
    group by CustomerID
),
FrequencyCTE as (
	select
		CustomerID,
		count(*) as Frequency
	from ecommerce
	group by CustomerID
),
MonetaryCTE as (
	select 
		CustomerID,
		sum(TotalSales) as Monetary
	from ecommerce
	group by CustomerID
)
select r.CustomerID,r.Recency,f.Frequency,m.Monetary from RecencyCTE r
join FrequencyCTE f on r.CustomerID=f.CustomerID
join MonetaryCTE m on r.CustomerID=m.CustomerID
order by r.Recency,f.Frequency desc,m.Monetary desc;


# Assigning RFM values
;with RecencyCTE as (
    select 
        CustomerID,
        DATEDIFF(DAY, MAX(InvoiceDate), GETDATE()) AS Recency
    from ecommerce
    group by CustomerID
),
FrequencyCTE as (
	select
		CustomerID,
		count(*) as Frequency
	from ecommerce
	group by CustomerID
),
MonetaryCTE as (
	select 
		CustomerID,
		sum(TotalSales) as Monetary
	from ecommerce
	group by CustomerID
),
RFM as (
	select	
		r.CustomerID,
		NTILE(5) over(order by r.Recency asc) as RecencyScore,
		NTILE(5) over(order by f.Frequency desc) as FrequencyScore,
		NTILE(5) over(order by m.Monetary desc) as MonetaryScore
		from RecencyCTE r
		join FrequencyCTE f on r.CustomerID=f.CustomerID
		join MonetaryCTE m on r.CustomerID=m.CustomerID
)
select 
	CustomerID,
	RecencyScore,
	FrequencyScore,
	MonetaryScore,
	(RecencyScore+FrequencyScore+MonetaryScore) as RFMScore
	from RFM
	order by RFMScore desc;

# Identify Declining Segment
;with Totalsales as (
		select CustomerID,sum(TotalSales) as Totalsales
		from ecommerce
		group by CustomerID
	),
	DeclineSegment as (
		select CustomerID,
		case
			when Totalsales>=2000 then 'High Value'
			when Totalsales between 800 and 1999 then 'Medium Value'
			when Totalsales between 400 and 799 then 'Low Value'
			else 'Dormant'
		end as SalesSegment
		from TotalSales
	)
	select SalesSegment,
			count(CustomerID) as CustomerCount
			from DeclineSegment
			group by SalesSegment
			order by 
				case
					when SalesSegment='High Value' then 1
					when SalesSegment='Medium Value' then 2
					when SalesSegment='Low Value' then 3
					when SalesSegment='Dormant' then 4
				end;