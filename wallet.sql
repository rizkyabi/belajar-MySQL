CREATE TABLE wallet
(
	id			INT NOT NULL AUTO_INCREMENT,
	id_customer	INT NOT NULL,
	balance		INT NOT NULL DEFAULT 0,
	PRIMARY KEY (id),
	UNIQUE KEY id_customer_unique (id_customer),
	FOREIGN KEY fk_wallet_customer (id_customer) REFERENCES customers (id)
) ENGINE = InnoDB;

desc wallet;

select * from customers;

INSERT INTO wallet(id_customer) VALUES (1), (3);

select * from wallet;

select customers.email, wallet.balance
FROM customers JOIN wallet on (wallet.id_customer = customers.id);






