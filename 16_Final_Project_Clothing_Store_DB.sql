-- 1. Stwórz Bazę „Sklep odzieżowy”
CREATE DATABASE sklep_odziezowy;

/* 2. Utwórz tabelę „Producenci” z kolumnami:
id producenta
nazwa producenta
adres producenta
nip producenta
data podpisania umowy z producentem
Do każdej kolumny ustaw odpowiedni „constraint”
*/

CREATE TABLE sklep_odziezowy.producenci(
	id_producenta INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nazwa_producenta VARCHAR(255) NOT NULL,
	adres_producenta VARCHAR(255),
	nip_producenta VARCHAR(20) UNIQUE,
	data_podpisania_umowy DATE NOT NULL
);

/* 3. Utwórz tabelę „Produkty” z kolumnami:
id produktu
id producenta
nazwa produktu
opis produktu
cena netto zakupu
cena brutto zakupu
cena netto sprzedaży
cena brutto sprzedaży
procent VAT sprzedaży
Do każdej kolumny ustaw odpowiedni „constraint”
*/

CREATE TABLE sklep_odziezowy.produkty(
	id_produktu INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
	id_producenta INTEGER NOT NULL,
	nazwa_produktu VARCHAR(255) NOT NULL,
	opis_produktu TEXT,
	cena_netto_zakupu DECIMAL(10, 2) NOT NULL,
	cena_brutto_zakupu DECIMAL(10, 2) NOT NULL,
	cena_netto_sprzedazy DECIMAL(10, 2) NOT NULL,
	cena_brutto_sprzedazy DECIMAL(10, 2) NOT NULL,
	procent_VAT_sprzedazy DECIMAL(3, 2) NOT NULL
);

/* 4. Utwórz tabelę „Zamówienia” z kolumnami:
id zamówienia
id klienta
id produktu
Data zamówienia
Do każdej kolumny ustaw odpowiedni „constraint”
*/


CREATE TABLE sklep_odziezowy.zamowienia(
	id_zamowienia INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
	id_klienta INTEGER NOT NULL,
	id_produktu INTEGER NOT NULL,
	data_zamowienia DATE NOT NULL
);

/* 5. Utwórz tabelę „Klienci” z kolumnami:
id klienta
imię
nazwisko
adres
Do każdej kolumny ustaw odpowiedni „constraint”
*/

CREATE TABLE sklep_odziezowy.klienci(
	id_klienta INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
	imie VARCHAR(100) NOT NULL,
	nazwisko VARCHAR(150) NOT NULL,
	adres VARCHAR(255)
);
 
/* 6. Połącz tabele ze sobą za pomocą kluczy obcych:
Produkty – Producenci
Zamówienia – Produkty
Zamówienia - Klienci
*/

ALTER TABLE sklep_odziezowy.produkty
	ADD CONSTRAINT fk_producenci
	FOREIGN KEY (id_producenta) REFERENCES producenci(id_producenta);

ALTER TABLE sklep_odziezowy.zamowienia
	ADD CONSTRAINT fk_produkty
	FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu);

ALTER TABLE sklep_odziezowy.zamowienia
	ADD CONSTRAINT fk_klienci
	FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta);

/* 7. Każdą tabelę uzupełnij danymi wg:
Tabela „Producenci” – 4 pozycje
Tabela „Produkty” – 20 pozycji
Tabela „Zamówienia” – 10 pozycji
Tabela „Klienci” – 10 pozycji
*/

INSERT INTO sklep_odziezowy.producenci (nazwa_producenta, adres_producenta, nip_producenta, data_podpisania_umowy) VALUES
('Vistula', 'ul. Przemysłowa 12, 31-537 Kraków', '7251833554', '2020-01-15'),
('Bytom S.A.', 'ul. Bytomska 5, 41-940 Piekary Śląskie', '6262692224', '2019-03-20'),
('Reserved', 'ul. Łąkowa 39/44, 80-769 Gdańsk', '583100318', '2021-05-10'),
('Diverse', 'ul. Boczna 8, 80-298 Gdańsk', '5840301419', '2022-08-01'),
('Wólczanka', 'ul. Pilotów 10, 31-462 Kraków', '6760071285', '2018-11-25');

INSERT INTO sklep_odziezowy.klienci (imie, nazwisko, adres) VALUES
('Jan', 'Kowalski', 'ul. Kwiatowa 5, 00-001 Warszawa'),
('Anna', 'Nowak', 'ul. Leśna 12, 30-002 Kraków'),
('Piotr', 'Wiśniewski', 'ul. Ogrodowa 8, 50-003 Wrocław'),
('Katarzyna', 'Wójcik', 'ul. Polna 3, 60-004 Poznań'),
('Tomasz', 'Kowalczyk', 'ul. Słoneczna 15, 80-005 Gdańsk'),
('Agnieszka', 'Kamińska', 'ul. Brzozowa 2, 90-006 Łódź'),
('Marcin', 'Lewandowski', 'ul. Lipowa 7, 70-007 Szczecin'),
('Zofia', 'Zielińska', 'ul. Dębowa 1, 85-008 Bydgoszcz'),
('Krzysztof', 'Szymański', 'ul. Akacjowa 11, 40-009 Katowice'),
('Maria', 'Dąbrowska', 'ul. Wierzbowa 4, 15-010 Białystok'),
('Grzegorz', 'Woźniak', 'ul. Klonowa 9, 20-011 Lublin'),
('Barbara', 'Kozłowska', 'ul. Jesionowa 6, 35-012 Rzeszów'),
('Andrzej', 'Mazur', 'ul. Topolowa 14, 25-013 Kielce'),
('Ewa', 'Jankowska', 'ul. Świerkowa 18, 10-014 Olsztyn'),
('Marek', 'Kwiatkowski', 'ul. Cisowa 20, 45-015 Opole');

INSERT INTO sklep_odziezowy.produkty (id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu, cena_brutto_zakupu, cena_netto_sprzedazy, cena_brutto_sprzedazy, procent_VAT_sprzedazy) VALUES
(1, 'Garnitur Męski "Klasyk"', 'Elegancki garnitur wełniany', 450.00, 553.50, 899.99, 1106.99, 0.23),
(1, 'Koszula Biała Slim Fit', 'Bawełniana koszula do garnituru', 80.00, 98.40, 199.99, 245.99, 0.23),
(5, 'Koszula Damska Jedwabna', 'Luksusowa koszula z jedwabiu', 120.00, 147.60, 299.99, 368.99, 0.23),
(2, 'Płaszcz Męski Wełniany', 'Klasyczny płaszcz dyplomatka', 500.00, 615.00, 1299.99, 1598.99, 0.23),
(2, 'Spodnie Chinosy Beżowe', 'Wygodne spodnie na co dzień', 90.00, 110.70, 229.99, 282.89, 0.23),
(3, 'T-shirt z nadrukiem', 'Bawełniany T-shirt z logo', 30.00, 36.90, 79.99, 98.39, 0.23),
(3, 'Jeansy Damskie Skinny', 'Dopasowane jeansy z elastanem', 100.00, 123.00, 249.99, 307.49, 0.23),
(3, 'Kurtka Jeansowa Oversize', 'Modna kurtka w stylu lat 90.', 150.00, 184.50, 349.99, 430.49, 0.23),
(4, 'Bluza z kapturem "Sport"', 'Sportowa bluza z polaru', 70.00, 86.10, 179.99, 221.39, 0.23),
(4, 'Spodnie Dresowe Szare', 'Wygodne spodnie dresowe', 60.00, 73.80, 149.99, 184.49, 0.23),
(5, 'Krawat Jedwabny Granatowy', 'Klasyczny krawat do garnituru', 50.00, 61.50, 129.99, 159.89, 0.23),
(1, 'Sweter Męski z Wełny Merino', 'Ciepły i miękki sweter', 110.00, 135.30, 279.99, 344.39, 0.23),
(2, 'Marynarka Tweedowa', 'Stylowa marynarka w kratę', 250.00, 307.50, 599.99, 737.99, 0.23),
(3, 'Sukienka Letnia w Kwiaty', 'Zwiewna sukienka z wiskozy', 80.00, 98.40, 199.99, 245.99, 0.23),
(4, 'Buty Sportowe "Runner"', 'Lekkie buty do biegania', 130.00, 159.90, 299.99, 368.99, 0.23),
(5, 'Poszetka Jedwabna', 'Dodatek do eleganckiej marynarki', 35.00, 43.05, 89.99, 110.69, 0.23),
(1, 'Spinki do mankietów', 'Srebrne spinki do koszuli', 60.00, 73.80, 149.99, 184.49, 0.23),
(3, 'Spódnica Plisowana Midi', 'Elegancka spódnica za kolano', 75.00, 92.25, 189.99, 233.69, 0.23),
(4, 'Czapka z daszkiem Logo', 'Bawełniana czapka', 25.00, 30.75, 59.99, 73.79, 0.23),
(2, 'Szalik Wełniany', 'Ciepły szalik na zimę', 55.00, 67.65, 139.99, 172.19, 0.23),
(3, 'Top Damski na ramiączkach', 'Basicowy top bawełniany', 20.00, 24.60, 49.99, 61.49, 0.23),
(4, 'Skarpety Sportowe (3-pak)', 'Zestaw skarpet sportowych', 15.00, 18.45, 39.99, 49.19, 0.23),
(1, 'Pasek Skórzany Męski', 'Elegancki pasek do spodni', 70.00, 86.10, 179.99, 221.39, 0.23),
(5, 'Koszula w kratę Vichy', 'Koszula z długim rękawem', 85.00, 104.55, 219.99, 270.59, 0.23),
(3, 'Legginsy Damskie Czarne', 'Wygodne legginsy z bawełny', 40.00, 49.20, 99.99, 122.99, 0.23);

INSERT INTO sklep_odziezowy.zamowienia (id_klienta, id_produktu, data_zamowienia) VALUES
(1, 2, '2024-01-20'),
(5, 7, '2024-01-22'),
(10, 25, '2024-02-05'),
(2, 1, '2024-02-10'),
(8, 14, '2024-03-18'),
(15, 20, '2024-03-18'),
(3, 9, '2024-04-01'),
(7, 11, '2024-04-05'),
(12, 4, '2024-05-13'),
(1, 17, '2024-05-13'),
(15, 11, '2024-05-13'),
(3, 4, '2024-06-01'),
(7, 11, '2024-06-06'),
(12, 25, '2024-06-6'),
(1, 9, '2024-06-23');

-- 8. Wyświetl wszystkie produkty z wszystkimi danymi od producenta który znajduje się na pozycji 1 w tabeli „Producenci”

SELECT *
FROM produkty
JOIN producenci ON produkty.id_producenta = producenci.id_producenta
WHERE producenci.id_producenta = 1;

-- 9. Posortuj te produkty alfabetycznie po nazwie

SELECT *
FROM produkty
JOIN producenci ON produkty.id_producenta = producenci.id_producenta
WHERE producenci.id_producenta = 1
ORDER BY produkty.nazwa_produktu ASC;

-- 10. Wylicz średnią cenę za produktu od producenta z pozycji 1

SELECT
	AVG(cena_netto_zakupu),
    AVG(cena_brutto_zakupu),
    AVG(cena_netto_sprzedazy),
    AVG(cena_brutto_sprzedazy)
FROM produkty
WHERE id_producenta = 1;

-- 11. Wyświetl dwie grupy produktów tego producenta: Połowa najtańszych to grupa: „Tanie”. Pozostałe to grupa: „Drogie”

SELECT *,
	CASE
		WHEN cena_brutto_zakupu > AVG(cena_brutto_zakupu) OVER()
		THEN 'Drogie'
		ELSE 'Tanie'
	END AS 'grupa'
FROM produkty
WHERE id_producenta = 1
ORDER BY grupa DESC;

-- 12. Wyświetl produkty zamówione, wyświetlając tylko ich nazwę

SELECT DISTINCT(p.nazwa_produktu)
FROM zamowienia AS z
INNER JOIN produkty AS p ON z.id_produktu = p.id_produktu;

-- 13. Wyświetl wszystkie produkty zamówione – ograniczając wyświetlanie do 5 pozycji

SELECT *
FROM zamowienia AS z
INNER JOIN produkty AS p ON z.id_produktu = p.id_produktu
LIMIT 5;

-- 14. Policz łączną wartość wszystkich zamówień

SELECT
	SUM(p.cena_netto_zakupu),
    SUM(p.cena_brutto_zakupu),
    SUM(p.cena_netto_sprzedazy),
    SUM(p.cena_brutto_sprzedazy)
FROM zamowienia AS z
INNER JOIN produkty AS p ON z.id_produktu = p.id_produktu;

-- 15. Wyświetl wszystkie zamówienia wraz z nazwą produktu sortując je wg daty od najstarszego do najnowszego

SELECT z.*, p.nazwa_produktu
FROM zamowienia AS z
INNER JOIN produkty AS p ON z.id_produktu = p.id_produktu
ORDER BY z.data_zamowienia ASC;

-- 16. Sprawdź czy w tabeli produkty masz uzupełnione wszystkie dane – wyświetl pozycje dla których brakuje danych

SELECT *
FROM produkty
WHERE id_produktu IS NULL
OR id_producenta IS NULL
OR nazwa_produktu IS NULL
OR opis_produktu IS NULL
OR cena_netto_zakupu IS NULL
OR cena_brutto_zakupu IS NULL
OR cena_netto_sprzedazy IS NULL
OR cena_brutto_sprzedazy IS NULL
OR procent_VAT_sprzedazy IS NULL;

-- 17. Wyświetl produkt najczęściej sprzedawany wraz z jego ceną

SELECT
	p.nazwa_produktu,
	COUNT(z.id_zamowienia) AS sprzedawany_raz,
    p.cena_brutto_sprzedazy
FROM sklep_odziezowy.zamowienia AS z
INNER JOIN sklep_odziezowy.produkty AS p ON z.id_produktu = p.id_produktu
GROUP BY z.id_produktu
ORDER BY sprzedawany_raz DESC
LIMIT 1;

-- 18. Znajdź dzień w którym najwięcej zostało złożonych zamówień

SELECT 
	z.data_zamowienia AS 'data',
	COUNT(z.data_zamowienia) AS ilosz_zamowien
FROM sklep_odziezowy.zamowienia AS z
GROUP BY z.data_zamowienia
ORDER BY ilosz_zamowien DESC
LIMIT 1;
