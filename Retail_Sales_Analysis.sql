-- Retail Sales Analysis

-- 1. Total Revenue
SELECT SUM(sales_amount) AS Total_Revenue
FROM Sales;

-- 2. Top 10 Products by Revenue
SELECT product_name,
SUM(sales_amount) AS Revenue
FROM Sales
GROUP BY product_name
ORDER BY Revenue DESC
LIMIT 10;

-- 3. Monthly Sales Trend
SELECT
MONTH(order_date) AS Month,
SUM(sales_amount) AS Total_Sales
FROM Sales
GROUP BY MONTH(order_date)
ORDER BY Month;

-- 4. Top Customers
SELECT customer_name,
SUM(sales_amount) AS Total_Spent
FROM Sales
GROUP BY customer_name
ORDER BY Total_Spent DESC;

-- 5. Sales by Category
SELECT category,
SUM(sales_amount) AS Revenue
FROM Sales
GROUP BY category;
