-- Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
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

-- Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj.
INSERT INTO pracownicy VALUES
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

UPDATE pracownicy SET nazwisko = 'KOWALCZYK' WHERE id IN (6, 7, 19);
UPDATE pracownicy SET imie = NULL WHERE id IN (9, 16);
UPDATE pracownicy SET kurs = NULL WHERE id = 11;
UPDATE pracownicy SET wiek = NULL WHERE id = 12;

-- Wyświetl listę pracowników o Imieniu: Anna.
SELECT * FROM pracownicy WHERE imie = 'anna';

-- Wyświetl listę pracowników z brakującą daną w kolumnie Imię.
SELECT * FROM pracownicy WHERE imie IS NULL;

-- Wyświetl kursy prowadzone przez pracowników w wieku od 30 lat do 40 lat.
SELECT kurs FROM pracownicy WHERE wiek BETWEEN 30 AND 40;

-- Wyświetl wiek pracowników z ID od 1 do 7.
SELECT wiek FROM pracownicy WHERE id BETWEEN 1 AND 7;

-- Wyświetl listę pracowników z brakującymi danymi w kolumnie wiek.
SELECT * FROM pracownicy WHERE wiek IS NULL;

-- Zmień nazwę kolumny „Kurs” na „Szkolenie”.
ALTER TABLE pracownicy CHANGE COLUMN kurs szkolenie VARCHAR(255);
