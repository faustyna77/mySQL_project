CREATE TABLE Adres (
    ID_adres SERIAL PRIMARY KEY,
    wojewodztwo VARCHAR(45) NOT NULL,
    powiat VARCHAR(45) NOT NULL,
    miejscowosc VARCHAR(45) NOT NULL,
    ulica VARCHAR(45) NOT NULL,
    numer_domu VARCHAR(45) NOT NULL,
    numer_lokalu VARCHAR(45) NOT NULL
);

CREATE TABLE Samolot (
    ID_samolotu SERIAL PRIMARY KEY,
    producent VARCHAR(45) NOT NULL,
    typ VARCHAR(45) NOT NULL
);

CREATE TABLE Status_Rezerwacji (
    ID_rezerwacji_status SERIAL PRIMARY KEY,
    status_rezerwacji VARCHAR(45) NOT NULL
);

CREATE TABLE Pasazer (
    ID_Pasazer SERIAL PRIMARY KEY,
    imie VARCHAR(45) NOT NULL,
    nazwisko VARCHAR(45) NOT NULL,
    pesel VARCHAR(45) NOT NULL,
    telefon VARCHAR(15) NOT NULL,
    mail VARCHAR(45) NOT NULL
);

CREATE TABLE Lot (
    ID_numer_lotu SERIAL PRIMARY KEY,
    data_wylotu DATE NOT NULL,
    ID_samolotu INT REFERENCES Samolot(ID_samolotu)
);

CREATE TABLE Rezerwacje (
    ID_Rezerwacji SERIAL PRIMARY KEY,
    numer_siedzenia INT NOT NULL,
    bagaz VARCHAR(45),
    ID_Pasazer INT NOT NULL REFERENCES Pasazer(ID_Pasazer),
    ID_adres INT NOT NULL REFERENCES Adres(ID_adres),
    ID_numer_lotu INT NOT NULL REFERENCES Lot(ID_numer_lotu),
    ID_rezerwacji_status INT NOT NULL REFERENCES Status_Rezerwacji(ID_rezerwacji_status)
);
