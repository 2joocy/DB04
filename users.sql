DROP USER IF EXISTS 'inventoryManager'@'localhost';
CREATE USER 'inventoryManager'@'localhost' IDENTIFIED BY 'mingade';
GRANT SELECT, INSERT, UPDATE ON classicmodels.products TO 'inventoryManager'@'localhost';
GRANT ALL privileges ON classicmodels.productlines TO 'inventoryManager'@'localhost';

DROP USER IF EXISTS 'bookKeeper'@'localhost';
CREATE USER 'bookKeeper'@'localhost' IDENTIFIED BY 'mingade';
GRANT SELECT, UPDATE ON classicmodels.orders TO 'bookKeeper'@'localhost';
GRANT SELECT, UPDATE ON classicmodels.orderdetails TO 'bookKeeper'@'localhost';
GRANT SELECT ON classicmodels.customers TO 'bookKeeper'@'localhost';
GRANT SELECT, UPDATE on classicmodels.payments TO 'bookKeeper'@'localhost';

DROP USER IF EXISTS 'ressources'@'localhost';
CREATE USER 'ressources'@'localhost' IDENTIFIED BY 'mingade';
GRANT SELECT, INSERT, UPDATE ON classicmodels.employees TO 'ressources'@'localhost';
GRANT SELECT, INSERT, UPDATE ON classicmodels.offices TO 'ressources'@'localhost';

DROP USER IF EXISTS 'sales'@'localhost';
CREATE USER 'sales'@'localhost' IDENTIFIED BY 'mingade';
GRANT SELECT, UPDATE, INSERT ON classicmodels.customers TO 'sales'@'localhost';
GRANT SELECT, INSERT, UPDATE ON classicmodels.orders TO 'sales'@'localhost';
GRANT SELECT, INSERT, UPDATE ON classicmodels.orderdetails TO 'sales'@'localhost';
GRANT SELECT ON classicmodels.payments TO 'sales'@'localhost';

DROP USER IF EXISTS 'it'@'localhost';
CREATE USER 'it'@'localhost' IDENTIFIED BY 'mingade';
GRANT ALL PRIVILEGES ON *.* TO 'it'@'localhost';

FLUSH PRIVILEGES;