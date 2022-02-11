-- Declaring variable and using it in SQL

-- User or session variable
-- This variable stays until the session ends or until the database is connected
SET @variable_name = variable_value;

-- Example
SET @marks = 59;

-- Local variable
-- this varaible frees when the stored procedures is over
DECLARE variable_name varaible_data_type DEFAULT default_value;

-- Example 
DECLARE marks INT DEFAULT 40;

-- Example Script

CREATE PROCEDURE get_risk_factor ()
BEGIN
	-- Declaring variables
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoice_total DECIMAL(9, 2) DEFAULT 0;
    DECLARE invoice_count INT;
    
    -- Assigning value into variables
    SELECT COUNT(*), SUM(invoice_total)
    INTO invoice_count, invoice_total
    FROM invoices;
    
    -- Calculatig risk
    SET risk_factor = invoice_total/invoice_count * 5;
    
    -- Selecting result variable
    SELECT risk_factor;
-- Now all the variables got free as soon as the END statement arrivess
END