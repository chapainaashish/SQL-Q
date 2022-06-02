-- Outer join

SELECT c.customer_id, c.first_name, o.order_id, o.order_date
FROM customers c    --LEFT table
LEFT JOIN orders o  --RIGHT table
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

--Selecting order or unordered products from two tables
SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi
	 ON p.product_id = oi.product_id
ORDER BY p.product_id;

-- Joining multiple tables with outter join
SELECT c.customer_id, c.first_name, o.order_id, o.order_date, sh.name AS shipper
FROM customers c    
LEFT JOIN orders o  
    ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON sh.shipper_id = o.shipper_id
ORDER BY c.customer_id ;

-- Using self outer JOIN
USE sql_hr;
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e
LEFT JOIN employees m
ON e.reports_to = m.employee_id;

-- DOING CROSS JOIN
SELECT *
FROM shippers
CROSS JOIN products
ORDER BY shipper_id;

-- Natural Join
SELECT *
FROM customers
NATURAL JOIN products
ORDER BY name;