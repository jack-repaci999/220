CREATE DATABASE company;
USE company;
CREATE Table customers (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
   firstname varchar(20),
   lastname varchar(20),
   company varchar(20),
   PRIMARY KEY (id)

);

CREATE TABLE orders(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    product varchar(20),
    cost int,
    customerId int,
    PRIMARY KEY (id),
    FOREIGN KEY (customerId) REFERENCES customers(id)
);

INSERT INTO customers (firstname, lastname, company) VALUES ('Spongebob', 'Squarepants', 'Krusty Krab');
INSERT INTO customers (firstname, lastname, company) VALUES ('Squidward', 'Tentacles', 'Krusty Krab');
INSERT INTO orders (product, cost, customerId) VALUES ('Krabby patty', '11' , '1');
INSERT INTO orders (product, cost, customerId) VALUES ('diet doctor kelp', '5', '2');
INSERT INTO orders (product, cost, customerId) VALUES ('kelp fries', '6', '3');
INSERT INTO orders (product, cost, customerId) VALUES ('chum', '1', '4');

SELECT * from orders;
SELECT * from customers;