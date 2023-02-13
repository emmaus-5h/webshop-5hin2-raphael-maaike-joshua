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
  name VARCHAR(255),
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
insert into products (name, description, code, price, categories_id) values ('The Legend of Zelda: Breath of the Wild', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 60.50, 1);
insert into products (name, description, code, price) values ('Mario kart 8 deluxe', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 51.99);
insert into products (name, description, code, price) values ('Pokemon scarlet', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 60.00);
insert into products (name, description, code, price) values ('Aninmal crossing: New horizons', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 49.99);
insert into products (name, description, code, price) values ('Super mario party', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 49.99);
insert into products (name, description, code, price) values ('Kirby star  allies', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 54.99);
insert into products (name, description, code, price) values ('Super Mario Maker 2', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 52.00);
insert into products (name, description, code, price) values ('splatoon', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 50.99);
insert into products (name, description, code, price) values ('Wii Party', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 36.99);
insert into products (name, description, code, price) values ('pokemon black 2', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 104.99);
insert into products (name, description, code, price) values ('Sonic Generations ', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 39.99);
insert into products (name, description, code, price) values ('Yokai watch 2 Gigageesten', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 50.99);

/* Consoles */
INSERT INTO consoles (name, description, code, price) values ('Nintendo Switch - OLED Model', 'Get the gaming system that lets you play the games you want, wherever you are. However you like. Bring the full home gaming system experience with you to the park, on an airplane, in a car, or to the apartment of a friend.', '0045496883386', 349.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo Switch', 'Get the gaming system that lets you play the games you want, wherever you are. However you like. Bring the full home gaming system experience with you tto thhee park, on an airplane, in a car, or to the apartment f a friend.', '0045496883775', 299.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo Switch Lite', 'Get the gaming system that lets you play the games you want, wherever you are. However you like. Bring the full home gaming system experience with you tto thhee park, on an airplane, in a car, or to the apartment f a friend.', '0045496882716', 199.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo 3DS', 'Naast de introductie van 3D-beelden zonder bril, biedt Nintendo 3DS elke dag nieuwe verrassingen via StreetPass en SpotPass als je hem bij je draagt! Behalve de klassieke touchscreenbesturing en de 3D-graphics op het bovenste scherm, kun je games actief ervaren met de gyrosensor en de bewegingssensoren. Voeg daar toegevoegde realiteit aan toe, en je game-ervaring krijgt meteen een heel andere dimensie!', '0045496780609', 124.99);
INSERT INTO consoles (name, description, code, price) values ('Nintendo Wii U Deluxe Edition', 'Een uniek systeem met een unieke controller vol vermaak voor het hele gezin. De Wii U is een systeem van Nintendo boordevol games en entertainmentmogelijkheden die je alleen of met vrienden en familie kunt beleven. Bij het systeem zit een unieke controller die ongeëvenaarde gameplaymogelijkheden biedt: de Wii U GamePad.', '0045496880866', 159.99);

/* waar de games op kunnen */
INSERT INTO products_consoles (products_id, consoles_id) values (2, 1);
INSERT INTO products_consoles (products_id, consoles_id) values (2, 2);
INSERT INTO products_consoles (products_id, consoles_id) values (2, 3);

/* categories */
INSERT INTO categories (name) values (RPG);