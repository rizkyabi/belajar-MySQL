CREATE TABLE guestbooks
(
	id			INT NOT NULL AUTO_INCREMENT,
	email		VARCHAR(100),
	title		VARCHAR(200),
	content		TEXT,
	PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT * FROM customers;

INSERT INTO guestbooks(email, title, content)
VALUES ('guest@gmail.com', 'Hello', 'Hello'),
	   ('guest2@gmail.com', 'Hello', 'Hello'),
	   ('guest3@gmail.com', 'Hello', 'Hello'),
	   ('abi@gmail.com', 'Hello', 'Hello'),
	   ('abi@gmail.com', 'Hello', 'Hello'),
	   ('abi@gmail.com', 'Hello', 'Hello');
	  
SELECT * FROM guestbooks;

SELECT DISTINCT email FROM customers
UNION
SELECT DISTINCT email FROM guestbooks;
	   
SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks;	   
	   
SELECT email FROM customers
UNION ALL
SELECT email FROM guestbooks;		   
	   
SELECT emails.email, COUNT(emails.email) FROM
(SELECT email FROM customers
UNION ALL
SELECT email FROM guestbooks) as emails
GROUP BY emails.email;

SELECT DISTINCT email FROM customers
WHERE email IN(SELECT DISTINCT email FROM guestbooks);

SELECT DISTINCT customers.email FROM customers
INNER JOIN guestbooks ON (guestbooks.email = customers.email);

SELECT DISTINCT customers.email as email_customers, guestbooks.email as email_guestbooks FROM customers
LEFT JOIN guestbooks ON (customers.email = guestbooks.email)
WHERE guestbooks.email IS NULL;

SELECT * FROM guestbooks;

START TRANSACTION;

INSERT INTO guestbooks (email, title, content)
VALUES ('contoh@gmail.com', 'contoh', 'contoh'),
	   ('contoh1@gmail.com', 'contoh', 'contoh'),	   
	   ('contoh2@gmail.com', 'contoh', 'contoh');
	  
SELECT * FROM guestbooks;

COMMIT;

START TRANSACTION;

DELETE FROM guestbooks;

SELECT * FROM guestbooks;

ROLLBACK;


	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   