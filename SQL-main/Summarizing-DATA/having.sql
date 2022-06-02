-- The having clause was added to SQL because the WHERE keyword  can't be used with aggregate function
-- HAVING clause is used  after GROUP BY statement
-- While using HAVING clause we can't use coloumn which isnot present in select clause unlike WHERE clause

SELECT client_id, SUM(invoice_total) AS total_sales,
COUNT(invoice_total) AS number_of_invoices
FROM invoices
GROUP BY client_id
HAVING total_sales > 500 AND number_of_invoices > 5


-- Get the customers located in virginia who has spent more than 100
SELECT customer_id, first_name,last_name, SUM(unit_price * quantity) as spent_amount
FROM customers
JOIN orders USING(customer_id)
JOIN order_items USING(order_id)
WHERE state = "VA"
GROUP BY customer_id, first_name, last_name
HAVING spent_amount > 100