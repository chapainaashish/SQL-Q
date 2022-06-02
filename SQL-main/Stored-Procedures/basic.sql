-- Stored procedures is used to  store and organize sql code
-- it also helps for faster execution and to enforce database security
    
-- creating stored procedueres
-- $$ is a delimeter that is used to treat procedure as a single unit
-- $$ is here by conveintation we can use others like; // 
DELIMITER $$
CREATE PROCEDURE get_client()
BEGIN
    SELECT * FROM clients;
END$$

-- changing delimiter to default after operation
DELIMITER ;

-- The next tab

-- calling stored_procedures()
CALL get_client()               

-- dropping procedure
DROP PROCEDURE  get_client

-- It will not throw error if procedure doesn't exist
DROP PROCEDURE IF EXISTS get_client