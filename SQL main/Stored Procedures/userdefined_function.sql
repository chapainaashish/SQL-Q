-- userdefined function in SQL
-- Things to consider
--      Every function has at least one attributes. The attributes define what function can do
--      Every function has return value


CREATE FUNCTION get_risk_factor (client_id INT)
RETURNS INTEGER
READS SQL DATA
BEGIN
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoice_total DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoice_count INT;
    
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoice_count, invoice_total
    FROM invoices
    WHERE invoices.client_id = client_id;
    
    SET risk_factor = invoice_total / invoice_count * 5;
    
	RETURN risk_factor;
END


-- Dropping function
    DROP FUNCTION IF EXISTS get_risk_factor

-- Using userdefined function

SELECT 
	client_id, 
    name,
    get_risk_factor(client_id)
FROM clients