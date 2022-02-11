-- Creating Tables

USE sql_invoicing;
CREATE TABLE  IF NOT EXISTS payments_audit
(
	client_id		INT PRIMARY KEY AUTO_INCREMENT,
    date			DATE,
    amount			DECIMAL(9,2),
    action_type		VARCHAR(50),
    action_date		DATETIME
)

-- creating customers table

CREATE DATABASE IF NOT EXISTS new_database;
USE new_database;

-- starts
CREATE TABLE IF NOT EXISTS customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50)  NOT NULL,
    points INT NOT NULL DEFAULT 0,
    email VARCHAR(255) NOT NULL UNIQUE
);

-- Altering existed table
-- here, we have added, modify and drop column
ALTER TABLE  customers
    ADD address VARCHAR(50)  NOT NULL AFTER first_name,
    MODIFY COLUMN first_name VARCHAR(55) DEFAULT 'aashish',
    DROP points;





