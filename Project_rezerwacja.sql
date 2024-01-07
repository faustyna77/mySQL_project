/*CREATE DATABASE Rezerwacje_Projekt2
GO
USE Rezerwacje_Projekt2
GO 



CREATE TABLE Adres (ID_adres smallint PRIMARY KEY IDENTITY(1,1) ,
wojewodztwo varchar(45) NOT NULL, powiat varchar(45) NOT NULL, miejscowosc varchar(45) NOT NULL, ulica varchar(45) NOT NULL,
numer_domu varchar(45) NOT NULL, numer_lokalu varchar(45) NOT NULL);

CREATE TABLE Samolot (ID_samolotu smallint PRIMARY KEY IDENTITY(1,1),producent varchar(45) NOT NULL, typ varchar(45) NOT NULL);

CREATE TABLE Status_Rezerwacji(ID_rezerwacji_status smallint PRIMARY KEY IDENTITY(1,1),status_rezerwacji varchar(45) NOT NULL);

CREATE TABLE Pasazer(ID_Pasazer smallint PRIMARY KEY IDENTITY(1,1), imie varchar(45) NOT NULL,pesel varchar(45) NOT NULL, telefon varchar(15) NOT NULL,
mail varchar(45) NOT NULL, ID_adres  smallint FOREIGN KEY REFERENCES Adres);

CREATE TABLE Lot (ID_numer_lotu smallint PRIMARY KEY IDENTITY(1,1),data_wylotu date NOT NULL, ID_samolotu smallint FOREIGN KEY REFeRENCES Samolot);
CREATE TABLE Rezerwacje (ID_Rezerwacji smallint NOT NULL PRIMARY KEY IDENTITY(1,1), numer_siedzenia int NOT NULL, bagaz varchar(45), ID_Pasazer smallint NOT NULL
FOREIGN KEY REFERENCES Pasazer, ID_adres smallint FOREIGN KEY REFERENCES Pasazer NOT NULL,ID_numer_lotu smallint NOT NULL FOREIGN KEY REFERENCES Lot,
ID_rezerwacji_status smallint FOREIGN KEY REFERENCES Status_Rezerwacji);

*/
/*
ALTER TABLE Adres
ALTER COLUMN numer_lokalu varchar(5)  NULL  
*/
/*
ALTER TABLE Adres
ALTER COLUMN numer_domu varchar(5) NULL


INSERT INTO Adres (wojewodztwo, powiat, miejscowosc,ulica,numer_domu,numer_lokalu)  
VALUES ('podkarpackie','mielecki','Mielec','Korzyñska','23',0),
('podkarpackie','sanocki','Lutork','Warwinska','11',0),
('podkarpackie','leski','Lesko','Sobiesiego','0',0),
('œl¹skie','œl¹ski','Sl¹sk','œl¹ska','233',0),
('podlaskie','podlasie','Las','Lasowskiej','23',0),
('pomorskie','Szczeciñski','Szczecin','Szczepana','0',0),
('œl¹skie','œl¹ski górny','Sl¹sk ','œl¹ska','1',0),
('œl¹skie','œl¹ski','Sl¹sk','œl¹ska','0',0),
('œwietokryskie','krzy¿owski','Krzyrzanow','Walewska','0',0),
('œl¹skie','œl¹ski','Tarnów','Tarnowski','233',0);
*/
/*

INSERT INTO Samolot (producent,typ)
VALUES('yamaha','xt78'),
('alpenon456','e34'),
('yamaha34xt56','e77'),
('yamaha12','e78'),
('xawidex1500',',e23'),
('wawix1234','e2345'),
('warix345','xt45'),
('qwert234','q23'),
('yamaha90','e77'),
('qwer55','e34');


INSERT INTO Status_Rezerwacji (status_rezerwacji)
VALUES('oczekujacy'),
('przesuniety'),
('anulowany'),
('zakoñczony');

INSERT INTO Pasazer (imie,pesel,telefon,mail,ID_adres)
VALUES ('Jaros³aw Jarosiewicz','009876544','1346555798','jaro@example.com',1),
('Anna Nowak','890765234','134788599','anna@example.com',2),
('Wiktoria Szach','543123456','132345622','wiktoria@example.com',3),
('Weronika Maœlanka','567765567','679834577','weronika@example.com',4),
('Seweryn Mic','765987098','457689077','mic@example.com',5),
('Mateusz Sondej','654234890','123456787','sondej@example.com',6),
('Maksymilian Rojek','890678456','89098766','roj@example.com',7),
('Barbara Wagnar','789789789','567890766','barwa@example.com',8),
('Milena Wach','789789789','567890766','wach@example.com',9),
('Bernadeta Wagnar','789789789','5678907999','berna@example.com',10);



INSERT INTO Lot (data_wylotu, ID_samolotu) VALUES 
('2023-09-09',1),
('2022-07-07',2),
('2020-06-05',3),
('2021-04-06',4),
('2023-01-01',5),
('2023-02-02',6),
('2023-05-05',7),
('2021-06-08',8),
('2022-07-09',9),
('2022-04-04',10);






INSERT INTO Rezerwacje ( numer_siedzenia,bagaz,ID_Pasazer,ID_adres,ID_numer_lotu,ID_rezerwacji_status)
VALUES (1,NULL,1,1,1,1),
(2,2,2,2,2,2),
(3,3,3,3,3,3),
(4,4,4,4,4,4),
(5,5,5,5,5,1),
(6,6,6,6,6,2),
(7,7,7,7,7,1),
(8,8,8,8,8,2),
(9,9,9,9,9,3),
(8,8,8,8,8,1);

*/

