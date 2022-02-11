DROP PROCEDURE IF EXISTS group_clients_by_state;

DELIMITER $$
-- Passing state argument
CREATE PROCEDURE group_clients_by_sate(state CHAR(2))
BEGIN
	SELECT *
    FROM clients
    WHERE clients.state = state;
END$$

DELIMITER ;

-- Calling procedure by passing parameter into it
call sql_invoicing.group_clients_by_sate('CA');

-- Passing default value


-- returning default value VA if null
DELIMITER $$
CREATE PROCEDURE group_clients_by_sate(state CHAR(2))
BEGIN
	IF state IS NULL THEN
		SET state = 'VA';
	END IF;
	SELECT *
    FROM clients
    WHERE clients.state = state;
END$$
DELIMITER ;

-- Returning all value if null
DELIMITER $$
CREATE PROCEDURE group_clients_by_sate(state CHAR(2))
BEGIN
	IF state IS NULL THEN
		SELECT * FROM clients;
	ELSE
		SELECT * FROM clients
        WHERE clients.state = state;
	END IF;
    
END$$
DELIMITER ;

-- A better approach
-- Returning all value if null
DELIMITER $$
CREATE PROCEDURE group_clients_by_sate(state CHAR(2))
BEGIN
	SELECT * 
    FROM clients
    WHERE clients.state = IFNULL(state, clients.state);
END$$
DELIMITER ;