CREATE DATABASE sales_project;
USE sales_project;

SELECT * FROM sales LIMIT 5;

SELECT ROUND(SUM(Sales),2) AS Total_Revenue
FROM sales;

SELECT Region, ROUND(SUM(Sales),2) AS Revenue
FROM sales
GROUP BY Region
ORDER BY Revenue DESC;

SELECT `Product Name`, ROUND(SUM(Sales),2) AS Revenue
FROM sales
GROUP BY `Product Name`
ORDER BY Revenue DESC
LIMIT 10;

SELECT `Customer Name`, ROUND(SUM(Sales),2) AS Revenue
FROM sales
GROUP BY `Customer Name`
ORDER BY Revenue DESC
LIMIT 10;

SELECT Year, Month, ROUND(SUM(Sales),2) AS Revenue
FROM sales
GROUP BY Year, Month
ORDER BY Year, Month;

SELECT Category, ROUND(SUM(Sales),2) AS Revenue
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;