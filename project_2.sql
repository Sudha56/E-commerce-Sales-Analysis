use project;
select * from cleanedsales;

desc cleanedsales;


-- avg profit
select product_category, avg(Profit) as profit from cleanedsales group by product_category order by profit desc;


-- max profit
select product_category, max(Profit) as profit from cleanedsales group by product_category order by product_category desc;


-- payment method
select distinct(Payment_method) from cleanedsales;


-- product category
select distinct(product_category) from cleanedsales;

-- city
select distinct(city) from cleanedsales;


--  payment
select * from cleanedsales where payment_method='Debit Card';

select * from cleanedsales where payment_method='Credit Card';

select * from cleanedsales where payment_method='Cash on Delivery';

select * from cleanedsales where payment_method='Digital Wallet';

select * from cleanedsales where payment_method='Bank Transfer';


-- mostly used payment method
select  payment_method,count(payment_method) as payment_count from cleanedsales group by
payment_method order by payment_count desc;



select * from cleanedsales;


-- max profit in 2023

select distinct city,product_category,payment_method,year,
max(profit) as profit
from cleanedsales where year=2023  group by 
city,product_category,payment_method,year
order by profit desc;



-- min profit in year 2023


SELECT distinct
    city,
    product_category,
    payment_method,
    year,
    MIN(profit) AS profit
FROM 
    cleanedsales
WHERE 
    year = 2023
GROUP BY 
    city,
    product_category,
    payment_method,
    year
ORDER BY 
      profit desc;
    
  


-- each city product count


select city,product_category,count(*) as product from cleanedsales 
group by city,product_category;

select distinct(month) from cleanedsales;


--  profit for 2023

SELECT 
product_category,
 year AS purchase_year,
  month AS purchase_month,
  COUNT(*) AS total_purchases,
  max(profit) as profit
FROM cleanedsales where year=2023
GROUP BY 
year,
  month,
  product_category
ORDER BY 
  total_purchases ;
  


--    profit for 2024
  SELECT 
product_category,
 year AS purchase_year,
  month AS purchase_month,
  COUNT(*) AS total_purchases,
  max(profit) as profit
FROM cleanedsales where year=2024
GROUP BY 
year,
  month,
  product_category
ORDER BY 
  total_purchases ;
  
  
-- maxi profit for the product


select product_category,year as purchase_year,
month as purchase_month,
min(profit) as max_profit
from cleanedsales where year=2023
group by purchase_year,purchase_month,product_category
having count(*)=(Select max(total_count)
 FROM (
    SELECT COUNT(*) AS total_count
    FROM cleanedsales
    WHERE year = 2023 
    GROUP BY product_category, month) as subquery)
    order by max_profit desc;
  
  select * from cleanedsales;
  


 

 --  sum of profit and avg discount
 
 SELECT 
    Product_category,
    City,
    SUM(Profit) AS Total_Profit,
    AVG(Discount_amount) AS Avg_Discount,
    COUNT(Order_ID) AS Total_Orders
FROM cleanedsales
GROUP BY 
    Product_category, 
    City
ORDER BY 
    Total_Orders DESC;
    
 -- min and max profit by month and year
 
SELECT 
    Product_category,
    YEAR,
    MONTH,
    MAX(Profit) AS Max_Profit,
    MIN(Profit) AS Min_Profit
FROM cleanedsales
GROUP BY 
    Product_category, 
    YEAR, 
    MONTH
ORDER BY 
    Product_category, 
    Year, 
    Month;
    
    -- min and max profit

WITH MonthlyProfit AS (
    SELECT 
        Product_category,
        YEAR,
        MONTH,
        SUM(Profit) AS Total_Profit
    FROM cleanedsales
    GROUP BY 
        Product_category, 
        YEAR, 
        MONTH
)
SELECT 
    Product_category,
    MAX(Total_Profit) AS Max_Profit,
    MIN(Total_Profit) AS Min_Profit
FROM MonthlyProfit
GROUP BY Product_category
ORDER BY Product_category;


select * from cleanedsales
where city='bursa' and product_category='Toys';

select product_category,city,cost,max(Payment_method) as pay_method ,
is_returning_customer,max(profit)as profit from cleanedsales 
where is_returning_customer='True'
group by product_category,city,cost,is_returning_customer;



--  checking most used device
SELECT 
    Device_Type,
    COUNT(*) AS Total_Orders,
    SUM(Total_Amount) AS Total_Sales
FROM cleanedsales
GROUP BY Device_Type
ORDER BY Total_Sales DESC;

SELECT 
    Customer_ID,
    SUM(Profit) AS Total_Profit,
    COUNT(Order_ID) AS Orders_Count
FROM cleanedsales
GROUP BY Customer_ID
ORDER BY Total_Profit DESC
LIMIT 10;


--  monthly sales

SELECT 
    Year,
    Month,
    SUM(Total_Amount) AS Monthly_Sales,
    SUM(Profit) AS Monthly_Profit
FROM cleanedsales
GROUP BY Year, Month
ORDER BY Year, Month;


-- Yearly sales
SELECT 
    Year,
    SUM(Total_Amount) AS Yearly_Sales,
    SUM(Profit) AS Yearly_Profit
FROM cleanedsales
GROUP BY Year
ORDER BY Year;


  -- highest proit by city
  
  select city,sum(profit) as profit
  from cleanedsales group by city
  order by profit desc;

SELECT 
    City,
    SUM(Profit) AS Total_Profit,
    AVG(Profit) AS Avg_Profit
FROM cleanedsales
GROUP BY City
ORDER BY Total_Profit DESC;



-- profit by product_category

  select city,product_category,sum(profit) as profit
  from cleanedsales group by product_category,city
  order by product_category;
  
  
  
  SELECT 
    city,product_category,
    COUNT(product_category) AS total_purchases
FROM cleanedsales
GROUP BY city,product_category
ORDER BY total_purchases DESC;



SELECT 
    city,
    product_category,
    total_purchases
FROM (
    SELECT 
        city,
        product_category,
        COUNT(*) AS total_purchases,
        RANK() OVER (PARTITION BY city ORDER BY COUNT(*) DESC) AS rank_no
    FROM cleanedsales
    GROUP BY city, product_category
) AS ranked
WHERE rank_no = 1
ORDER BY total_purchases DESC;


  
  select  payment_method,city,product_category,
  sum(profit) as profit from cleanedsales
  group by payment_method,city,product_category
  having profit;
  
 
 