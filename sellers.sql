CREATE TABLE sellers
(
	id		INT			NOT NULL AUTO_INCREMENT,
	name	VARCHAR(100) NOT NULL,
	name2	VARCHAR(100),
	name3	VARCHAR(100),
	email	VARCHAR(100) NOT NULL,
	PRIMARY KEY (id),
	UNIQUE KEY email_unique (email),
	INDEX name_index (name),
	INDEX name2_index (name2),
	INDEX name3_index (name3),
	INDEX name1_name2_name3_index (name, name2, name3)
) ENGINE = InnoDB;

use belajar_mysql;

DESC sellers;

SHOW create table sellers;

select * from sellers where name = 'x';

select * from sellers where name = 'x' and name2 = 'x';

select * from sellers where name = 'x' and name2 = 'x';

select * from sellers where name = 'x' and name2 = 'x' and name3 = 'x';

alter table sellers 
drop index name_index;














































