-- Select clients that have an invoices

-- Using where
-- When we using exists function the exists function doesn't actually return the 
-- result set instead it return the boolean VALUES
-- so using 'exist' keyword in large data set is efficient than join and where clause
SELECT *
FROM clients
WHERE client_id IN (
   SELECT DISTINCT client_id
   FROM invoices);

-- Using Join
SELECT DISTINCT clients.client_id, name, address, city, state, phone
FROM clients
JOIN invoices
	USING (client_id);


-- Using exists
SELECT * 
FROM clients
WHERE EXISTS (
	SELECT client_id
    FROM invoices
    WHERE client_id = clients.client_id);

    -- Find the products that have never been ordered
USE sql_store;
SELECT * 
FROM products
WHERE NOT EXISTS(
	SELECT product_id 
    FROM order_items
    WHERE product_id = products.product_id);