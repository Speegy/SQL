SHOW DATABASES;
CREATE DATABASE game_store;
USE game_store;

-- TABLES --

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
FOREIGN KEY (customer_id) REFERENCES customer(id), 
FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Get data info --

show databases;
use game_store;
describe customer;
describe products;
describe orders;

-- INSERTING DATA --
-- customers --
insert into customer(name, email, password) values ("Jake", "Jake@email.com", "Password1");
insert into customer(name, email, password) values ("Josh", "Josh@email.com", "Password2");
insert into customer(name, email, password) values ("Esperanza", "Esperanza@email.com", "Password3");
insert into customer(name, email, password) values ("Alan", "Alan@email.com", "Password4");
insert into customer(name, email, password) values ("Kevin", "Kevin@email.com", "Password5");

-- products -- 
insert into products(name, isNew, stock, price) values ("Jak and Daxter", 1, 50, 19.99);
insert into products(name, isNew, stock, price) values ("Crash Bandicoot", 0, 3, 9.99);
insert into products(name, isNew, stock, price) values ("StarWars Battlefront", 1, 500, 29.99);
insert into products(name, isNew, stock, price) values ("Grandtrismo", 1, 75, 14.99);
insert into products(name, isNew, stock, price) values ("Dynasty Warriors", 0, 10, 12.99);

-- orders -- 

insert into orders(product_id, customer_id, quantity) values (5, 1, 1);
insert into orders(product_id, customer_id, quantity) values (3, 1, 1);
insert into orders(product_id, customer_id, quantity) values (1, 1, 1);
insert into orders(product_id, customer_id, quantity) values (3, 3, 1);
insert into orders(product_id, customer_id, quantity) values (3, 4, 1);


-- Testing data input --
select * from customer;
select * from products;
select * from orders where customer_id = 1;
select c.name, c.email, p.name, p.price from orders o join customer c on (o.customer_id=c.id) join products p on (o.product_id=p.id);

-- Won't delete Customer because Customer has an Order -- 
delete from customer where customer.name = "Alan";
delete from customer where customer.id = 1;
-- Will delete Customer because Customer doesn't have an Order -- 
delete from customer where customer.id = 5;

-- Alter / Update entry -- 
update customer set name = "Kameron", email = "Kameron@gmail.com" where customer.id = 2;
update products set name = "Borderlands", isNew = 0, stock = 2, price = 19.99 where products.id = 2;



