CREATE TABLE categories
(
	id		VARCHAR(10) NOT NULL,
	name	VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE = InnoDB;

DESC categories;

ALTER TABLE products 
	DROP COLUMN category;
	
DESCRIBE products;

ALTER TABLE products 
ADD COLUMN id_category VARCHAR(10); 

ALTER TABLE products
	ADD CONSTRAINT fk_products_categories
		FOREIGN KEY (id_category) REFERENCES categories (id);
	
SHOW CREATE TABLE products;

SELECT * FROM products; 
		
INSERT INTO categories (id, name)
VALUES ('C0001', 'Makanan'),
	   ('C0002', 'Minuman'),
	   ('C0003', 'Lain-lain');

SELECt * FROM categories;

UPDATE products
SET id_category = 'C0001'
WHERE id IN ('P0001', 'P0002', 'P0003', 'P0004', 'P0005', 'P0006', 'P0013', 'P0014', 'P0015');

UPDATE products
SET id_category = 'C0002'
WHERE id IN ('P0007', 'P0008', 'P0009');

UPDATE products
SET id_category = 'C0003'
WHERE id IN ('P0010', 'P0011', 'P0012', 'P0016');

SELECT * FROM products;

SELECT products.id, products.name, categories.name
FROM products 
JOIN categories ON (products.id_category = categories.id);

INSERT INTO categories (id, name)
VALUES ('C0004', 'Oleh-oleh'),
	   ('C0005', 'Gadget');
	  
SELECT * FROM categories;

delete from categories where id = 'C0005';

INSERT INTO  categories (id, name)
VALUES ('C0005', 'Gadget');

SELECT * FROM categories
INNER JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
LEFT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
RIGHT JOIN products ON (products.id_category = categories.id);

SELECT * FROM categories
CROSS JOIN products;

CREATE TABLE numbers (
	id INT NOT NULL,
	PRIMARY KEY (id)
) ENGINE = InnoDB;

INSERT INTO numbers(id) values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);

SELECT * FROM numbers;

select numbers1.id, numbers2.id, (numbers1.id * numbers2.id)  
from numbers as numbers1
cross join numbers as numbers2
order by numbers1.id, numbers2.id;



















	
	
	
	
	
	
	
	
	
	