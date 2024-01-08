-- Tabella delle vendite
CREATE TABLE vendite (
    IDTransazione INT PRIMARY KEY,
    categoria_prodotto VARCHAR(255),
    costo_vendita DECIMAL(10, 2),
    sconto DECIMAL(5, 2)
);

-- Tabella dei dettagli delle vendite
CREATE TABLE dettagli_vendite (
    IDCliente INT,
    IDTransazione INT,
    data_transazione DATE,
    quantita INT,
    PRIMARY KEY (IDCliente, IDTransazione),
    FOREIGN KEY (IDTransazione) REFERENCES vendite(IDTransazione)
   
);


-- Inserimento dati nella tabella "vendite"

INSERT INTO vendite (IDTransazione, categoria_prodotto, costo_vendita, sconto)
VALUES
    (1, 'Elettronica', 150.00, 10.00),
    (2, 'Abbigliamento', 80.50, 20.00),
    (3, 'Gioielli', 300.75, 25.00),
    (4, 'Casa', 200.25, 30.00),
    (5, 'Sport', 120.00, 35.00),
    (6, 'Alimentari', 50.75, 40.00),
    (7, 'Libri', 70.00, 45.00),
    (8, 'Gadget', 15.50, 50.00),
    (9, 'Arredamento', 450.00, 55.00),
    (10, 'Scarpe', 90.25, 60.00),
    (11, 'Elettronica', 180.50, 10.00),
    (12, 'Abbigliamento', 70.75, 20.00),
    (13, 'Gioielli', 250.25, 25.00),
    (14, 'Casa', 150.00, 30.00),
    (15, 'Sport', 100.00, 35.00),
    (16, 'Alimentari', 40.75, 40.00),
    (17, 'Libri', 50.00, 45.00),
    (18, 'Gadget', 12.50, 50.00),
    (19, 'Arredamento', 400.00, 55.00),
    (20, 'Scarpe', 80.25, 60.00),
    (21, 'Elettronica', 160.00, 10.00),
    (22, 'Abbigliamento', 65.75, 20.00),
    (23, 'Gioielli', 280.25, 25.00),
    (24, 'Casa', 180.00, 30.00),
    (25, 'Sport', 110.50, 35.00),
    (26, 'Alimentari', 45.25, 40.00),
    (27, 'Libri', 60.00, 45.00),
    (28, 'Gadget', 14.25, 50.00),
    (29, 'Arredamento', 420.00, 55.00),
    (30, 'Scarpe', 85.75, 60.00),
    (31, 'Elettronica', 190.25, 10.00),
    (32, 'Abbigliamento', 75.00, 20.00),
    (33, 'Gioielli', 320.00, 25.00),
    (34, 'Casa', 220.50, 30.00),
    (35, 'Sport', 130.00, 35.00),
    (36, 'Alimentari', 60.75, 40.00),
    (37, 'Libri', 80.25, 45.00),
    (38, 'Gadget', 20.50, 50.00),
    (39, 'Arredamento', 480.00, 55.00),
    (40, 'Scarpe', 95.25, 60.00),
    (41, 'Elettronica', 170.75, 10.00),
    (42, 'Abbigliamento', 68.50, 20.00),
    (43, 'Gioielli', 290.00, 25.00),
    (44, 'Casa', 190.25, 30.00),
    (45, 'Sport', 115.00, 35.00),
    (46, 'Alimentari', 55.50, 40.00),
    (47, 'Libri', 75.00, 45.00),
    (48, 'Gadget', 18.25, 50.00),
    (49, 'Arredamento', 430.75, 55.00),
    (50, 'Scarpe', 88.00, 60.00),
    (51, 'Elettronica', 200.00, 10.00),
    (52, 'Abbigliamento', 80.75, 20.00),
    (53, 'Gioielli', 340.25, 25.00),
    (54, 'Casa', 240.00, 30.00),
    (55, 'Sport', 145.50, 35.00),
    (56, 'Alimentari', 70.25, 40.00),
    (57, 'Libri', 90.00, 45.00),
    (58, 'Gadget', 22.75, 50.00),
    (59, 'Arredamento', 510.00, 55.00),
    (60, 'Scarpe', 100.75, 60.00),
    (61, 'Elettronica', 130.50, 10.00),
    (62, 'Abbigliamento', 55.25, 20.00),
    (63, 'Gioielli', 270.75, 25.00),
    (64, 'Casa', 160.25, 30.00),
    (65, 'Sport', 95.00, 35.00),
    (66, 'Alimentari', 50.50, 40.00),
    (67, 'Libri', 68.25, 45.00),
    (68, 'Gadget', 17.00, 50.00),
    (69, 'Arredamento', 390.00, 55.00),
    (70, 'Scarpe', 75.75, 60.00),
    (71, 'Elettronica', 145.25, 10.00),
    (72, 'Abbigliamento', 60.00, 20.00),
    (73, 'Gioielli', 310.50, 25.00),
    (74, 'Casa', 210.75, 30.00),
    (75, 'Sport', 125.00, 35.00),
    (76, 'Alimentari', 65.75, 40.00),
    (77, 'Libri', 85.25, 45.00),
    (78, 'Gadget', 21.50, 50.00),
    (79, 'Arredamento', 460.00, 55.00),
    (80, 'Scarpe', 93.25, 60.00),
    (81, 'Elettronica', 175.00, 10.00),
    (82, 'Abbigliamento', 72.75, 20.00),
    (83, 'Gioielli', 300.25, 25.00),
    (84, 'Casa', 200.50, 30.00),
    (85, 'Sport', 120.25, 35.00),
    (86, 'Alimentari', 54.00, 40.00),
    (87, 'Libri', 72.75, 45.00),
    (88, 'Gadget', 18.50, 50.00),
    (89, 'Arredamento', 490.00, 55.00),
    (90, 'Scarpe', 98.75, 60.00),
    (91, 'Elettronica', 155.75, 10.00),
    (92, 'Abbigliamento', 65.50, 20.00),
    (93, 'Gioielli', 280.75, 25.00),
    (94, 'Casa', 190.50, 30.00),
    (95, 'Sport', 115.25, 35.00),
    (96, 'Alimentari', 60.00, 40.00),
    (97, 'Libri', 78.75, 45.00),
    (98, 'Gadget', 20.00, 50.00),
    (99, 'Arredamento', 440.00, 55.00),
    (100, 'Scarpe', 85.25, 60.00);

-- Inserimento dati nella tabella "dettagli_vendite"
INSERT INTO dettagli_vendite (IDCliente, IDTransazione, data_transazione, quantita)
VALUES
    (101, 1, '2023-01-01 08:15:00', 2),
    (102, 2, '2023-01-02 10:30:00', 1),
    (103, 3, '2023-01-03 12:45:00', 3),
    (104, 4, '2023-01-04 14:00:00', 1),
    (105, 5, '2023-01-05 16:15:00', 2),
    (106, 6, '2023-01-06 18:30:00', 1),
    (107, 7, '2023-01-06 20:45:00', 3),
    (108, 8, '2023-01-06 22:00:00', 1),
    (109, 9, '2023-01-06 09:15:00', 2),
    (110, 10, '2023-01-06 11:30:00', 1),
    (111, 11, '2023-02-01 13:45:00', 3),
    (112, 12, '2023-02-02 15:00:00', 1),
    (113, 13, '2023-02-03 17:15:00', 2),
    (114, 14, '2023-02-04 19:30:00', 1),
    (115, 15, '2023-03-05 21:45:00', 3),
    (116, 16, '2023-03-06 08:00:00', 1),
    (117, 17, '2023-03-07 10:15:00', 2),
    (118, 18, '2023-03-08 12:30:00', 1),
    (119, 19, '2023-04-09 14:45:00', 3),
    (120, 20, '2023-04-10 16:00:00', 1),
    (121, 21, '2023-05-01 18:15:00', 2),
    (122, 22, '2023-05-02 20:30:00', 1),
    (123, 23, '2023-05-03 22:45:00', 3),
    (124, 24, '2023-05-04 09:00:00', 1),
    (125, 25, '2023-06-05 11:15:00', 2),
    (126, 26, '2023-06-06 13:30:00', 1),
    (127, 27, '2023-06-07 15:45:00', 3),
    (128, 28, '2023-06-08 18:00:00', 1),
    (129, 29, '2023-06-09 20:15:00', 2),
    (130, 30, '2023-07-10 22:30:00', 1),
    (131, 31, '2023-07-11 00:45:00', 3),
    (132, 32, '2023-07-12 09:00:00', 1),
    (133, 33, '2023-07-13 11:15:00', 2),
    (134, 34, '2023-07-14 13:30:00', 1),
    (135, 35, '2023-07-15 15:45:00', 3),
    (136, 36, '2023-07-16 18:00:00', 1),
    (137, 37, '2023-07-17 20:15:00', 2),
    (138, 38, '2023-08-18 22:30:00', 1),
    (139, 39, '2023-08-19 00:45:00', 3),
    (140, 40, '2023-08-20 09:00:00', 1),
    (141, 41, '2023-09-01 11:15:00', 2),
    (142, 42, '2023-09-02 13:30:00', 1),
    (143, 43, '2023-09-03 15:45:00', 3),
    (144, 44, '2023-09-04 18:00:00', 1),
    (145, 45, '2023-09-05 20:15:00', 2),
    (146, 46, '2023-09-06 22:30:00', 1),
    (147, 47, '2023-09-07 00:45:00', 3),
    (148, 48, '2023-09-08 09:00:00', 1),
    (149, 49, '2023-09-09 11:15:00', 2),
    (150, 50, '2023-09-10 13:30:00', 1),
    (151, 51, '2023-09-11 15:45:00', 3),
    (152, 52, '2023-09-12 18:00:00', 1),
    (153, 53, '2023-09-13 20:15:00', 2),
    (154, 54, '2023-10-14 22:30:00', 1),
    (155, 55, '2023-10-15 00:45:00', 3),
    (156, 56, '2023-10-16 09:00:00', 1),
    (157, 57, '2023-10-17 11:15:00', 2),
    (158, 58, '2023-10-18 13:30:00', 1),
    (106, 59, '2023-10-19 15:45:00', 3),
    (109, 60, '2023-10-20 18:00:00', 1),
    (109, 61, '2023-10-21 20:15:00', 2),
    (105, 62, '2023-10-22 22:30:00', 1),
    (109, 63, '2023-10-23 00:45:00', 3),
    (107, 64, '2023-10-24 09:00:00', 1),
    (105, 65, '2023-10-25 11:15:00', 2),
    (104, 67, '2023-10-27 15:45:00', 3),
    (108, 68, '2023-10-28 18:00:00', 1),
    (107, 69, '2023-10-29 20:15:00', 2),
    (106, 70, '2023-10-30 22:30:00', 1),
    (109, 71, '2023-11-01 00:45:00', 3),
    (104, 72, '2023-11-02 09:00:00', 1),
    (108, 73, '2023-11-03 11:15:00', 2),
    (103, 74, '2023-11-04 13:30:00', 1),
    (109, 75, '2023-11-05 15:45:00', 3),
    (103, 76, '2023-11-06 18:00:00', 1),
    (107, 77, '2023-11-07 20:15:00', 2),
    (104, 78, '2023-11-08 22:30:00', 1),
    (109, 79, '2023-11-09 00:45:00', 3),
    (108, 80, '2023-11-10 09:00:00', 1),
    (107, 81, '2023-11-11 11:15:00', 2),
    (104, 82, '2023-11-12 13:30:00', 1),
    (101, 83, '2023-11-13 15:45:00', 3),
    (106, 84, '2023-11-14 18:00:00', 1),
    (105, 85, '2023-12-15 20:15:00', 2),
    (101, 86, '2023-12-16 22:30:00', 1),
    (109, 87, '2023-12-17 00:45:00', 3),
    (101, 88, '2023-12-18 09:00:00', 1),
    (102, 89, '2023-12-19 11:15:00', 2),
    (107, 90, '2023-12-20 13:30:00', 1),
    (108, 91, '2023-12-21 15:45:00', 3),
    (106, 92, '2023-12-22 18:00:00', 1),
    (105, 93, '2023-12-23 20:15:00', 2),
    (102, 94, '2023-12-24 22:30:00', 1),
    (104, 95, '2023-12-25 00:45:00', 3),
    (103, 96, '2023-12-26 09:00:00', 1),
    (102, 97, '2023-12-27 11:15:00', 2),
    (103, 98, '2023-12-28 13:30:00', 1),
    (101, 99, '2023-12-29 15:45:00', 3),
    (102, 100, '2023-12-30 18:00:00', 1);


    
-- Seleziona tutte le vendite avvenute in una specifica data
SELECT *
FROM vendite
WHERE IDTransazione IN (
    SELECT IDTransazione
    FROM dettagli_vendite
    WHERE DATE(data_transazione) = '2023-01-06' 
);
-- elenco vendite con sconto maggiore del 50%
SELECT *
FROM vendite
WHERE sconto > 50;

-- Calcola il totale delle vendite (costo) per categoria.
SELECT categoria_prodotto, SUM(costo_vendita) AS totale_vendite
FROM vendite
GROUP BY categoria_prodotto;

-- Trova il numero totale di prodotti venduti per ogni categoria.
SELECT v.categoria_prodotto, SUM(dv.quantita) AS totale_prodotti_venduti
FROM vendite v
JOIN dettagli_vendite dv ON v.IDTransazione = dv.IDTransazione
GROUP BY v.categoria_prodotto;

-- Seleziona le vendite dell'ultimo trimestre.
SELECT v.*
FROM vendite v
JOIN dettagli_vendite dv ON v.IDTransazione = dv.IDTransazione
WHERE dv.data_transazione >= DATE_SUB(NOW(), INTERVAL 3 MONTH)
ORDER BY v.IDTransazione;

-- Raggruppa le vendite per mese e calcola il totale delle vendite per ogni mese.
SELECT
    MONTH(dv.data_transazione) AS mese,
    SUM(v.costo_vendita) AS totale_vendite
FROM vendite v
JOIN dettagli_vendite dv ON v.IDTransazione = dv.IDTransazione
GROUP BY MONTH(dv.data_transazione)
ORDER BY mese;

-- Trova la categoria con lo sconto medio più alto.
SELECT categoria_prodotto, AVG(sconto) AS sconto_medio
FROM vendite
GROUP BY categoria_prodotto
ORDER BY sconto_medio DESC
LIMIT 1;

-- Confronta le vendite mese per mese per vedere l'incremento o il decremento delle vendite. Calcola l’incremento o decremento mese per mese
WITH VenditeMesePrecedente AS (
    SELECT
        MONTH(data_transazione) AS mese,
        SUM(costo_vendita) AS vendite_mese_precedente
    FROM vendite v
    JOIN dettagli_vendite dv ON v.IDTransazione = dv.IDTransazione
    GROUP BY mese
)

SELECT
    attuale.mese,
    attuale.vendite_mese_attuale,
    precedente.vendite_mese_precedente,
    attuale.vendite_mese_attuale - precedente.vendite_mese_precedente AS incremento_decremento
FROM (
    SELECT
        MONTH(data_transazione) AS mese,
        SUM(costo_vendita) AS vendite_mese_attuale
    FROM vendite v
    JOIN dettagli_vendite dv ON v.IDTransazione = dv.IDTransazione
    GROUP BY mese
) AS attuale
JOIN VenditeMesePrecedente AS precedente
ON attuale.mese = precedente.mese + 1
ORDER BY mese;


-- Confronta le vendite totali in diverse stagioni.
SELECT
    CASE
        WHEN (data_transazione BETWEEN '2022-12-21' AND '2023-03-20') OR (data_transazione BETWEEN '2023-12-21' AND '2024-03-20') THEN 'Inverno'
        WHEN data_transazione BETWEEN '2023-03-21' AND '2023-06-20' THEN 'Primavera'
        WHEN data_transazione BETWEEN '2023-06-21' AND '2023-09-22' THEN 'Estate'
        WHEN data_transazione BETWEEN '2023-09-23' AND '2023-12-20' THEN 'Autunno'
    END AS stagione,
    SUM(costo_vendita) AS vendite_totali
FROM vendite v
JOIN dettagli_vendite dv ON v.IDTransazione = dv.IDTransazione
GROUP BY stagione
ORDER BY MIN(data_transazione);

-- Confronta le vendite totali in diverse stagioni differenziando inverno 22/23 e inverno 23/24

SELECT
    CASE
        WHEN data_transazione BETWEEN '2022-12-21' AND '2023-03-20' THEN 'Inverno 22/23'
        WHEN data_transazione BETWEEN '2023-03-21' AND '2023-06-20' THEN 'Primavera'
        WHEN data_transazione BETWEEN '2023-06-21' AND '2023-09-22' THEN 'Estate'
        WHEN data_transazione BETWEEN '2023-09-23' AND '2023-12-20' THEN 'Autunno'
        WHEN data_transazione BETWEEN '2023-12-21' AND '2024-03-20' THEN 'Inverno 23/24'
    END AS stagione,
    SUM(costo_vendita) AS vendite_totali
FROM vendite v
JOIN dettagli_vendite dv ON v.IDTransazione = dv.IDTransazione
GROUP BY stagione
ORDER BY MIN(data_transazione);

-- Supponendo di avere una tabella clienti con i campi IDCliente, Nome, Cognome ed Email scrivi una query per trovare nome e cognome dei top 5 clienti con il maggior numero di acquisti. 


-- Creazione della tabella "clienti"
CREATE TABLE clienti (
    IDCliente INT PRIMARY KEY,
    Nome VARCHAR(255),
    Cognome VARCHAR(255),
    Email VARCHAR(255)
);

-- Inserimento dati nella tabella "clienti"
INSERT INTO clienti (IDCliente, Nome, Cognome, Email)
VALUES
    (101, 'Mario', 'Rossi', 'mario.rossi@example.com'),
    (102, 'Anna', 'Verdi', 'anna.verdi@example.com'),
    (103, 'Luca', 'Bianchi', 'luca.bianchi@example.com'),
    (104, 'Giulia', 'Neri', 'giulia.neri@example.com'),
    (105, 'Marco', 'Gialli', 'marco.gialli@example.com'),
    (106, 'Francesca', 'Marroni', 'francesca.marroni@example.com'),
    (107, 'Davide', 'Blu', 'davide.blu@example.com'),
    (108, 'Sara', 'Rosa', 'sara.rosa@example.com'),
    (109, 'Alessandro', 'Verde', 'alessandro.verde@example.com'),
    (110, 'Elena', 'Viola', 'elena.viola@example.com'),
    (111, 'Giovanni', 'Arancione', 'giovanni.arancione@example.com'),
    (112, 'Roberta', 'Azzurri', 'roberta.azzurri@example.com'),
    (113, 'Luigi', 'Rosa', 'luigi.rosa@example.com'),
    (114, 'Martina', 'Verde', 'martina.verde@example.com'),
    (115, 'Simone', 'Giallo', 'simone.giallo@example.com'),
    (116, 'Elisa', 'Blu', 'elisa.blu@example.com'),
    (117, 'Matteo', 'Neri', 'matteo.neri@example.com'),
    (118, 'Valentina', 'Bianchi', 'valentina.bianchi@example.com'),
    (119, 'Paolo', 'Rosa', 'paolo.rosa@example.com'),
    (120, 'Aurora', 'Arancione', 'aurora.arancione@example.com'),
    (121, 'Gabriele', 'Verde', 'gabriele.verde@example.com'),
    (122, 'Camilla', 'Blu', 'camilla.blu@example.com'),
    (123, 'Riccardo', 'Gialli', 'riccardo.gialli@example.com'),
    (124, 'Alessia', 'Rosa', 'alessia.rosa@example.com'),
    (125, 'Tommaso', 'Verde', 'tommaso.verde@example.com'),
    (126, 'Giorgia', 'Blu', 'giorgia.blu@example.com'),
    (127, 'Nicolas', 'Arancione', 'nicolas.arancione@example.com'),
    (128, 'Alice', 'Viola', 'alice.viola@example.com'),
    (129, 'Christian', 'Rosa', 'christian.rosa@example.com'),
    (130, 'Caterina', 'Blu', 'caterina.blu@example.com'),
    (131, 'Andrea', 'Giallo', 'andrea.giallo@example.com'),
    (132, 'Eleonora', 'Verde', 'eleonora.verde@example.com'),
    (133, 'Gianluca', 'Neri', 'gianluca.neri@example.com'),
    (134, 'Eva', 'Rosa', 'eva.rosa@example.com'),
    (135, 'Lorenzo', 'Azzurri', 'lorenzo.azzurri@example.com'),
    (136, 'Beatrice', 'Verde', 'beatrice.verde@example.com'),
    (137, 'Federico', 'Blu', 'federico.blu@example.com'),
    (138, 'Serena', 'Viola', 'serena.viola@example.com'),
    (139, 'Daniele', 'Arancione', 'daniele.arancione@example.com'),
    (140, 'Elisabetta', 'Rosa', 'elisabetta.rosa@example.com'),
    (141, 'Gabriel', 'Giallo', 'gabriel.giallo@example.com'),
    (142, 'Marta', 'Blu', 'marta.blu@example.com'),
    (143, 'Raffaele', 'Verde', 'raffaele.verde@example.com'),
    (144, 'Vanessa', 'Neri', 'vanessa.neri@example.com'),
    (145, 'Antonio', 'Rosa', 'antonio.rosa@example.com'),
    (146, 'Cristina', 'Azzurri', 'cristina.azzurri@example.com'),
    (147, 'Filippo', 'Verde', 'filippo.verde@example.com'),
    (148, 'Silvia', 'Blu', 'silvia.blu@example.com'),
    (149, 'Massimo', 'Viola', 'massimo.viola@example.com'),
    (150, 'Valeria', 'Arancione', 'valeria.arancione@example.com'),
    (151, 'Angelo', 'Rosa', 'angelo.rosa@example.com'),
    (152, 'Ilaria', 'Giallo', 'ilaria.giallo@example.com'),
    (153, 'Stefano', 'Verde', 'stefano.verde@example.com'),
    (154, 'Alessandra', 'Blu', 'alessandra.blu@example.com'),
    (155, 'Giacomo', 'Neri', 'giacomo.neri@example.com'),
    (156, 'Elena', 'Rosa', 'elena.rosa@example.com'),
    (157, 'Pietro', 'Arancione', 'pietro.arancione@example.com'),
    (158, 'Chiara', 'Viola', 'chiara.viola@example.com');

SELECT
    c.Nome,
    c.Cognome,
    COUNT(dv.IDTransazione) AS numero_acquisti
FROM clienti c
JOIN dettagli_vendite dv ON c.IDCliente = dv.IDCliente
GROUP BY c.IDCliente, c.Nome, c.Cognome
ORDER BY numero_acquisti DESC
LIMIT 5;

-- Selezionare gli indirizzi email di clienti che non fanno acquisti da 6 mesi in modo da mandare una newsletter con un codice sconto

SELECT
    c.Email
FROM clienti c
JOIN dettagli_vendite dv ON c.IDCliente = dv.IDCliente
WHERE dv.data_transazione < CURRENT_DATE() - INTERVAL 6 MONTH
ORDER BY Email;

-- Selezionare il nome, il cognome e il totale speso per i 10 clienti che hanno speso di più

SELECT c.Nome, c.Cognome, SUM(v.costo_vendita) AS totale_speso
FROM clienti c
JOIN dettagli_vendite dv ON c.IDCliente = dv.IDCliente
JOIN vendite v ON dv.IDTransazione = v.IDTransazione
GROUP BY c.Nome, c.Cognome
ORDER BY totale_speso DESC
LIMIT 10;

-- Crea una newsletter Selezionando il nome, il cognome, l'email e il numero di mesi senza acquisti per i clienti che non fanno ordini da almeno 6 mesi

SELECT 'Ciao',c.Nome,c.Cognome, 'abbiamo notato che non effetti un ordine da', 
       TIMESTAMPDIFF(MONTH, MAX(dv.data_transazione), CURRENT_DATE()) AS mesi_senza_acquisti,
        'mesi. Abbiamo pensato di omaggiarti di un codice sconto del 10% da utilizzare sul tuo prossimo ordine. Scrivi CIMANCHI10 in fase di checkout. Ti aspettiamo',
        c.Email
FROM clienti c
JOIN dettagli_vendite dv ON c.IDCliente = dv.IDCliente
GROUP BY c.Nome, c.Cognome, c.Email
HAVING mesi_senza_acquisti >= 6;


  


 

