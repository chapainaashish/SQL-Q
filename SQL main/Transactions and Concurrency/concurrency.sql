-- when two or more user try to access the database than it is known as concurrency
-- concurrecy can become a problem when one user modifying or deleting data and
-- another one is trying to retrieve it
-- Mysql deal most of the concurrency problem but for some of them we have manually deal with
-- Concurrency Problems;
--      1. Lost Updates (Lost one data while handling another)
--      2. Dirty Reads (Select or retrieve uncommited data)
--      3. Non-repeating Reads (Inconsistent data reading, read same data twice in the transaction but get different result)
--      4. Phantom Reads (Miss the data that appear after our transaction)


-- Transactions Isolation Levels

--      Isolation Levels                               Solve Concurrency Probles
--          1. READ UNCOMMITED                              (Solve None)
--          2. READ COMMITED                                (Dirty Reads)
--          3. REPEATABLE READ                              (Lost updates, Dirty Reads, Non-repeating Read)
--          4. SERIALIZABLE                                 (Solve all)


-- SERIALIZABLE Isolation level decline all the concurrency problems but we have to trade off with resources and speed
-- Mysql by default use Repeatable read isolation level to prevent data concurrency problem except phantom reads

-- Viewing Transaction isolation
SHOW VARIABLES LIKE 'transaction_isolation';

-- Setting transaction isolation level to READ COMMITED for only next transaction
SET GLOBAL TRANSACTION ISOLATION LEVEL READ COMMITED;

-- Setting transaction isolation level to REPEATABLE CODE for global
SET GLOBAL TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- Setting transaction isolation level to SERIALIZABLE CODE for this session
-- in application we should change isolation level only for that session so that other database won't be affected
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;