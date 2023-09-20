START TRANSACTION;

SELECT * FROM guestbooks;

UPDATE guestbooks 
SET title = 'Diubah oleh user 2'
WHERE id = 9;

COMMIT;

START TRANSACTION;

SELECT * FROM products;

SELECT * FROM 	products WHERE id = 'P0006' FOR UPDATE;

UPDATE products 
SET quantity = quantity - 10
WHERE id = 'P0006';

COMMIT;

SELECT * FROM 	products WHERE id = 'P0006';

# DEADLOCK

START TRANSACTION;

SELECT * FROM products WHERE id = 'P0007' FOR UPDATE;

SELECT * FROM products WHERE id = 'P0006' FOR UPDATE;

# LOCK TABLE

SELECT * FROM products;

UPDATE products 
SET quantity = 100
WHERE id = 'P0006';

# LOCK TABLE WRITE

SELECT * FROM products;

# LOCK INSTANCE

ALTER TABLE products 
ADD COLUMN sample VARCHAR(100);










