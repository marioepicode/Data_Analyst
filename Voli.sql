-- create a table
CREATE TABLE AEROPORTO (
    Citta TEXT NOT NULL,
    Nazione TEXT NOT NULL,
    NumPiste INTEGER
    );
CREATE TABLE VOLO (
    IdVolo VARCHAR(8) PRIMARY KEY,
    GiornoSett VARCHAR(10) NOT NULL,
    CittaPart TEXT NOT NULL,
    OraPart TIME NOT NULL,
    CittaArr TEXT NOT NULL,
    OraArr TIME NOT NULL,
    TipoAereo TEXT NOT NULL
    );

CREATE TABLE AEREO (
    TipoAereo TEXT NOT NULL,
    NumPasseggeri INTEGER NOT NULL,
    QtaMerci INTEGER NOT NULL
    );

INSERT INTO AEROPORTO (Citta, Nazione, NumPiste) VALUES
    ('Napoli', 'Italia', 3),
    ('Londra', 'Regno Unito',9),
    ('Tokyo', 'Giappone', 8),
    ('Mosca', 'Russia', 9),
    ('Tblisi', 'Georgia', 2),
    ('Bologna', 'Italia',NULL),
    ('Madrid', 'Spagna', NULL),
    ('Pechino', 'Cina', 9),
    ('Torino', 'Italia', 2),
    ('New York', 'Stati Uniti', 8);

INSERT INTO VOLO (IdVolo, GiornoSett, CittaPart, OraPart, CittaArr,OraArr,TipoAereo) VALUES
    ('BA2349', 'Lunedì', 'Napoli','10:30:00', 'Mosca','20:15:00','Boeing 747'),
    ('AA3402', 'Giovedì', 'New York','13:30:00', 'Torino','22:15:00','Airbus A380'),
    ('AF3498', 'Domenica', 'Tokyo','8:30:00', 'Pechino','12:15:00','Boeing 787'),
    ('UN3490', 'Lunedì', 'Madrid','12:30:00', 'New York','15:15:00','Boeing 747'),
    ('EJ4493', 'Sabato', 'Torino','15:30:00', 'Londra','17:15:00','Airbus A380'),
    ('DE3425', 'Lunedì', 'Pechino','16:30:00', 'Bologna','23:15:00','Boeing 747'),
    ('RU3949', 'Mercoledì', 'Bologna','7:30:00', 'Tokyo','19:15:00','Boeing 787'),
    ('AZ274', 'Venerdì', 'Londra','11:30:00', 'Tblisi','15:15:00','Airbus A320'),
    ('CH3949', 'Martedì', 'Tblisi','19:30:00', 'Napoli','22:15:00','Boeing 787'),
    ('JA4930', 'Sabato', 'Mosca','9:30:00', 'Madrid','14:15:00','Airbus A380');
INSERT INTO AEREO (TipoAereo, NumPasseggeri, QtaMerci) VALUES
    ('Boeing 787', 280, 4599),
    ('Airbus A320', 234, 5432),
    ('Boeing 787', 265, 5783),
    ('Boeing 747', 543, 9873),
    ('Airbus A380', 789, 12344),
    ('Boeing 747', 567, 10332),
    ('Airbus A380', 734, 11239),
    ('Boeing 747', 493, 98273),
    ('Airbus A380', 678, 14923),
    ('Boeing 747', 576, 12492);



SELECT Citta
FROM AEROPORTO
WHERE NumPiste IS NULL;

SELECT DISTINCT TipoAereo
FROM VOLO
WHERE CittaPart = 'Torino';

SELECT DISTINCT CittaPart
FROM VOLO
WHERE CittaArr = 'Bologna';

SELECT CittaPart, CittaArr
FROM VOLO
WHERE IdVolo = 'AZ274';

--CALCOLARE LA MEDIA PASSEGGERI
SELECT AVG(NumPasseggeri) AS MediaPasseggeri FROM AEREO;

--AGGIUNGE UNA COLONNA DURATA ALLA TABELLA VOLO
ALTER TABLE VOLO 
    ADD COLUMN durata TIME;

--INSERISCE NELLA COLONNA DURATA LA DIFFERENZA TRA ORA DI ARRIVO E ORA DI PARTENZA
UPDATE VOLO 
 SET durata = TIMEDIFF(OraArr, OraPart);

-- RESTITUISCE I VOLI IN ORDINE DECRESCENTE DI DURATA

SELECT * from VOLO ORDER BY durata DESC;

/*
L'esercizio è mirato a prendere confidenza con le interrogazioni SQL nella loro forma basilare.
Dato il seguente schema scrivere le interrogazioni di seguito:
AEROPORTO(Citta, Nazione,NumPiste)
VOLO(IdVolo,GiornoSett,CittaPart,OraPart,CittaArr,OraArr,TipoAereo)
AEREO(TipoAereo,NumPasseggeri,QtaMerci)
Riempire i dataset con valori a caso, almeno 10 righe per dataset.
1. Le città con un aeroporto di cui non è noto il numero di piste;
2. I tipi di aereo usati nei voli che partono da Torino;
3. Le città da cui partono voli diretti a Bologna;
4. Le città da cui parte e arriva il volo con codice AZ274;
*/
