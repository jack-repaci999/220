use store;

INSERT INTO treasure (id, item, price) VALUES ('4','Pyramid','750');
INSERT INTO treasure (id, item, price) VALUES ('5','Revolver','300');
INSERT INTO treasure (id, item, price) VALUES ('6','key','490');

SELECT treasure.item, treasure_location1.Location
FROM treasure_location1, treasure
INNER JOIN records r on treasure.id = r.treasure_id;

SELECT historian.lastname, historian.firstname
FROM historian
INNER JOIN records r WHERE historian.id = r.historian_id;

    DELETE FROM treasure where id = '4';
DELETE FROM treasure where id  = ('1','3');



