-- VIEWS
-- views is used to save complex queries and subqueries in view to simplify in select statement 
-- and for future use so we don't have to code same queries multiple times
-- NOTE: unlike tables view doesn't save data inside it 
-- it just save a sql query
-- we should save view in .sql format and put them into source control share with other

-- creating sales_by_client view
CREATE VIEW sales_by_client AS
	SELECT 
		c.client_id,
		c.name,
		SUM(invoice_total) AS total_sales
	FROM clients c
	JOIN invoices i 
	USING(client_id)
	GROUP BY client_id, name


-- we can use view just like a table
SELECT *
FROM sales_by_client
JOIN clients USING(client_id)
WHERE total_sales > 500
ORDER BY total_sales DESC

-- creating a view to see the balance
CREATE  OR REPLACE VIEW clients_balance AS
	SELECT 
		c.client_id,
		c.name,
        SUM(invoice_total-payment_total) AS balance
		-- SUM(invoice_total) - SUM(payment_total) AS balance #Both upper line and this line are technically same
	FROM clients c  
	JOIN invoices i
		USING(client_id)
	GROUP BY client_id, name

-- dropping views
DROP VIEW sales_by_client

-- altering existing view
CREATE  OR REPLACE VIEW clients_balance AS
	SELECT 
		c.client_id,
		c.name,
        SUM(invoice_total-payment_total) AS balance
		-- SUM(invoice_total) - SUM(payment_total) AS balance #Both upper line and this line are technically same
	FROM clients c  
	JOIN invoices i
		USING(client_id)
	GROUP BY client_id, name
