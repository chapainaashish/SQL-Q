/* 
Using airthemetic operation in coloumn or data
and adding alias or 'as' keyword to make new data name
by deriving from existing data
*/

SELECT 
first_name,
last_name,
points,
points * 10 AS 'Discount Given'
FROM customers;

/* TO view distinct or non duplicate value we use distinct keyword
just like set in python 
*/

SELECT DISTINCT state
FROM customers;

-- The count function return  the total number of row data from one coloumn just like len 
SELECT COUNT(DISTINCT state)
FROM customers

/* Increasing unit price of product upto 10% */

SELECT 
name,
unit_price,
unit_price * 1.1 AS 'new price'
FROM products;
