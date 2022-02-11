-- Creating relationship

-- naming conveintion on foreign key
--      fk_childtablename_parenttablename(primary_key_column_name)  

-- we can't delete or drop table without deleting its parent table
-- so to delete child table we first delete parent table and break relationship
-- example; on the below tables we first have to delete customers table and after orders table

CREATE TABLE IF NOT EXISTS customers
(
	customer_id 	INT PRIMARY KEY AUTO_INCREMENT,
    first_name 		VARCHAR(50) NOT NULL,
    last_name 		VARCHAR(50)  NOT NULL,
    points 			INT NOT NULL DEFAULT 0,
    email 			VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS orders
(
	order_id		INT PRIMARY KEY AUTO_INCREMENT,
    customer_id 	INT NOT NULL,
      date			DATE,
    FOREIGN KEY 	fk_orders_customers(customer_id)
						REFERENCES customers (customer_id)
                        ON UPDATE CASCADE
                        ON DELETE NO ACTION
);

