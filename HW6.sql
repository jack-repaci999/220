use store;


CREATE TABLE treasure_location1 (
Location varchar(20),
found_id int,
age varchar(20),
FOREIGN KEY (found_id) references treasure(id)
);
alter table treasure
ADD PRIMARY KEY (id);

SELECT item, price
FROM treasure;


insert into treasure_location1 (Location, found_id, age) VALUES ('Peru','1','1600AD'),('Nepal','3','100BC');




