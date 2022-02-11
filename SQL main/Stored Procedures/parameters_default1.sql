-- stored procedures with two parameters

DROP PROCEDURE IF EXISTS group_by_client_payments;
DELIMITER $$
CREATE PROCEDURE group_by_client_payments(client_id INT, payment_method_id TINYINT)
BEGIN
	SELECT *
    FROM payments p
    WHERE 
		p.client_id = IFNULL(client_id, p.client_id) AND
		p.payment_method = IFNULL(payment_method_id, p.payment_method);
END$$
DELIMITER ;

-- calling procedueres
call sql_invoicing.group_by_client_payments(5, NULL);
call sql_invoicing.group_by_client_payments(NULL, NULL);
call sql_invoicing.group_by_client_payments(NULL, 2);
