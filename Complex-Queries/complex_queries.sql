-- Writing Complex queries
-- Find products that are more expensive than Lettuce (id=3)
SELECT * FROM products 
WHERE unit_price > 
(SELECT unit_price 
FROM products 
WHERE product_id = 3)

-- Writing Complex queries
-- Find employes whose salary is more than average from employes table
SELECT * 
FROM employees
WHERE salary > (SELECT AVG(salary)
FROM employees)

-- Find products that have never been ordered
SELECT * 
FROM products
WHERE product_id NOT IN (
	SELECT DISTINCT product_id
    FROM order_items
    

-- it depends on situation whether you should use subquery or join 
-- we recommends to use that which is more readable
-- Find clients without invoices
-- using sub query
SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT DISTINCT client_id
    FROM invoices
    )

-- Find clients without invoices
-- Using left join
SELECT *
FROM clients
LEFT JOIN invoices
 USING(client_id)
 WHERE invoice_id IS NULL

-- Using join 
-- Find customers who have ordered Lettuce (id=3)
SELECT DISTINCT c.first_name, c.last_name, oi.product_id
FROM customers c
JOIN orders o
USING (customer_id)
JOIN order_items oi
USING(order_id)
WHERE oi.product_id = 3