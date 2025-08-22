/* Bazy danych i manipulacja danymi - Zadanie 5
1. Załóż bazę o nazwie: Moje zainteresowania.
2. Załóż tabelę o nazwie: Zainteresowania i utwórz 4 kolumny, a także dobierz i ustaw dla każdej CONSTRAINTS:
  ID
  Nazwa 
  Opis
  Data realizacji
3. Wprowadź dane tylko dla kolumn: Nazwa i Opis. (Min 5 pozycji)
4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo i co pojawia się w kolumnie ID i Data realizacji.
5. Dodaj nową pozycję wypełniając wszystkie dane.
6. Dodaj brakujące dane dla wiersza 4.
7. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
8. Usuń wszystkie wiersze, w których jakaś z pozycji jest pusta.
9. Sprawdź, czy dane zostały zmienione, wyświetlając je.
*/

CREATE DATABASE moje_zainteresowania;

CREATE TABLE zainteresowania (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	nazwa TEXT NOT NULL,
	opis TEXT,
	data_realizacji DATE
);

INSERT INTO zainteresowania (nazwa, opis) VALUES
('Budowa komputera PC', 'Złożenie wydajnego komputera do gier i programowania.'),
('Nauka języka Python', 'Opanowanie podstaw i stworzenie prostej aplikacji webowej.'),
('Kurs cyberbezpieczeństwa', 'Poznanie technik zabezpieczania sieci i systemów.'),
('Projekt IoT z Raspberry Pi', 'Zbudowanie inteligentnego systemu do monitorowania temperatury w domu.'),
('Tworzenie gier w Unity', 'Stworzenie prostej gry platformowej 2D.'),
('Administracja siecią domową', 'Skonfigurowanie zaawansowanej sieci domowej z serwerem plików.'),
('Nauka SQL i baz danych', 'Przerobienie kursu online i stworzenie własnej bazy danych.');
SELECT * FROM zainteresowania;

INSERT INTO zainteresowania (nazwa, opis, data_realizacji) VALUES ('Nauka montażu wideo', 'Nauczenie się podstaw obsługi programu DaVinci Resolve', '2025-12-31');
UPDATE zainteresowania SET data_realizacji = '2026-06-15' WHERE id = 4;
SELECT * FROM zainteresowania;

DELETE FROM zainteresowania WHERE 'data_realizacji' IS NULL;
SELECT * FROM zainteresowania;
