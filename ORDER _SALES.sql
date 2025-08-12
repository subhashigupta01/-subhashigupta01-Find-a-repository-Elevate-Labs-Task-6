select * from sales;

select count(*) from sales;

## EXTRACT MONTH BY DATE

select EXTRACT(MONTH FROM  "Date") as month  FROM SALES;

## GROUP BY YEAR MONTH 

SELECT 
  EXTRACT(YEAR FROM "Date") AS year,
  EXTRACT(MONTH FROM "Date") AS month,
  COUNT(*) AS total_records
FROM sales
WHERE "Date" IS NOT NULL
GROUP BY year, month
ORDER BY year, month;

## SUM OF REVENUE

SELECT SUM("Total Revenue") AS TOTAL_REVENUE
FROM SALES;

## COUNT DISTINCT ID

SELECT COUNT(DISTINCT "TRANSACTIONID") AS UNIQUE_TRANSACTIONS
FROM SALES;

##ORDER BY SHORTING PRODUCT NAME 

SELECT "Product Name", sum("revenue") as total_revenue
FROM SALES
ORDER BY "product Name" DESC;

## LIMIT RESULT FOR SPECIFIC TIME PERIOD

SELECT 
  "Product Name", 
  SUM("Revenue") AS total_revenue
FROM 
  sales
WHERE 
  "Transaction Date" BETWEEN '2025-01-01' AND '2025-03-31'
GROUP BY 
  "Product Name";




