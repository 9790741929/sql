create database sql_project;
show databases;
use sql_project;
-- Queries need to be performed for STORE DATA:
-- STORE DATA needs to be imported from this EXCEL: AS datset-table name


-- QUERIES:


-- 1. select the data who is making profit
select * from dataset;
SELECT `Customer Name`, profit from dataset where profit >=0;

-- 2. select the data who is making profit with discount >= 0.5
SELECT profit,discount from dataset where discount >= 0.5;

-- 3.select unique customerID
select distinct(`customer id`) as cust_id from dataset;


-- 4. Take the categories & subcategories in where this unique customerID present
create view custom_id as
                   select distinct(`customer id`) as cust_id from dataset;

select c.cust_id,d.Category,d.`Sub-Category` from custom_id as c
            inner join dataset as d on c.cust_id  = d.`customer id`;

select * from dataset;

-- 5. select most profit making city
select city ,max(profit) from dataset group by city;


-- 6. create a newtable duplicate TABLE
CREATE TABLE dup_dataset AS SELECT * FROM dataset;
SELECT * FROM dup_dataset; 


-- 7. In new table delete the rows whos discount is < 0.3
select * from dup_dataset where  discount <= 0.3;
set sql_safe_updates=0;
delete from dup_dataset where discount<=0.3;
SELECT * FROM dup_dataset; 


-- 8. find what category is saled most
select category,max(sales) from dataset group by category;

-- 9. find which shipmode made most profit  
select `ship mode`,max(profit) from dataset group by `ship mode`;
SELECT * FROM dataset; 

-- 10. GET which subcategories quantity is high
select `Sub-Category`,max(quantity) from dataset group by `Sub-Category` ;

-- 11. select the rank of 21-31 most sales record
select sales,rank() over (order by sales asc ) as ranks from dataset;

create view ranks_data as
       select sales,rank() over (order by sales asc ) as ranks from dataset;
       
select * from ranks_data where ranks>=21 and ranks <=31;


-- 12. create a new column combining category & subcategories ex category = 'Office Supplies' subcategories = 'Binders' newColumn = 'Office Supplies-Binders'
alter table dataset add column `ex category` text;
SELECT * FROM dataset; 
update dataset set `ex category`= concat (`Category`,'-',`Sub-Category`);


-- 13. select the data shipped after 8/3/2015 and befor 1/10/2017 
 SET SQL_SAFE_UPDATES = 0;
UPDATE dataset SET `Order Date` = STR_TO_DATE(`Order Date`, '%m-%d-%Y');

select * from dataset WHERE `Order Date`>='2015-3-8'
and `Order Date`<='2017-10-1';  


-- 14. find the most used customerID
select max(`customer ID`)as max_f_cust_id from dataset ;


-- 15. create a new column having customer_name_lenght
alter table dataset add column `customer_name_length` int;
update dataset set `customer_name_length` =length(`Customer Name`);
SELECT * FROM dataset; 

-- 16. how many unique orders created
select distinct(`Order ID`) from dataset;
select count(distinct(`Order ID`)) from dataset;


-- 17. what orderID has the most saled
select `Order ID`,max(sales) from dataset group by `Order ID`;


-- 18. rank the ordID based on the sales, grouped on city
select `city`,sum(sales) as sumsal from dataset group by `city`;

select `city`,sales,`order id`,rank() over (partition by city order by `order id` ) as ranks
 from dataset;


-- 19.  find the windowfunction-sum basedon partion by date
select `Order Date`,sales,sum(sales) over (partition by `Order Date` order by sales) as sum_win
 from dataset;


-- 20. productID sales
select `product ID`,sales from dataset;
