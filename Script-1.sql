SELECT id, name, description, price, quantity, created_at
FROM belajar_mysql.products;
insert into products(id, name, price, quantity)
values ('P0006', 'Mie Ayam Pangsit', 20000, 100);
desc products;
show create table products;
select * from products;
delete from products where id='P0006';

alter table products 
add primary key (id);

describe products;
show create table products ;

select * from products where price = 15000; 
select * from products;

select * from products where price = 15000;

alter table products 
change category apaiya int;

alter table products 
change apacategory enum ('Makanan', 'Minuman', 'Lain-lain');

select * from products;

select * from products where id = 'P0001';

update products 
set category = 'Makanan'
where id = 'P0001';

update products 
set category = 'Makanan',
	description = 'Mie Ayam Original + Ceker'
where id = 'P0003';

update products 
set description = 'Mie Ayam Original'
where id = 'P0001';

update products 
set name = 'Mie Ayam Biasa'
where id = 'P0001';
select * from products;
update products 
set category = 'Makanan'
where id = 'P0002';
update products 
set category = 'Makanan',
	description = 'Mie ayam Original + Bakso Besar + Ceker'
where id = 'P0004';
update products 
set category = 'Makanan',
	description = 'Mie Ayam Original'
where id = 'P0001';
select * from products;
update products 
set category = 'Makanan',
	description = 'Mie Ayam Baso Ceker'
where id = 'P0005';

update products 
set price = price - 2000
where id = 'P0003';
SELECT * FROM products;

insert into products(id, name, price, quantity)
values ('P0009', 'Mie', 10000, 50);

delete from products 
where id = 'P0009';
select * from products;

select id as 'kode', 
	   name as nama, 
	   category as kategori, 
	   price as harga, 
	   quantity as jumlah 
from products;

select p.id as 'Kode', 
	   p.name as Nama, 
	   p.category as Kategori, 
	   p.price as Harga, 
	   p.quantity as Jumlah 
from products as p;
select * from products;

insert into products(id, category, name, price, quantity)
values ('P0010', 'dan Lain-lain', 'Kerupuk', 2000, 400),
	   ('P0011', 'dan Lain-lain', 'Keripik Udang', 5000, 300),
	   ('P0012', 'dan Lain-lain', 'Es Krim', 5000, 200),
	   ('P0013', 'Makanan', 'Mie Ayam Jamur', 15000, 50),
	   ('P0014', 'Makanan', 'Bakso Telur', 15000, 150),
	   ('P0015', 'Makanan', 'Bakso Mercon', 20000, 300);

select * from products;
describe products;
alter table products
modify category enum ('Makanan', 'Minuman', 'Lain-lain');

update products 
set category = 'Lain-lain'
where id = 'P0010';

select * from products;

select * from products where quantity > 100;	
select * from products where quantity >= 100;
select * from products where category != 'Makanan';
select * from products where category <> 'Minuman';

select * from products where quantity > 100 and price > 10000;
select * from products where category = 'Makanan' AND price < 20000;

select * from products where quantity > 100 OR price > 20000;

select * from products where (category = 'Makanan' OR quantity > 500) AND  price > 15000;

select * from products where name LIKE  '%mie%';

select * from products where name LIKE  '%Bakso';

SELECT * FROM products WHERE name LIKE description is not null;

SELECT * FROM products WHERE name LIKE description is null;

SELECT * FROM products WHERE price BETWEEN 18000 AND 20000;

SELECT * FROM products WHERE price NOT BETWEEN 18000 AND 20000;

SELECT * FROM  products WHERE category IN ('Lain-lain', 'Minuman');

SELECT * FROM  products WHERE category NOT IN ('Lain-lain', 'Minuman');

SELECT * FROM products WHERE category = 'Minuman' OR category = 'Makanan'; 

SELECT id, category, price, name FROM products ORDER BY category, price	desc; 

SELECT * FROM products ORDER BY id LIMIT 5;

SELECT * FROM products ORDER BY name LIMIT 3;

SELECT * FROM products ORDER BY id LIMIT 5, 5;

SELECT * FROM products ORDER BY id LIMIT 5, 5;

SELECT * FROM products ORDER BY id LIMIT 10, 5;

SELECT DISTINCT category FROM products;
select category from products;
select * from products; 

describe products;
select * from products;

select 10, 10, 10 * 10 as Hasil;
select 10 + 10 as Hasil;

select id, name, price, price div 1000 as 'Price in K'
from products;

select id, cos(price), sin(price), tan(price) from products;

select id, name, category, price
from products
where price div 1000 < 15;

SELECT id,
	LOWER(name) AS 'Name Lower',
	UPPER(name) AS 'Name Upper',
	LENGTH(name) AS 'Name Length'
FROM products;

SELECT id, created_at, 
		EXTRACT(YEAR FROM created_at) AS Year,
		EXTRACT(MONTH FROM created_at) AS Month 
FROM products;

SELECT id, created_at, YEAR(created_at), MONTH(created_at) FROM products;

SELECT id,
	   category,	
	   CASE category
	   		WHEN 'Makanan' THEN 'Enak'
	   		WHEN 'Minuman' THEN 'Segar'
	   		ELSE 'Apa Itu?'
	   		END AS 'Category'
FROM products;

SELECT id,
	   price,
	   IF(price <= 15000, 'Murah', IF(price <= 20000, 'Mahal', 'Mahal Banget')) AS 'Mahal?'
FROM products;

SELECT id, name, IFNULL(description, 'Kosong') AS 'description' FROM products;

SELECT COUNT(id) AS 'Total Product' FROM products;

SELECT MAX(price) AS 'Product Termahal' FROM products;

SELECT MIN(price) AS 'Product Termurah' FROM products;

SELECT AVG(price) AS 'Rata-Rata Harga' FROM products;

SELECT SUM(quantity) AS 'Total Stock' FROM products;

SELECT COUNT(id) AS 'Total Product', category FROM products GROUP BY category;

SELECT MAX(price) AS 'Product Termahal', category FROM products GROUP BY category;

SELECT MIN(price) AS 'Product Termurah', category FROM products GROUP BY category;

SELECT AVG(price) AS 'Rata-Rata Harga', category FROM products GROUP BY category;

SELECT SUM(quantity) AS 'Total Stock', category FROM products GROUP BY category;

SELECT COUNT(id) as total,
	   category
FROM products
GROUP BY category
HAVING total > 2;

select * from products;
describe products;


