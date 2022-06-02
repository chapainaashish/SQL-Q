-- So far we have done about subquery only in where clause
-- we can actually use subqueries in select clause also

SELECT 
	invoice_id, 
    invoice_total,
	(SELECT AVG(invoice_total) FROM invoices) AS average_invoices,
	-- (invoice_total-(SELECT AVG(invoice_total) FROM invoices)) AS difference
    -- We can't directly add alias as arguments
    invoice_total - (SELECT average_invoices) AS differences
FROM invoices;

-- Getting sum of invoices_total, average of invoices_total of each client and 
-- Getting difference between sum and average
-- Here we have used subquery and co-relation queries concept
USE sql_invoicing;
SELECT 
	clients.client_id,
	clients.name,
	(SELECT SUM(invoice_total) FROM invoices WHERE client_id = clients.client_id) AS total_sales,
    (SELECT AVG(invoice_total) FROM invoices WHERE client_id= clients.client_id) AS average,
    (SELECT total_sales - average) AS differences
FROM clients
GROUP BY client_id;