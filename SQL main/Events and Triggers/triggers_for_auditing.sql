-- Auditing is used to generate a report like of action that performed in databases
-- ON the below code we have made a trigger that will write into a table about deletion and 
-- insertion of data

DELIMITER $$

-- dropping before creating is a best practice one should follow
DROP TRIGGER IF EXISTS payments_after_insert;

CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices
    SET payment_total = payment_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    -- inserting data into payments_audit table after data insertion happen in payments table
    INSERT INTO payments_audit
    VALUES(NEW.client_id, NEW.date, NEW.amount, 'Insert', NOW());
END $$

DELIMITER ;

-- The above trigger will work if we perform insertion in our payments table
-- below is the example
INSERT INTO payments
VALUES(DEFAULT, 5, 3 ,'2019-01-01', 10, 1);


-- New trigger 
DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_delete;

CREATE TRIGGER payments_after_delete
    AFTER DELETE ON payments 
    FOR EACH ROW
BEGIN
    UPDATE invoices
    SET payment_total = payment_total - OLD.amount
    WHERE invoice_id = OLD.invoice_id;
    
    -- inserting data into payments_audit table after deletion happen in payments table
	INSERT INTO payments_audit
    VALUES(OLD.client_id, OLD.date, OLD.amount, 'Delete', NOW());
END $$

DELIMITER ;

-- The above trigger will be executed from the below deletion code
DELETE FROM payments
WHERE payment_id=10;