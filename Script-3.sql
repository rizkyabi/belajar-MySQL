CREATE USER 'rizky'@'localhost';
CREATE USER 'abi'@'%';

DROP USER 'rizky'@'localhost';
DROP USER 'abi'@'%';

GRANT SELECT ON belajar_mysql.* TO 'rizky'@'localhost';

GRANT SELECT ON belajar_mysql.* TO 'abi'@'%';
GRANT INSERT, UPDATE, DELETE ON belajar_mysql.* TO 'abi'@'%';

SHOW GRANTS FOR 'rizky'@'localhost';
SHOW GRANTS FOR 'abi'@'%';

SET PASSWORD FOR 'rizky'@'localhost' = 'rahasia';
SET PASSWORD FOR 'abi'@'%' = 'rahasia';