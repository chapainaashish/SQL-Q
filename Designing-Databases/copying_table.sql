-- Copying data of one table to another
-- This query copy 'orders' table data to 'orders_reloaded'
-- However, it will no copy 'orders' table attribute to the new table like; primary key and auto increment 'ai'
CREATE TABLE orders_reloaded AS -- this is main query
SELECT * FROM orders    -- this is called sub-query which is inside the query

-- Inserting filtered data in table 
INSERT INTO orders_reloaded -- main query
SELECT *                    -- sub query
FROM orders
WHERE order_date < '2019-01-01'

-- Creating table joining with another table and only copying data which has payment date
CREATE TABLE invoice_reloaded AS 
SELECT iv.invoice_id, c.name AS clients,, iv.number, iv.payment_total, iv.payment_date
FROM invoices iv
JOIN clients c
	ON c.client_id = iv.client_id
    -- USING(client_id) also can be used instead of ON keyword
WHERE iv.payment_date IS NOT NULL
