-- Roll up operator is only availavle in SQL 
-- It summarize data of each group and as well as the entire result set

-- In this case it sum all group data
SELECT client_id, SUM(invoice_total) AS total_sales
FROM invoices 
GROUP BY client_id WITH ROLLUP

-- In this case first it sum up each individual group and then sum up all whole result set
SELECT state, city, SUM(invoice_total) AS total_sales
FROM invoices 
JOIN clients USING(client_id)
GROUP BY state, city WITH ROLLUP

-- Getting total amount individually and getting total from payment method
SELECT name, SUM(amount)
FROM payments
JOIN payment_methods ON payment_method = payment_method_id
GROUP BY name WITH ROLLUP 
