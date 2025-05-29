USE Sales;

Select * from transactions;
select * from markets;
select * from transactions,markets where markets.markets_name="Chennai" and markets.markets_code=transactions.market_code;
select count(*) from transactions,markets where markets.markets_name="Chennai" and markets.markets_code=transactions.market_code;
select * from transactions where currency="USD";
select * from date;
select * from transactions,date where date.year=2020 and transactions.order_date=date.date;
select sum(transactions.sales_amount) from transactions,date where date.year=2020 and transactions.order_date=date.date;
select sum(transactions.sales_amount) from transactions,markets,date 
where date.year=2020 and transactions.order_date=date.date 
and transactions.market_code=markets.markets_code and markets.markets_name="Chennai" ;
select * from transactions where sales_amount <=0;
select distinct(currency) from transactions;
select * from transactions where currency='INR\r';
select count(*) from transactions where currency='INR\r';
select count(*) from transactions where currency='INR';
select count(*) from transactions where currency='USD\r';
select count(*) from transactions where currency='USD';

select sum(sales_amount) from transactions where year(order_date)=2020;
select sum(t.sales_amount) from transactions as t,date as d where t.order_date=d.date and d.year=2020; 
select sum(t.sales_amount) from transactions as t,date as d where t.order_date=d.date and d.year=2017 and month_name = "September"; 
select sum(t.sales_amount) from transactions as t,date as d where t.order_date=d.date and d.year=2017 and month_name = "December"; 
select sum(t.sales_amount) from transactions as t, date as d, markets as m 
where t.order_date=d.date and d.year=2020 and m.markets_code=t.market_code and m.markets_name="Chennai";


