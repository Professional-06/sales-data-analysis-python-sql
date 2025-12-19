-- 1️⃣ Total sales by region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region;

-- 2️⃣ Total profit by category
SELECT Category, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Category;

-- 3️⃣ Top 5 products by sales
SELECT ProductName, SUM(Sales) AS Product_Sales
FROM sales_data
GROUP BY ProductName
ORDER BY Product_Sales DESC
LIMIT 5;

-- 4️⃣ Monthly sales trend
SELECT MONTH(OrderDate) AS Month, SUM(Sales) AS Monthly_Sales
FROM sales_data
GROUP BY MONTH(OrderDate)
ORDER BY Month;

-- 5️⃣ Orders with profit < 0 (loss-making)
SELECT OrderID, ProductName, Profit
FROM sales_data
WHERE Profit < 0;
