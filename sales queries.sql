select * from sales.transactions ;

SELECT count(*) FROM sales.transactions;

select * from sales.transactions limit 5;

select * from sales.transactions where market_code="Mark001";

select * from sales.transactions where currency="USD";

select sales.transactions.* , sales.date.* from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date;

select sales.transactions.* , sales.date.* from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date where year="2020";

#REVENUE OF YEAR 2020
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date where year="2020";

#REVENUE AT YEAR 2020 IN CHENNAI
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date where year="2020" and market_code="Mark001";

select distinct product_code from sales.transactions where market_code="Mark001";

select * from sales.transactions where sales_amount<=0;

select count(*) from sales.transactions where sales.transactions.currency="INR\r";
select count(*) from transactions where transactions.currency="INR\r";

select count(*) from transactions where transactions.currency="INR";

select * from transactions where transactions.currency="USD" or transactions.currency="USD\r";

#REVENUE OF YEAR 2020
select sum(sales_amount) from transactionscc_detail inner join date on transactions.order_date = date.date where date.year = 2020 
and transactions.currency = "INR\r" or transactions.currency = "USD\r";

#REVENUE OF YEAR 2020 AND MONTH JANUARY
select sum(sales_amount) from transactions inner join date on transactions.order_date = date.date where date.year = 2020 
and date.month_name="January"
and transactions.currency = "INR\r" or transactions.currency = "USD\r" ;

#REVENUE OF YEAR 2020 AND MONTH FEBRUARY
select sum(sales_amount) from transactions inner join date on transactions.order_date = date.date where date.year = 2020 
and date.month_name="February"
and transactions.currency = "INR\r" or transactions.currency = "USD\r" ;

#REVENUE OF YEAR 2020 IN CHENNAI
select sum(sales_amount) from transactions inner join date on transactions.order_date = date.date 
where date.year=2020 and  transactions.market_code="Mark001";











