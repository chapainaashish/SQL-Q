
-- JOINING order and customer tabels
-- Here 'o' and 'c' are alias that we create for orders and customers table respectively
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;
-- Since we have same column name on both table we can also use 'USING' clause
-- USING (customer_id) 


--'ON' refers to the primary key and foreign key
--i.e. JOIN them on the basis of this
SELECT order_id, o.product_id, quantity, o.unit_price, name
FROM order_items o
JOIN products p
ON o.product_id = p.product_id;
-- USING (product_id)

-- Self Join
-- JOINING self table to itself 
USE sql_hr;
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e
JOIN employees m
ON e.reports_to = m.employee_id;

-- Joining Multiple tabels
SELECT order_id, order_date, first_name, last_name,  name AS status
FROM orders so
-- NATURAL JOIN customers c can be used but not recommended
JOIN customers c
	USING (customer_id)

JOIN order_statuses ss
	ON so.status = ss.order_status_id
ORDER BY order_id;

-- Exercise for joining multiple tables
SELECT c.client_id, c.name, c.address, c.phone, ps.amount, ps.date, pm.name AS "payment method"
FROM payments ps
JOIN clients c
	  USING (client_id)
JOIN payment_methods pm
	ON ps.payment_id = pm.payment_method_id
ORDER BY c.client_id;

-- Compound join used
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_Id
    AND oi.product_id = oin.product_id