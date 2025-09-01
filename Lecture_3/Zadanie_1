-- Stwórz Bazę Pracownicy

CREATE DATABASE pracownicy;
USE pracownicy;

-- Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS: ID, Imię, Nazwisko, Wiek, Kurs

CREATE TABLE pracownicy (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    wiek INTEGER,
    kurs VARCHAR(255)
);

-- Każdą tabelę uzupełnij danymi z tabeli z załącznika.

INSERT INTO pracownicy (id, imie, nazwisko, wiek, kurs) VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KAMIŃSKI', 34, 'Java'),
(7, 'Robert', 'LEWANDOWSKI', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Anna', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, 'UX'),
(12, 'Robert', 'KOZŁOWSKI', 38, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, 'Patryk', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrze', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'ZIELIŃSKI', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

-- Wyświetl listę pracowników starszych niż 30 lat.
SELECT * FROM pracownicy WHERE wiek > 30;

-- Wyświetl listę pracowników młodszych niż 30 lat.
SELECT * FROM pracownicy WHERE wiek < 30;

-- Wyświetl listę pracowników, których nazwisko zaczyna się na „K” i kończy na „ki”
SELECT * FROM pracownicy WHERE nazwisko LIKE 'k%ki';

-- Zmień nazwę kolumny „ID” na „NR”
ALTER TABLE pracownicy CHANGE COLUMN id nr INTEGER NOT NULL AUTO_INCREMENT;

-- Wyświetl pozycje, w których są puste pola.

SELECT *
FROM pracownicy
WHERE
	nr IS NULL OR
    imie  IS NULL OR
    nazwisko IS NULL OR
    wiek IS NULL OR
    kurs IS NULL;
	
-- Wyświetl wszystkich pracowników z kursu „Java”.

SELECT *
FROM pracownicy
WHERE kurs = 'java';
