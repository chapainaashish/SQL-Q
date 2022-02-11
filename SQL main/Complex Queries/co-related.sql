-- If there is the relation between outer query and inner query  it is known as co-relation between queries.
-- when we pass the corelation query the inner query is going to execute for each row of table.
SELECT *
FROM employees
WHERE salary > (
SELECT AVG(salary)
FROM employees
WHERE office_id = employees.office_id)


-- Get invoices that are larger than the 
-- client's average invoice total
SELECT *
FROM invoices
WHERE invoice_total > (
	SELECT AVG(invoice_total)
	FROM invoices
	WHERE client_id = invoices.client_id)