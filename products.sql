SELECT id, name, category, description, price, quantity, created_at
FROM belajar_mysql.products;

INSERT INTO products(id, name, category, price, quantity) 
VALUES ('P0016', 'Permen', 'Lain-lain', 500, 1000);

UPDATE products 
SET price = 1000
WHERE id = 'P0016';

SELECT * FROM products;

ALTER TABLE products 
ADD CONSTRAINT price_check CHECK (price >= 1000);

SHOW CREATE TABLE products;

INSERT INTO products(id, name, category, price, quantity) 
VALUES ('P0017', 'Permen lagi', 'Lain-lain', 500, 1000);

UPDATE products 
SET price = 500
WHERE id = 'P0016';

ALTER table products 
add fulltext product_fulltext (name, description);

show create table products;

SELECT * FROM products where name like '%ayam%' or description like '%ayam%';

SELECT * 
from products
WHERE match(name, description)
	AGAINST('ayam' in natural LANGUAGE mode);

SELECT * 
from products
WHERE match(name, description)
	AGAINST('+bakso -ayam' in boolean mode);

SELECT * 
from products
WHERE match(name, description)
	AGAINST('ayam' with query expansion);

select * from products;	
desc products;

INSERT INTO products(id, name, category, price, quantity) 
VALUES ('P0017', 'contoh', 'Lain-lain', 1000, 1000);

INSERT INTO products(id, name, price, quantity) 
VALUES ('X0001', 'X Satu', 10000, 300),
	   ('X0002', 'X Dua', 11000, 500),
	   ('X0003', 'X Tiga', 15000, 100);
	  
SELECT * FROM products;

SELECT AVG(price) FROM products;

SELECT * FROM products WHERE price > 12210;

SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT MAX(price) FROM products;

UPDATE products
SET price = 1000000
WHERE id = 'X0003';

SELECT MAX(cp.price) FROM (SELECT price FROM categories
JOIN products ON (products.id_category = categories.id)) AS cp;






