SELECT pasazer.imie, pasazer.nazwisko, adres.id, lot.numer_lotu
FROM pasazer
JOIN adres ON pasazer.adres_id = adres.id
JOIN lot ON pasazer.id = lot.numer_lotu
WHERE lot.numer_lotu = 3;
