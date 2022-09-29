INSERT INTO players (nick,email,password) VALUES ("Adam","adam@gmail.com","123");
INSERT INTO players (nick,email,password) VALUES ("Rafal","rafal@gmail.com","456");
INSERT INTO players (nick,email,password) VALUES ("Szymon","szymon@gmail.com","789");
INSERT INTO players (nick,email,password) VALUES ("Cyprian","cyprian@gmail.com","10");

INSERT INTO resources (name,description) VALUES ("drewno","służy do budowania");
INSERT INTO resources (name,description) VALUES ("glina","służy do budowania");
INSERT INTO resources (name,description) VALUES ("żelazo","służy do budowania");


INSERT INTO troops (name,description,damage,distance_damage,defence) VALUES ("łucznik","strzela","5","20","10");
INSERT INTO troops (name,description,damage,distance_damage,defence) VALUES ("miecznik","walczy","30","5","15");
INSERT INTO troops (name,description,damage,distance_damage,defence) VALUES ("kusznik","strzela","10","25","5");
INSERT INTO troops (name,description,damage,distance_damage,defence) VALUES ("rycerz","walczy","30","5","30");

INSERT INTO buildings (name) VALUES ("dół z gliną");
INSERT INTO buildings (name) VALUES ("huta żelaza");
INSERT INTO buildings (name) VALUES ("chata drwala");

INSERT INTO villages (name,players_id) VALUES ("mydłowo",1);
INSERT INTO villages (name,players_id) VALUES ("szamponowo",2);
INSERT INTO villages (name,players_id) VALUES ("butelkowo",3);

Zapytanie pobierajace zolnierzy pierwszego gracza



1.
SELECT resources.name,villages_has_resources.value FROM players
JOIN villages ON players.id=villages.players_id
JOIN villages_has_resources ON villages.id=villages_has_resources.villages_id
JOIN resources ON villages_has_resources.resources_id=resources.id;

2.
SELECT email,password FROM players where email="adam@gmail.com" and password="123";

3.
SELECT troops.name FROM players 
JOIN villages ON players.id=villages.players_id
JOIN villages_has_troops ON  villages.id=villages_has_troops.villages_id
JOIN troops ON villages_has_troops.troops_id=troops.id;

4.
SELECT buildings.name FROM players 
JOIN villages ON players.id=villages.players_id 
JOIN buildings_has_villages ON villages.players_id=buildings_has_villages.villages_id 
JOIN buildings ON buildings_has_villages.villages_id=buildings.id;