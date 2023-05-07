-- Subquery in the FROM clause

-- Getting sum of invoices_total, average of invoices_total of each client and 
-- Getting difference between sum and average
-- Here we have used subquery and co-relation queries concept

-- while subquering from  FROM clause it is mendatory give an alias.
-- The following subquery return a table which we can filter, create a new table join and other operation
-- The following subquery can be saved in views and we can directly import from it


SELECT *
FROM (
	SELECT 
		clients.client_id,
		clients.name,
		(SELECT SUM(invoice_total) FROM invoices WHERE client_id = clients.client_id) AS total_sales,
		(SELECT AVG(invoice_total) FROM invoices WHERE client_id= clients.client_id) AS average,
		(SELECT total_sales - average) AS differences
	FROM clients
	GROUP BY client_id
) AS sales_summary
WHERE total_sales IS NOT NULL

