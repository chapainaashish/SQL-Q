-- WE can use ouput parameter to return a value from stored procedures
-- It's not widely used but good to know

CREATE PROCEDURE call_by_payments_unpaid 
(
	client_id INT,
    OUT invoices_count INT,
    OUT invoices_total DECIMAL(9, 2)
)
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count, invoices_total
    FROM invoices
    WHERE invoices.client_id = client_id
		AND payment_total = 0;
END
