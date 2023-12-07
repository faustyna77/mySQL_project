SELECT
rezerwacja.*,
pasazer.imie AS pasazer_imie,
pasazer.nazwisko AS pasazer_nazwisko,
lot.numer_lotu,
lot.data_wylotu,
samolot.producent nazwa_samolotu
FROM
rezerwacja
JOIN
pasazer ON rezerwacja.pasazer_id = pasazer.id
JOIN
lot ON rezerwacja.lot_numer_lotu_id = lot.numer_lotu
JOIN
samolot ON lot.samolot_id = samolot.id
ORDER BY
lot.numer_lotu,
pasazer.nazwisko