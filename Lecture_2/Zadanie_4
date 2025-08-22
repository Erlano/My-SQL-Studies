/* Bazy danych i manipulacja danymi - Zadanie 4
1. Załóż bazę o nazwie: Lista Pracowników.
2. Załóż tabelę o nazwie: Pracownicy i utwórz 5 kolumn, a także dobierz i ustaw dla każdej constraints:
  ID
  Imię 
  Nazwisko
  Stanowisko
  Dział
3. Wprowadź dane osób kilku, z którymi pracujesz w Swojej firmie. Każda pozycja ma mieć wypełnione wszystkie dane zgodnie z wymaganiem.
4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo.
5. Dodaj kolumnę: Data zatrudnienia.
6. Dodaj nowego pracownika uzupełniając wszystkie dane.
7. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
8. Uzupełnij wszystkie brakujące dane w kolumnie o nazwie Data Zatrudnienia.
9. Sprawdź, czy dane zostały zmienione, wyświetlając je.
*/

CREATE DATABASE lista_pracownikow;

CREATE TABLE pracownicy(
	id INTEGER PRIMARY KEY auto_increment,
	imie TEXT,
	nazwisko TEXT,
	stanowisko TEXT,
	dzial TEXT
);

INSERT INTO pracownicy (imie, nazwisko, stanowisko, dzial) VALUES
('Karolina', 'Zielińska', 'Lider Zespołu', 'V-Ret'),
('Mateusz', 'Szymański', 'Magazynier', 'C-Ret'),
('Jakub', 'Jankowski', 'Operator Wózka', 'WHD'),
('Natalia', 'Woźniak', 'Specjalista ds. Jakości', 'ICQA'),
('Paweł', 'Kozłowski', 'Pracownik Sortowni', 'Non-Tech'),
('Monika', 'Mazur', 'Rozwiązywanie Problemów', 'Problem Solve');
SELECT * FROM pracownicy;

ALTER TABLE pracownicy ADD COLUMN data_zatrudnienia DATE;
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, dzial, data_zatrudnienia) VALUES (7, 'Adam', 'Krajewski', 'Magazynier', 'C-Ret', '2025-07-15');
SELECT * FROM pracownicy;

UPDATE pracownicy SET data_zatrudnienia = '2022-03-15' WHERE id = 1;
UPDATE pracownicy SET data_zatrudnienia = '2023-09-01' WHERE id = 2;
UPDATE pracownicy SET data_zatrudnienia = '2021-11-22' WHERE id = 3;
UPDATE pracownicy SET data_zatrudnienia = '2023-01-10' WHERE id = 4;
UPDATE pracownicy SET data_zatrudnienia = '2022-07-30' WHERE id = 5;
UPDATE pracownicy SET data_zatrudnienia = '2024-02-05' WHERE id = 6;
SELECT * FROM pracownicy;
