--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  categories_id INTEGER
);

CREATE TABLE consoles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);

CREATE TABLE products_consoles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  consoles_id INTEGER
);

CREATE TABLE categories (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE reviews (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(255),
	review TEXT,
	date_posted TEXT,
	game_name TEXT
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

/* Games */
insert into products (name, description, code, price, categories_id) values ('The Legend of Zelda: Breath of the Wild', 'Vergeet alles wat je weet over The Legend of Zelda-games. Betreed een wereld vol avontuur om The legend of Zelda: Breath of The Wild, een grensverleggende game in deze bekroonde serie. ', '816905633-0', 60.50, 1);
insert into products (name, description, code, price) values ('Mario Kart 8 Deluxe', 'Dankzij de Nintendo Switch kunnen de ultieme versie van mario Kart 8 altijd en overal spelen. Er is zelf een lokale, draadloze multiplayerstand voor maximaal acht spelers! .', '077030122-3', 51.99, 2);
insert into products (name, description, code, price) values ('Pokemon Scarlet', 'Ontdek nieuwe Pokemon in een grenzeloos openwereldavontuur in Pokemon Scarlet op de Nintendo Switch.', '445924201-X', 60.00, 1);
insert into products (name, description, code, price) values ('Aninmal crossing: New horizons', 'In Animal Crossing ontdek je iedere dag nieuwe vrienden en verrassingen. Of je nu de burgemeester bent, huizen ontwerpt of gewoon een kijkje wilt nemen, de wereld van Animal Crossing is altijd een leuke en plezierige plek.', '693155505-7', 49.99, 3);
insert into products (name, description, code, price) values ('Super Mario Party', 'Geef altijd, overal en met iedereen een feestje in Super Mario Party.', '686928463-6', 49.99, 4);
insert into products (name, description, code, price) values ('Kirby Star Allies', 'Samen met je vrienden sta je sterk in Krby Star Allies.', '492662523-7', 54.99, 5);
insert into products (name, description, code, price) values ('Super Mario Maker 2', 'Het aantal Levels in super mario maker is vrijwel onbeperkt. daarom biedt deze game je eindeloos mario-plezier.', '492662523-7', 52.00, 5);
insert into products (name, description, code, price) values ('Splatoon', 'ga kliederen in teams van vier in Splatoon .', '492662523-7', 50.99, 6);
insert into products (name, description, code, price) values ('Wii Party U', 'Vecht, dans en race tegen je vrienden op Wii Party.', '492662523-7', 36.99, 4);
insert into products (name, description, code, price) values ('Pokemon Black 2', 'Het nieuwe pokemon in de Unova regio gaat van start ga samen met je vrienden op reis en versla de champion.', '492662523-7', 104.99, 1);
insert into products (name, description, code, price) values ('Sonic Generations', 'Help sonic en zijn vriend van de kwaadardige dokter Eggman.', '492662523-7', 39.99, 5);
insert into products (name, description, code, price) values ('Yokai Watch 2 Gigageesten', 'Er staan missies, nieuwe locaties en nog veel meer te wachten als de ondeugende Yo-kai Wicked worden.', '492662523-7', 50.99, 3);

/* Consoles */
INSERT INTO consoles (name, description, code, price) values ('Nintendo Switch - OLED Model', 'Get the gaming system that lets you play the games you want, wherever you are. However you like. Bring the full home gaming system experience with you to the park, on an airplane, in a car, or to the apartment of a friend.', '0045496883386', 349.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo Switch', 'Get the gaming system that lets you play the games you want, wherever you are. However you like. Bring the full home gaming system experience with you tto thhee park, on an airplane, in a car, or to the apartment f a friend.', '0045496883775', 299.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo Switch Lite', 'Get the gaming system that lets you play the games you want, wherever you are. However you like. Bring the full home gaming system experience with you tto thhee park, on an airplane, in a car, or to the apartment f a friend.', '0045496882716', 199.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo 3DS', 'Naast de introductie van 3D-beelden zonder bril, biedt Nintendo 3DS elke dag nieuwe verrassingen via StreetPass en SpotPass als je hem bij je draagt! Behalve de klassieke touchscreenbesturing en de 3D-graphics op het bovenste scherm, kun je games actief ervaren met de gyrosensor en de bewegingssensoren. Voeg daar toegevoegde realiteit aan toe, en je game-ervaring krijgt meteen een heel andere dimensie!', '0045496780609', 124.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo Wii U Deluxe Edition', 'Een uniek systeem met een unieke controller vol vermaak voor het hele gezin. De Wii U is een systeem van Nintendo boordevol games en entertainmentmogelijkheden die je alleen of met vrienden en familie kunt beleven. Bij het systeem zit een unieke controller die ongeëvenaarde gameplaymogelijkheden biedt: de Wii U GamePad.', '0045496880866', 159.99);

/* waar de games op kunnen */
INSERT INTO products_consoles (products_id, consoles_id) values (1, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (1, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (1, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (2, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (2, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (2, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (2, 5);
INSERT INTO products_consoles (products_id, consoles_id) values (3, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (3, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (3, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (4, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (4, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (4, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (5, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (5, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (5, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (6, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (6, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (6, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (7, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (7, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (7, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (7, 5);
INSERT INTO products_consoles (products_id, consoles_id) values (8, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (8, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (8, 3);
INSERT INTO products_consoles (products_id, consoles_id) values (8, 5);
INSERT INTO products_consoles (products_id, consoles_id) values (9, 5);
INSERT INTO products_consoles (products_id, consoles_id) values (10, 4);
INSERT INTO products_consoles (products_id, consoles_id) values (11, 4);
INSERT INTO products_consoles (products_id, consoles_id) values (12, 4);


/* categories */
INSERT INTO categories (name) values ("RPG");
INSERT INTO categories (name) values ("Racegame");
INSERT INTO categories (name) values ("Adventure");
INSERT INTO categories (name) values ("Partysgame");
INSERT INTO categories (name) values ("Platformgame");
INSERT INTO categories (name) values ("Third-person shooting game");

/* reviews */
INSERT INTO reviews (name,review,datum) values  ("The Legend of Zelda"," Awesome open world game. Great story, nice atmosphere and so much to do.","11 december 2022"); 
INSERT INTO reviews (name,review,datum) values  ("Mario Kart 8 Deluxe","Much better than the orginal. It has more diversity.","1 july 2022"); 

INSERT INTO reviews (name,review,datum) values  ("Pokemon Scarlet"," The best open world Pokemon game. It has some glitches but and bugs but still great job. ","11 april 2022"); 
INSERT INTO reviews (name,review,datum) values  ("Animal crossing: new horizons"," It's so calming I loved it. I hated the beginning tho.","6 may 2021"); 
INSERT INTO reviews (name,review,datum) values  ("Super Mario Party"," Great to play with friends, very easy to play it every where."," 23 february 2021"); 
INSERT INTO reviews (name,review,datum) values  ("Splatoon"," Fun game","2 june 2020"); 
INSERT INTO reviews (name,review,datum) values  ("Kirby Star Allies"," I LOVE KIRBY, he is so cute. ","25 july 2021"); 
INSERT INTO reviews (name,review,datum) values  ("Super Mario Maker 2","iI made a level so hard that nobody can finish."," 5 august 2022"); 
INSERT INTO reviews (name,review,datum) values  ("Wii Party U"," I love and hate this game.","15 september 2021"); 
INSERT INTO reviews (name,review,datum) values  ("Pokemon Black 2","This game was so hard to play. AND WHY WAS CYNTHIA IN THE GAME.","25 december 2022"); 
INSERT INTO reviews (name,review,datum) values  ("Sonic Generations"," I haven't played sonic in a while so it was fun to play it again"," 15 october 2015"); 
INSERT INTO reviews (name,review,datum) values  ("Yokai Watch 2 Gigageesten","The main story is so good, the characters are so cute and the bosses are hard. Great game","14 february 20223"); 
INSERT INTO reviews (name,review,datum) values  ("Nintendo Switch - OLED Model","i don't know why I bought this model, it was the same as the first model ","2 august 2018"); 
INSERT INTO reviews (name,review,datum) values  ("Nintendo Switch","My siblings and I started bonding more because of this.","21 march 2020"); 
INSERT INTO reviews (name,review,datum) values  ("Nintendo Switch lite"," Its great to play it if you don't have anyone to play with","17 november 2017"); 
INSERT INTO reviews (name,review,datum) values  ("Nintendo 3DS","Its so cool to see some games in 3D.","2 june 2014"); 
INSERT INTO reviews (name,review,datum) values  ("Nintendo Wii U Edition"," Cool to play with my friends at home","3 july 2012"); 
