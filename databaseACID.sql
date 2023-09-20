create database belajar_acid;

USE belajar_acid;

CREATE TABLE accounts
(
 	id			VARCHAR(100) PRIMARY KEY,
 	name		VARCHAR(100) NOT NULL,
 	balance		BIGINT		 NOT NULL
) ENGINE = InnoDB;

SELECT * FROM accounts;

START TRANSACTION;

INSERT INTO accounts (id, name, balance)
VALUES ('rizky', 'abi', 1000000);

INSERT INTO accounts (id, name, balance)
VALUES ('abi', 'rendika', 2000000);

COMMIT;

START TRANSACTION;

DELETE FROM accounts WHERE id = 'rizky';

DELETE FROM accounts WHERE id = 'abi';

SELECT * FROM accounts;

ROLLBACK;

SELECT * FROM accounts;

START TRANSACTION;

UPDATE accounts SET name = null
WHERE id = 'rizky';

COMMIT;

SELECT * FROM accounts;

START TRANSACTION;

SELECT * FROM accounts WHERE id IN ('rizky', 'abi') FOR UPDATE;

UPDATE accounts SET balance = balance + 500000
WHERE id = 'rizky';

UPDATE accounts SET balance = balance + 500000
WHERE id = 'abi';

COMMIT;

SELECT * FROM accounts;	












































