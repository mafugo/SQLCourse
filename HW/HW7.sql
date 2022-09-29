-- Merhabalar,
-- 
-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.
-- 
-- 1. film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
-- 2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
-- 3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
-- 4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
-- 
-- Kolay Gelsin.

SELECT rating, COUNT(*) FROM film
GROUP BY rating;
--"R"	195
--"NC-17"	210
--"G"	178
--"PG"	194
--"PG-13"	223

SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;
-- 13.99	55
-- 20.99	57
-- 27.99	53
-- 29.99	53
-- 12.99	55
-- 14.99	51
-- 22.99	55
-- 21.99	55

SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;
-- 1	326
-- 2	273

SELECT country_id, COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;
--44	60