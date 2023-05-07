-- Transactions are the group of SQL statements that represents a single unit of work
-- all the operation should be  successfully complete or transactions failed
-- Transactions and triggers are used to maintain data consistency
-- Transactions properties
-- ACID properties
--                  1.  Atomicity (Unbreakable unit)
--                  2.  Consistency (Database should be consistent)
--                  3.  Isolation (Only one transaction can modify data at one time)
--                  4.  Durabality (Changes made by the transactions are permanent)

-- Creating our first transactions
-- Mysql commit the transaction if the query doesn't return any error 
-- ROLLBACK; keyword is used to undo all the operation and return to previous state

USE sql_store;

-- Starting transaction
START TRANSACTION;

    INSERT INTO orders (customer_id, order_date, status)
    VALUES(1, '2019-01-01', 1);

    INSERT INTO order_items
    VALUES (last_insert_id(), 1, 1, 1);

-- Commiting if all goes right
COMMIT;

-- in transaction autocommit system variable commit the transaction if it doesn't return any error
-- It is on by default
SHOW VARIABLES LIKE 'autocommit'