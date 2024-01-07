/*3*/
/*SELECT * FROM Samolot */
/*4*/
/*SELECT Lot.ID_numer_lotu, COUNT(Rezerwacje.ID_Pasazer) AS LiczbaRezerwacji
FROM Lot 
JOIN Rezerwacje ON Rezerwacje.ID_numer_lotu = Lot.ID_numer_lotu
GROUP BY Lot.ID_numer_lotu
ORDER BY LiczbaRezerwacji DESC*/
/*5*/
/*
SELECT lot.ID_numer_lotu,lot.data_wylotu FROM lot WHERE YEAR(data_wylotu)=2022;
*/
/*6*/
/*SELECT adres.miejscowosc FROM adres WHERE adres.miejscowosc LIKE 'L%k'*/
/*SELECT Adres.ulica,Adres.numer_domu,Adres.miejscowosc FROM Adres  WHERE Adres.miejscowosc LIKE 'L%k'*/
/*7*/
/*
SELECT Pasazer.imie, Adres.ID_adres,Adres.miejscowosc, Lot.ID_numer_lotu
FROM Pasazer
JOIN Adres ON Pasazer.ID_adres = Adres.ID_adres
JOIN Rezerwacje ON Rezerwacje.ID_Pasazer=Pasazer.ID_Pasazer
JOIN Lot ON Lot.ID_numer_lotu=Rezerwacje.ID_numer_lotu
WHERE Rezerwacje.ID_numer_lotu=3
*/
/*8*/
/*
SELECT

pasazer.imie AS pasazer_imie,
lot.ID_numer_lotu,
lot.data_wylotu,
samolot.producent nazwa_samolotu
FROM
Rezerwacje
JOIN
pasazer ON Rezerwacje.ID_Pasazer = Pasazer.ID_Pasazer
JOIN
lot ON Rezerwacje.ID_numer_lotu = Lot.ID_numer_lotu
JOIN
samolot ON lot.ID_samolotu= samolot.ID_samolotu
ORDER BY
lot.ID_numer_lotu,
pasazer.imie

*/
/*9*/
/*
SELECT pasazer.imie FROM pasazer  JOIN adres ON adres.ID_adres=pasazer.ID_adres WHERE adres.wojewodztwo='Podkarpackie'
*/
/*10*/
/*	
SELECT  pasazer.imie FROM pasazer LEFT JOIN rezerwacje ON pasazer.ID_Pasazer=rezerwacje.ID_Pasazer WHERE rezerwacje.bagaz is NULL
*/
/*11*/

/*
SELECT AVG(LiczbaPasa¿erów) AS ŒredniaPasa¿erów
FROM (
    SELECT Lot.ID_numer_lotu, COUNT(Rezerwacje.ID_Pasazer) AS LiczbaPasa¿erów
    FROM Lot 
    JOIN Rezerwacje ON Rezerwacje.ID_numer_lotu = Lot.ID_numer_lotu
    GROUP BY Lot.ID_numer_lotu
) AS PodsumowanieLotów;

*/





