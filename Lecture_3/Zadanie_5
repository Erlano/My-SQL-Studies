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
(4, 'Anna', NULL, 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', NULL, 'Tester'),
(6, 'Anna', 'KOWALCZYK', NULL, 'Java'),
(7, 'Robert', 'KOWALCZYK', NULL, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', NULL, 'Java'),
(9, 'Robert', 'WOŹNIAK', NULL, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Tester'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, NULL),
(16, NULL, 'ZIELIŃSKI', 28, NULL),
(17, 'Andrzej', 'WOŹNIAK', 31, NULL),
(18, 'Andrze', 'LEWANDOWSKI', 30, NULL),
(19, 'Roman', 'KOWALCZYK', 39, NULL),
(20, 'Ewa', 'WOŹNIAK', 31, NULL);

-- Wyświetl listę pracowników wg kolumny Imię, eliminując powtarzające się pozycje.
SELECT DISTINCT imie FROM pracownicy;

-- Wyświetl listę pracowników wg kolumny Nazwisko eliminując powtarzające się pozycje.
SELECT DISTINCT nazwisko FROM pracownicy;

-- Wyświetl kursy prowadzone przez pracowników o Nazwisku: „Kowalczyk”.
SELECT kurs FROM pracownicy WHERE nazwisko = 'Kowalczyk';

-- Wyświetl listę pracowników, dla których nie znamy wieku.
SELECT * FROM pracownicy WHERE wiek IS NULL;

-- Wyświetl wiek pracowników o Imieniu „Patryk”.
SELECT wiek FROM pracownicy WHERE imie = 'Patryk';

-- Zmień nazwę tabeli z „Pracownicy” na „Mentorzy”.
ALTER TABLE pracownicy RENAME TO mentorzy;
