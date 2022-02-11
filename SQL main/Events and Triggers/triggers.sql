-- Triggers
-- A block of SQL code that automatically gets executed before or after 
-- an insert, update or delete statement
-- we can't set a trigger on same table in where we modified data, otherwise infinite loop will happen

-- Viewing all triggers in database
SHOW TRIGGERS

-- Finding specific trigger asscoiated to particular table
-- here we using string search it will search triggers name 
-- so that triggers name should be specific and meaningful
SHOW TRIGGERS LIKE "table_name%"

DELIMITER $$
CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
END $$

DELIMITER ;

-- Create a trigger that gets fired when we delete a payment

DELIMITER $$
CREATE TRIGGER payments_after_delete
    AFTER DELETE ON payments 
    FOR EACH ROW
BEGIN
    UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
END $$

DELIMITER ;

-- the above trigger will be triggered from the below command
DELETE FROM payments
WHERE  payment_id=9

-- Dropping Triggers
DROP TRIGGER IF EXISTS trigger_name;

