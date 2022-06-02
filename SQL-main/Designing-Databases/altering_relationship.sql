-- Altering primary key and foreign key on existing tables
-- when dropping foreign key we don't specify the column cause it is automatically detected


ALTER TABLE orders
	ADD PRIMARY KEY (order_id),
    DROP PRIMARY KEY,
	DROP FOREIGN KEY fk_orders_customers,
    ADD FOREIGN KEY fk_orders_customers(customer_id)
		REFERENCES customers (customer_id)
		ON UPDATE CASCADE
		ON DELETE NO ACTION
