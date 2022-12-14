-------------------------------------------------------
-- TABLA DE PLATAFORMAS

INSERT INTO platform(platform) VALUES('XBOX');
INSERT INTO platform(platform) VALUES('PLAYSTATION');
INSERT INTO platform(platform) VALUES('NINTENDO');
INSERT INTO platform(platform) VALUES('PC');

-------------------------------------------------------
-- TABLA DE CLIENTES

INSERT INTO client(first_name, last_name, birthdate) VALUES('TONI', 'LOPEZ', '02/02/1975');
INSERT INTO client(first_name, last_name, birthdate) VALUES('Juana', 'Gamero', '08/09/1997');
INSERT INTO client(first_name, last_name, birthdate) VALUES('Ane', 'Montilla', '27/03/1976');
INSERT INTO client(first_name, last_name, birthdate) VALUES('Nicolae', 'Jimenez', '23/03/1987');
INSERT INTO client(first_name, last_name, birthdate) VALUES('Clara', 'Seco', '03/10/1972');

-------------------------------------------------------
-- TABLA DE JUEGOS

INSERT INTO game(title, producer, director, launch_date) VALUES('Halo Combat Evolved', 'Bungie', 'Microsoft', '15/11/2001');
INSERT INTO game(title, producer, director, launch_date) VALUES('Minecraft', 'Mojang', 'Microsoft', '18/11/2011');
INSERT INTO game(title, producer, director, launch_date) VALUES('Tomb Raider', 'Crystal Dynamics', 'Alisha Thayer', '05/03/2013');
INSERT INTO game(title, producer, director, launch_date) VALUES('Sea of Thieves', 'Rare', 'Microsoft', '20/03/2018');
INSERT INTO game(title, producer, director, launch_date) VALUES('Portal', 'Valve', 'Kim Swift', '10/10/2007');

-------------------------------------------------------
-- TABLA DE PLATAFORMAS DE JUEGOS

INSERT INTO platform_game(game_id, platform_id) VALUES(1, 1);
INSERT INTO platform_game(game_id, platform_id) VALUES(1, 4);
INSERT INTO platform_game(game_id, platform_id) VALUES(2, 1);
INSERT INTO platform_game(game_id, platform_id) VALUES(2, 2);
INSERT INTO platform_game(game_id, platform_id) VALUES(2, 3);
INSERT INTO platform_game(game_id, platform_id) VALUES(2, 4);
INSERT INTO platform_game(game_id, platform_id) VALUES(3, 1);
INSERT INTO platform_game(game_id, platform_id) VALUES(3, 2);
INSERT INTO platform_game(game_id, platform_id) VALUES(3, 4);
INSERT INTO platform_game(game_id, platform_id) VALUES(4, 1);
INSERT INTO platform_game(game_id, platform_id) VALUES(4, 4);
INSERT INTO platform_game(game_id, platform_id) VALUES(5, 1);
INSERT INTO platform_game(game_id, platform_id) VALUES(5, 2);
INSERT INTO platform_game(game_id, platform_id) VALUES(5, 3);
INSERT INTO platform_game(game_id, platform_id) VALUES(5, 4);

-------------------------------------------------------
-- TABLA DE PROTAGONISTAS

INSERT INTO protagonist(protagonist_name, game_id) VALUES('Master Chief', 1);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Cortana', 1);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Steve', 2);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Alex', 2);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Lara Croft', 3);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Jonah Maiava', 3);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Samantha Nishimura', 3);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Larinna', 4);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Madame Olivia', 4);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Pirate Lord', 4);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Davy Jones', 4);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('Atlas', 5);
INSERT INTO protagonist(protagonist_name, game_id) VALUES('P-body', 5);

-------------------------------------------------------
-- TABLA DE COPIAS DE JUEGOS

INSERT INTO game_copy(platform_game_id) VALUES(1);
INSERT INTO game_copy(platform_game_id) VALUES(1);
INSERT INTO game_copy(platform_game_id) VALUES(2);
INSERT INTO game_copy(platform_game_id) VALUES(3);
INSERT INTO game_copy(platform_game_id) VALUES(4);
INSERT INTO game_copy(platform_game_id) VALUES(5);
INSERT INTO game_copy(platform_game_id) VALUES(6);
INSERT INTO game_copy(platform_game_id) VALUES(7);
INSERT INTO game_copy(platform_game_id) VALUES(7);
INSERT INTO game_copy(platform_game_id) VALUES(8);
INSERT INTO game_copy(platform_game_id) VALUES(9);
INSERT INTO game_copy(platform_game_id) VALUES(10);
INSERT INTO game_copy(platform_game_id) VALUES(11);
INSERT INTO game_copy(platform_game_id) VALUES(11);
INSERT INTO game_copy(platform_game_id) VALUES(12);
INSERT INTO game_copy(platform_game_id) VALUES(12);
INSERT INTO game_copy(platform_game_id) VALUES(13);
INSERT INTO game_copy(platform_game_id) VALUES(14);
INSERT INTO game_copy(platform_game_id) VALUES(15);
INSERT INTO game_copy(platform_game_id) VALUES(15);

-------------------------------------------------------
-- TABLA DE RENTAS

INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 1, '11/03/2022', '16/03/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 3, '27/03/2022', '02/04/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 4, '06/04/2022', '11/04/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 5, '30/06/2022', '05/07/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 6, '23/07/2022', '28/07/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 2, '19/08/2022', '24/08/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 7, '25/08/2022', '30/08/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 8, '11/09/2022', '16/09/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 10, '12/09/2022', '17/09/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 11, '22/09/2022', '22/09/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (1, 9, '07/10/2022', '07/10/2022', 15000, 1);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (2, 12, '20/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (2, 13, '20/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (2, 14, '21/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (3, 1, '21/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (3, 3, '22/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (3, 15, '22/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (3, 16, '23/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (4, 3, '23/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (4, 18, '24/10/2022', NULL, 15000, 0);
INSERT INTO rental(client_id, game_copy_id, rental_date, return_date, price, returned) VALUES (5, 19, '25/10/2022', NULL, 15000, 0);

COMMIT;
