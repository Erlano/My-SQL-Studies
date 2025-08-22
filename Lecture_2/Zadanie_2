/* Bazy danych i manipulacja danymi - Zadanie 2
1. Załóż bazę o nazwie: School_Coding.
2. Załóż tabelę o nazwie: Mentors i utwórz 6 kolumn, a także dobierz i ustaw dla każdej constraints:
  ID
  Imię 
  Nazwisko
  Specjalizacja
  Data zatrudnienia
  Data zwolnienia
3. Wprowadź dane (10 pozycji od 1 do 10). Każda pozycja ma mieć wypełnione wszystkie dane).
4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo poprzez ich wyświetlenie.
5. Zmień Nazwisko Mentora w pozycji nr 5.
6. Sprawdź, czy dane zostały zmienione, wyświetlając tylko tę pozycję.
7. Zmień specjalizację mentora w pozycji 9.
8. Sprawdź, czy dane zostały zmienione, wyświetlając tylko tę pozycję.
9. Dodaj kolumnę o nazwie Wynagrodzenie, a także dobierz i ustaw constraints.
10. Uzupełnij kolumnę wartością 1000 dla pozycji 1,2 oraz 3.
11. Wyświetl pozycję 1,2,3 i sprawdź, czy dane są prawidłowe.
*/

CREATE DATABASE school_coding;

CREATE TABLE mentors (
	id INTEGER PRIMARY KEY,
    imie TEXT,
    nazwisko TEXT,
    specjalizacja TEXT,
    data_zatrudnienia DATE,
    data_zwolnienia DATE
);

INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (1, 'Jan', 'Kowalski', 'Java', '2022-08-15');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (2, 'Anna', 'Nowak', 'Python', '2021-09-01');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (3, 'Piotr', 'Wiśniewski', 'Frontend', '2023-01-20');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (4, 'Katarzyna', 'Wójcik', 'SQL', '2022-11-10');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia, data_zwolnienia) VALUES (5, 'Tomasz', 'Kowalczyk', 'DevOps', '2020-05-30', '2024-07-31');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (6, 'Agnieszka', 'Kamińska', 'UX/UI Design', '2023-03-12');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (7, 'Marcin', 'Lewandowski', 'Backend', '2022-02-28');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (8, 'Zofia', 'Zielińska', 'Data Science', '2024-01-05');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia, data_zwolnienia) VALUES (9, 'Krzysztof', 'Szymański', 'Java', '2021-06-18', '2023-12-20');
INSERT INTO mentors (id, imie, nazwisko, specjalizacja, data_zatrudnienia) VALUES (10, 'Maria', 'Dąbrowska', 'Frontend', '2023-10-01');
SELECT * FROM mentors;

UPDATE mentors SET nazwisko = 'Woźniak' WHERE id = 5;
SELECT * FROM mentors WHERE id = 5;

UPDATE mentors SET specjalizacja = 'DevOps' WHERE id = 9;
SELECT * FROM mentors WHERE id = 9;

ALTER TABLE mentors ADD COLUMN wynagrodzenie INTEGER;

UPDATE mentors SET wynagrodzenie = 1000 WHERE id = 1;
UPDATE mentors SET wynagrodzenie = 1000 WHERE id = 2;
UPDATE mentors SET wynagrodzenie = 1000 WHERE id = 3;

SELECT * FROM mentors WHERE wynagrodzenie = 1000;
