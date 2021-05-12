SHOW DATABASES;
CREATE DATABASE game_store;
USE game_store;

CREATE TABLE customer(
	id int primary key not null auto_increment,
    name varchar(100) not null,
    email varchar(100) UNIQUE NOT NULL, 
    password varchar(100) NOT NULL, 
    date_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
); 

CREATE TABLE products(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name varchar(100) NOT NULL, 
isNew BOOL DEFAULT 1, 
stock int DEFAULT 0 NOT NULL, 
price DECIMAL(4, 2) NOT NULL
);

CREATE TABLE orders(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
product_id int NOT NULL, 
customer_id int NOT NULL, 
datestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
quantity int NOT NULL DEFAULT 0,
FOREIGN KEY (customer_id) REFERENCES customers(id), 
FOREIGN KEY (product_id) REFERENCES products(id)
);

SHOW DATABASES;
describe game_store;
