use beers_shop;
INSERT INTO role (id, name) VALUES (NULL,'ROLE_USER');
INSERT INTO role (id, name) VALUES (NULL, 'ROLE_ADMIN');

INSERT INTO users (email, firstName, lastName, username, password) VALUES ('frantz12@wp.pl', 'Jarosław', 'Frankiewicz', 'frantz', '$2y$12$pCt916J9z.ntKQne.7ArYeoVkKBV.Z4Qfoz63QQN/mDHA4JzQ5lX6');
INSERT INTO User_role (ROLE_ID, USER_ID) VALUES (2,1);


INSERT INTO beers (alcohol, brewery, country, description, unit, inStock, name, price, type) VALUES (7, 'pl', 'Poland', 'Piwo jasne pełne', 10, true, 'Beer1', 5, 'ok');
INSERT INTO beers (alcohol, brewery, country, description, unit, inStock, name, price, type) VALUES (6, 'pl', 'Poland', 'Piwo pól-jasne pełne', 12, true, 'Beer2', 5, 'ok');
INSERT INTO beers (alcohol, brewery, country, description, unit, inStock, name, price, type) VALUES (5, 'pl', 'Poland', 'Piwo ćwierć-jasne pełne', 14, true, 'Beer3', 5, 'ok');
INSERT INTO beers (alcohol, brewery, country, description, unit, inStock, name, price, type) VALUES (4, 'pl', 'Poland', 'Piwo ćwierć-ciemne pełne', 8, true, 'Beer4', 5, 'ok');
INSERT INTO beers (alcohol, brewery, country, description, unit, inStock, name, price, type) VALUES (3, 'pl', 'Poland', 'Piwo pól-ciemne pełne', 10, true, 'Beer5', 5, 'ok');
INSERT INTO beers (alcohol, brewery, country, description, unit, inStock, name, price, type) VALUES (2, 'pl', 'Poland', 'Piwo ciemne pełne', 18, true, 'Beer6', 5, 'ok');
