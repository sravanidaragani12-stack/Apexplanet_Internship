DESCRIBE TABLE cleaned_sales_data;
LOAD DATA INFILE "C:\Users\Downloads\cleaned_sales_data(2)"
INTO TABLE cleaned_sales_data;
SELECT * FROM cleaned_sales_data
LIMIT 5;
SELECT COUNT(*) AS total_records
FROM cleaned_sales_data;
SELECT SUM(Total_Revenue)AS total_revenue
From cleaned_sales_data;
SELECT Category,
       SUM(Total_Revenue) AS revenue
FROM cleaned_sales_data
GROUP BY Category
ORDER BY revenue DESC;
SELECT Location,
       SUM(Total_Revenue) AS revenue
FROM cleaned_sales_data
GROUP BY Location
ORDER BY revenue DESC;
SELECT Item,
       SUM(Total_Revenue) AS revenue
FROM cleaned_sales_data
GROUP BY Item
ORDER BY revenue DESC
LIMIT 5;
SELECT Payment_Method,
       SUM(Total_Revenue) AS revenue
FROM cleaned_sales_data
GROUP BY Payment_Method;
SELECT DATE_FORMAT(Transaction_Date, '%Y-%m') AS month,
       SUM(Total_Revenue) AS monthly_revenue
FROM cleaned_sales_data
GROUP BY month
ORDER BY month;