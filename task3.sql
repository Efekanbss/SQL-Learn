--1country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
SELECT*FROM country
WHERE country LIKE 'A%a';

--2country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
SELECT*FROM country
WHERE LENGTH(country)>=6 AND country LIKE '%n'
ORDER BY country;
--3film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
SELECT * FROM film 
WHERE LOWER(title) LIKE '%t%t%t%t%'
ORDER BY title;
--4film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.
SELECT*FROM film
WHERE title LIKE 'C%' AND length(title)>90 AND rental_rate =2.99 ;

