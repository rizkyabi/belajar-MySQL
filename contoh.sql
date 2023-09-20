use belajar_mysql;

CREATE TABLE coba
(
	id			INT NOT NULL AUTO_INCREMENT,
	nama		VARCHAR(100) NOT NULL,
	hobby		VARCHAR(100) NOT NULL,
	PRIMARY KEY (id)
) ENGINE = InnoDB;

show create table coba;
describe coba;
select * from coba;

insert into coba(nama, hobby)
values ('rizky', 'futsal'),
	   ('abi', 'sepakbola'),
	   ('rendika', 'membaca');
	   
describe coba;
select * from coba;

update coba 
set hobby = 'bermain'
where id = 3;

select * from coba;

insert into coba(nama, hobby)
values ('contoh', 'contoh');
select * from coba;

delete from coba 
where id = 4;
select * from coba;

alter table coba 
add column umur INT;

alter table coba 
drop column umur;
select * from coba;

alter table coba 
modify nama varchar(100) after id;

describe coba;

alter table coba
rename column kebiasaan to hobby;

select * from coba;

select * from coba 
where nama = 'rizky';

select nama from coba;

select nama as name,
	   hobby as kebiasaan
from coba;

delete from coba 
where id = 5;

select * from coba;

insert into coba(nama, hobby)
values ('abi', 'contoh');

select * from coba 
where nama like '%abi';

select * from coba 
where hobby is not null;

alter table coba 
add column pengeluaran int not null;

describe coba;
select * from coba;

alter table coba 
drop column pengeluaran;

update coba 
set pengeluaran = 50000
where id = 3;

select * from coba 
where pengeluaran >= 20000;

select * from coba 
where pengeluaran BETWEEN 10000 and 20000;

SELECT * FROM coba 
where hobby in ('futsal');

select * from coba 
order by pengeluaran ASC, id DESC;

select * from coba 
where pengeluaran = 0
order by pengeluaran
limit 2 ;

select * from coba;

select last_insert_id();

select id, lower(nama) as 'nama lower'
from coba;

select id, nama, length(nama) as 'nama lower'
from coba;

select count(pengeluaran) as 'total' from coba;
select avg(pengeluaran) as 'rata-rata' from coba;
select max(pengeluaran) as 'harga termahal' from coba;
select min(pengeluaran) as 'harga termurah' from coba;

SELECT * FROM coba;

UPDATE coba 
SET pengeluaran = 25000
WHERE id = 6;

UPDATE coba 
SET pengeluaran = 28000
WHERE id = 7;

SELECT id,
	pengeluaran as price,
	IF(pengeluaran <= 20000, 'standar',
		IF(pengeluaran < 50000, 'mahal', 'mahal banget')
		) as 'standar & mahal'
from coba;

SELECT orders,
	count(id) as 'total'
from coba
group by orders;

desc coba;
SELECT * FROM coba;


CREATE TABLE Day
(
	id		INT NOT NULL,
	hari	VARCHAR(100),
	PRIMARY KEY (id)
) ENGINE InnoDB;

DESC Day;
SELECT * FROM Day;

INSERT INTO Day(id, hari) VALUES (1, 'Senin');
INSERT INTO Day(id, hari) VALUES (2, 'Selasa');
INSERT INTO Day(id, hari) VALUES (3, 'Rabu');
INSERT INTO Day(id, hari) VALUES (4, 'Kamis');
INSERT INTO Day(id, hari) VALUES (5, 'Jumat');
INSERT INTO Day(id, hari) VALUES (6, 'Sabtu');
INSERT INTO Day(id, hari) VALUES (7, 'Minggu');

SELECT Day.hari, coba.nama, coba.hobby, coba.pengeluaran
FROM Day
INNER JOIN coba ON (coba.id = Day.id);

SELECT Day.hari, coba.nama, coba.hobby, coba.pengeluaran
FROM Day
LEFT JOIN coba ON (coba.id = Day.id);

SELECT Day.hari, coba.nama, coba.hobby, coba.pengeluaran
FROM Day
CROSS JOIN coba ON (coba.id = Day.id);

SELECT * FROM Day
CROSS JOIN coba;

select * from Day;






























	  
	  
	  
	  
	  
	  
	  
	  