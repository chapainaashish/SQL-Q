-- Parameter validation is used to validate the data before storing it to database
-- It return the error if the data doesn't qualify certain criteria
-- Parmeter validation should be short and minimialstic
-- we can update, delete read data through procedures in SQL

CREATE PROCEDURE make_payment
(
    invoice_id INT,
    -- upto 9 figure and 2 digit after decimal point
    payment_amount DECIMAL(9, 2),  
    payment_date DATE
)
BEGIN
	-- This is like handling exception
	IF payment_amount <= 0 THEN
		SIGNAL SQLSTATE  '22003'
        SET MESSAGE_TEXT = 'Invalid payment amount';
	END IF;
	UPDATE invoices i 
	SET
		i.payment_total = payment_amount,
		i.payment_date = payment_date
	WHERE i.invoice_id = invoice_id;
		
END