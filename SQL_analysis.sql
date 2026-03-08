-- 1. Which product categories generate the highest revenue?
select Product_Category, round(sum(Purchase_Amount), 2) as Revenue from transactions
group by Product_Category
order by Revenue desc;

-- 2. Which countries generate the most sales?
select Country, round(sum(Purchase_Amount),2) as Sales from transactions
group by Country
order by Sales desc;

-- 3. What are the monthly sales trends?
select Month, round(sum(Purchase_Amount), 2) as Sales from transactions
group by Month
order by Month asc;

-- 4. Which payment methods are used the most?
select Payment_Method, count(Transaction_ID) as Transactions from transactions
group by Payment_Method
limit 5;

-- 5. What is the average purchase amount per country?
select Country, round(AVG(Purchase_Amount), 2) as Average_Purchase_Amount from transactions
group by Country;

-- 6. Which product categories are most popular in each country?
select Country,
	Product_Category 
from (
select Country, 
		Product_Category,
        Count(*) as purchases,
        rank() over(partition by Country order by Count(*) desc) as rnk
        from transactions
        group by Country, Product_Category
    ) as t
where rnk = 1;


-- 7. What age group spends the most money?
select case
	when Age between 18 and 25 then "18-25"
    when Age between 26 and 35 then "26-35"
    when Age between 36 and 45 then "36-45"
    when Age between 46 and 60 then "46-60"
    else "60+"
    end as Age_Group,
    round(sum(Purchase_Amount), 2) as Money_Spent from transactions
    group by Age_Group
    order by Money_Spent desc;
    

-- 8. Who are the top 10 customers by spending?
select User_Name, round(sum(Purchase_Amount), 2) as Amount_Spent from transactions
group by User_Name
order by Amount_Spent desc
limit 10;

-- 9. Which day of the week has the highest sales?
select Day_of_Week, round(sum(Purchase_Amount), 2) as Sales from transactions
group by Day_of_Week 
order by Sales desc;

-- 10. What is the average transaction value for each product category?
select Product_Category, round(avg(Purchase_Amount), 2) as Average_Transaction_Value from transactions
group by Product_Category
order by Average_Transaction_Value desc;

-- Customer Lifetime Value
select User_Name,count(*) as Total_Orders ,round(sum(Purchase_Amount),2) as Lifetime_Value from transactions
group by User_Name
order by Lifetime_Value desc;


-- Most popular payment method by country
SELECT Country,
       Payment_Method
       from (
       select Country,
       Payment_Method,
       count(*),
       rank() over(partition by Country order by count(*) desc) as rnk
       from transactions
       group by Country, Payment_Method
       ) as t
       where rnk =1;

-- Revenue contribution % by Product Category
SELECT Product_Category,
       SUM(Purchase_Amount) AS revenue,
       ROUND(
           SUM(Purchase_Amount) /
           (SELECT SUM(Purchase_Amount) FROM transactions) * 100,2
       ) AS revenue_percent
FROM transactions
GROUP BY Product_Category
ORDER BY revenue DESC;

