-- UNION operator is used to combine the result-set of two or more SELECT statements
-- Things to know before using UNION keyword
--          the select statement with UNION must have same number of column and similar data types
--          the columns in every select statement must also be in the same order
-- UNION select only distinct value to allow duplication use UNION ALL instead of UNION

SELECT order_id, order_date, 'Active' as status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT order_id, order_date, 'Archived' as status
FROM orders
WHERE order_date <= '2019-01-01';

-- Using if function
SELECT
	order_id, 
    order_date,
    if(year(order_date) = year(now()), 'Active', 'Archieved') AS category
FROM orders;



-- Assignnning user to rank according to their points
SELECT customer_id, first_name, points, 'GOLD' AS status
FROM customers
WHERE points >= 2000
UNION
SELECT customer_id, first_name, points, 'SILVER' AS status
FROM customers
WHERE points BETWEEN 1000 AND 2000
UNION
SELECT customer_id, first_name, points, 'BRONZE' AS status
FROM customers
WHERE points < 1000
ORDER BY customer_id

-- Using case function

SELECT 
	customer_id,
	first_name,
    CASE
		WHEN points>2000 THEN 'Gold'
        WHEN points BETWEEN 1000 AND 2000 THEN 'Silver'
        WHEN points<2000 THEN 'Bronze'
		ELSE 'Unclassified'
	END as customer_rank
FROM customers