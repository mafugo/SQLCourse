--Merhabalar,
--
--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), 
--birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
--Kolay Gelsin.

-- I created the database using pgAdmin4

-- CREATE the table employee
CREATE TABLE employee(
    id INTEGER,  
    name VARCHAR(50), 
    birthday DATE, 
    email VARCHAR(100)
)

-- I added 50 rows data using Mockaroo

-- UPDATES
UPDATE employee
SET name = 'Mafugo',
    birthday = '2001-04-21',
    email = 'mafugo@gmail.com'
WHERE id = 33
RETURNING *;

UPDATE employee
SET id = 51,
    birthday = '1974-05-06',
    email = 'nata@sholl. com'
WHERE name = 'Nata Sholl'
RETURNING *;

UPDATE employee
SET id = 52,
    name = 'Said Esen',
    email = 'esen@said. com'
WHERE birthday = '1952-01-03'
RETURNING *;

UPDATE employee
SET id = 53,
    name = 'Kerim Gün',
    birthday = '1952-01-03'
WHERE email = 'clewise@nymag.com'
RETURNING *;

UPDATE employee
SET id = 54,
    name = 'Ömer Taha Akbaş',
    birthday = '1998-12-27',
    email = 'omer@taha.com'
WHERE name = 'Delly Boycott'
RETURNING *;

-- DELETES
DELETE FROM employee
WHERE name = 'Ömer Taha Akbaş'
RETURNING *;

DELETE FROM employee
WHERE id = 53
RETURNING *;

DELETE FROM employee
WHERE email = 'mafugo@gmail.com'
RETURNING *;

DELETE FROM employee
WHERE name LIKE 'Said E%'
RETURNING *;

DELETE FROM employee
WHERE birthday = '1974-05-06'
RETURNING *;