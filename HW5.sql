CREATE DATABASE Store;
use Store;

CREATE TABLE historian(
    id        int         NOT NULL UNIQUE AUTO_INCREMENT,
    firstname varchar(20) NOT NULL,
    lastname  varchar(20) NOT NULL,
    email     varchar(20),
    PRIMARY KEY (id)
);

CREATE TABLE treasure
(
    id int NOT NULL UNIQUE AUTO_INCREMENT ,
    item varchar(30) NOT NULL ,
    price int,
    PRIMARY KEY (id)
);

CREATE TABLE records(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    historian_id int NOT NULL,
    treasure_id int NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO historian (firstname, lastname, email) VALUES ('Nathan','Drake','ndrake123@gmail.com');
INSERT INTO historian (firstname, lastname, email) VALUES ('Victor', 'Sullivan','sullyv@aol.com');
INSERT INTO historian (firstname, lastname, email) VALUES ('Elena','Fisher','nfisher456@gmail.com');
INSERT INTO treasure(item, price) VALUES ('Sapphire','400');
INSERT INTO treasure(item, price) VALUES ('Crown', '300');
INSERT INTO treasure(item, price) VALUES ('Dagger','325');
SELECT * FROM treasure;
SELECT * FROM historian;
SELECT * FROM records;

INSERT INTO records (historian_id, treasure_id) values ('3','3');
