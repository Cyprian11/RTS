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

 