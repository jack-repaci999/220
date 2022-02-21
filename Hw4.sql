CREATE DATABASE store;
USE store;
Create Table customers(
    customerId INT PRIMARY KEY,
    firstname VARCHAR(20),
    lastname varchar(20)
);

CREATE TABLE orders(
    orderId INT PRIMARY KEY,
    product VARCHAR(20),
    cost int,
    fk_customerId INT FOREIGN KEY REFERENCES customers(customerId);

);

INSERT INTO customers ('firstname','lastname')
VALUES ('Hugo', 'Strange');

INSERT INTO customers ('firstname','lastname')
VALUES ('Bruce', 'Wayne');

INSERT INTO orders (orderId, product, cost, fk_customerId)
VALUES ('1','burger','10','1');

INSERT INTO orders (orderId, product, cost, fk_customerId)
VALUES ('2','fries','5','1');

INSERT INTO orders (orderId, product, cost, fk_customerId)
VALUES ('2', 'salad', '3', '2');

SELECT * FROM customers;
SELECT * from orders;