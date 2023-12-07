SELECT AVG(rezerwacja.id)  FROM rezerwacja JOIN pasazer ON pasazer.id=rezerwacja.pasazer_id 
SELECT AVG(rezerwacja.pasazer_id)  FROM rezerwacja JOIN pasazer ON pasazer.id=rezerwacja.pasazer_id

