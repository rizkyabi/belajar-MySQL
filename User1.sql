START TRANSACTION;

SELECT * FROM guestbooks;

UPDATE guestbooks 
SET title = 'Diubah oleh user 1'
WHERE id = 9;

COMMIT;

START TRANSACTION;

SELECT * FROM products;

SELECT * FROM products WHERE id = 'P0006' FOR UPDATE;

UPDATE products 
SET quantity = quantity - 10
WHERE id = 'P0006';

COMMIT;

# DEADLOCK

START TRANSACTION;

SELECT * FROM products WHERE id = 'P0006' FOR UPDATE;

SELECT * FROM products WHERE id = 'P0007' FOR UPDATE;

# LOCK TABLE

LOCK TABLES products READ;

UPDATE products 
SET quantity = 100
WHERE id = 'P0006';

UNLOCK TABLES;

# LOCK TABLE WRITE

LOCK TABLES products WRITE;

UPDATE products 
SET quantity = 100
WHERE id = 'P0006';

SELECT * FROM products;

UNLOCK TABLES;

# LOCK INSTANCE

LOCK INSTANCE FOR BACKUP;

UNLOCK INSTANCE;







