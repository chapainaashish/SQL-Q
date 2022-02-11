-- Group by function
-- The GROUP BY statement is often used with aggregate 
-- functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to 
-- group the result-set by one or more columns.


SELECT client_id, 
SUM(invoice_total) AS total_sales
FROM invoices
WHERE invoice_date >= '2019-07-01'
GROUP BY client_id
ORDER BY total_sales DESC


-- selecting from multiple table 
SELECT state, city,
SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients USING(client_id)
GROUP BY state, city

-- FOR each date and payment method we are querying total payment
SELECT date, name AS payment_method,
SUM(amount) as total_payments
FROM payments
JOIN payment_methods ON (payment_method = payment_method_id)
GROUP BY payment_method, date