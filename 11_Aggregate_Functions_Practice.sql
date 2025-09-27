CREATE DATABASE aggregates;
CREATE TABLE aggregates.batman(
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  sex CHAR(1),
  age INTEGER,
  price DOUBLE,
  start_date DATE,
  gift TEXT
);
INSERT INTO aggregates.batman VALUES (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
INSERT INTO aggregates.batman VALUES (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
INSERT INTO aggregates.batman VALUES (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
INSERT INTO aggregates.batman VALUES (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'); 
INSERT INTO aggregates.batman VALUES (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
INSERT INTO aggregates.batman VALUES (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
INSERT INTO aggregates.batman VALUES (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
INSERT INTO aggregates.batman VALUES (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
INSERT INTO aggregates.batman VALUES (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');

-- Policz, ile jest rekordów w tabeli (po id).
SELECT COUNT(id) FROM aggregates.batman;

-- Policz, ile jest rekordów z wiekiem.
SELECT COUNT(age) FROM aggregates.batman;

-- Ilu mężczyzn ma więcej niż 40 lat?
SELECT COUNT(age) FROM aggregates.batman WHERE (age > 40) AND (sex = 'M');

-- Oblicz sumę wszystkich cen.
SELECT SUM(price) FROM aggregates.batman;

-- Oblicz łączny wiek kobiet.
SELECT SUM(age) FROM aggregates.batman WHERE sex = 'F';

-- Podaj łączną wartość komputera i okna.
SELECT SUM(price) FROM aggregates.batman WHERE gift IN ('komputer', 'okno');

-- Podaj maksymalną cenę.
SELECT MAX(price) FROM aggregates.batman;

-- Podaj najpóźniejszą datę
SELECT MAX(start_date) FROM aggregates.batman;

-- Podaj nazwisko rozpoczynające się literą, która jest najbliżej końca alfabetu
SELECT last_name FROM aggregates.batman ORDER BY last_name DESC LIMIT 1;

-- Podaj minimalną cenę.
SELECT MIN(price) FROM aggregates.batman;

-- Podaj najwcześniejszą datę
SELECT MIN(start_date) FROM aggregates.batman;

-- Podaj nazwisko rozpoczynające się literą, która jest najbliżej początku alfabetu
SELECT last_name FROM aggregates.batman ORDER BY last_name ASC LIMIT 1;

-- Jednocześnie podaj cenę minimalną oraz maksymalną. Nadaj odpowiednie aliasy.
SELECT MIN(price) AS 'Cena minimalna', MAX(price) AS 'Cena maksymalna' FROM aggregates.batman;

-- Oblicz różnicę pomiędzy ceną maksymalną, a minimalną.
SELECT MAX(price)-MIN(price) FROM aggregates.batman;

-- Oblicz średnią wieku.
SELECT ROUND(AVG(age), 1) FROM aggregates.batman;

-- Oblicz średnią wieku za pomocą COUNT oraz SUM.
SELECT ROUND((SUM(age))/(COUNT(age)), 1) FROM aggregates.batman;

-- Oblicz średni wiek dla kobiet oraz średni wiek dla mężczyzn.
SELECT sex, ROUND(AVG(age), 1) AS 'średni wiek' FROM aggregates.batman GROUP BY sex;
