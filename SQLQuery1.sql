--Veritabaný nelerden oluþur?
-- -Tablolar, kolonlar, satýrlar, indexler
--Ýndexler verinin daha hýzlý çekilebilmesi için sýralý tutulan yapýlardýr.
--Veritabaný sunucu bir yazýlýmcýr, donaným deðildir. Network üzerinde bir porttan sistemi dinler ve gelen komutlara göre istenilen veriyi gönderirir.
--Bir veritabaný sunucusu sadece SQL komutlarý ile çalýþýr.
--Veritabanýndan sadece veriyi çekmeyiz, veriyi deðiþtirebiliriz de.

--RDMS(Ýliþkisel Veritabaný): tekrar eden verileri tekilleþtirmek amacý ile yapýlandýrýlan veritabaný sistemi.

--1.Veritabaný nedir? *Yapýlandýrýlmýþ bilgi veya verilerin depolandýðý alandýr*
--2.Veritabaný yönetim sistemi nedir? *Verilerin güvenilir, hýzlý ve kolayca eriþilmesini saðlayan bir yazýlýmdýr*
--3.Veritabaný sunucusu nedir? *Veritabaný yönetim sistemi tarafýndan veritabanýný çalýþtýrmak için kullanýlandonaným ve yazýlýmdýr*
--4.Client-Server mimarisi nasýl çalýþýr? *Ýstemci bilgisayar aðý üzerinden sunucuya bir veri talebi gönderir, sunucu istemcinin istediði iþlemi kabul eder ve istenen veri paketlerini istemciye geri gönderir*
--5.Ýliþkisel veritabaný nedir? *Verinin tekrara düþmemesi için tekilleþtirme ile yapýlandýrýlan veritabaný sistemidir.
--6.SQLserver 2017 sürümleri nelerdir?
--7.SQL server 2017 nasýl kurulur?

--Tabloda sayýsal deðerler için integer int
--Tarih deðerleri için date
--Tarih ve zaman deðerleri için datetime
--Text ifadeler içinse varchar kullanmalýyýz.
--Primary key: Bir tabloda tekrar etmeyen alan demek.

--DATA MANÝPÜLASYON KOMUTLARI: datayý çeken datayý deðþtiren komutlar.
--Select: Veritabanýndan kayýtlarý çeker.
--Update: Bir tablodaki kaydýn bir ya da daha fazla alanýný günceller, deðiþtirir.
--Delete: Bir tablodan kayýt siler.
--Insert into: Tabloya yeni kayýt ekler.
--Truncate table: Tablonun içini boþaltýr. tabloyu ilk oluþturulduðu zamana dönüþtürür tamamen boþaltýr.

--VERÝTABANI MANÝPÜLASYON KOMUTLARI: Veri tabaný objelerini deðiþtirmeyi silmeye yarayan komutlar.
--Create Database: Yeni veri tabaný oluþturur.
--Alter Database: Bir veritabanýnýn özelliklerini deðiþtirir.
--Create Table: Yeni bir tablo oluþturur.
--Alter Table: Bir tablonun özelliklerini deðþtirir.
--Drop Table: Bir tabloyu tamamen siler.
--Create Index: Ýndex oluþturur.
--Drop Index: Ýndexi siler.

--Select komutuyla çaðýrýrken eðer bizim verilerin içinde bulunduðu database seçili deðilse çalýþmaz.
--Seçtikten sonra CTRL+E yaparak çalýþtýrabilirsin.

SELECT
ID, Customer, City, District, Gender
FROM
"UDEMY-SQL".DBO.late_customer

--Insert Komutu:

INSERT INTO
late_customer
([Customer], [City], [District], [Birthdate], [Gender])
VALUES
('BURAK EFE', 'ÝZMÝR', 'çÝÐLÝ', '1999-08-26', 'M')

--Birden fazla eklememiz gereken kiþi olursa 100 veya 1000 adet excelden, databasedeki tablodaki satýr sütun ile exceldeki sýralama ayný olmalýdýr.
--Otomatik tekrarlamayan primary key alan varsa bu alan çýkarýlmalýdýr.
--Tablo üzerinde edit top 200 rows diyerek listeyi açtýktan sonra sað üstte bulunan SQL butonuna týkla.
--Primary key olan ID kýsmýný ve top 200 kýsmýný sil.

SELECT
[ID], [Customer], [City], [District], [Birthdate], [Gender]
FROM
dbo.late_customer  --þu anda yaklaþýk 1000 adet veriyi eklemiþ olduk :)

--Diðer bir ekleme yöntemi ise insert komutu kullanarak eklemek.
--Excelin formülünde string ifadeleri ayýrt etmek için çift týrnak " " kullanýrýz. SQL'de ise stringler tek týrnak ' ile ifade edilir.
--="INSERT INTO CUSTOMER (CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER) VALUES('"&A2&"','"&B2&"','"&D2&"','"&C2&"','"&E2&"')"

TRUNCATE TABLE late_customer

INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Volkan ÇEKÝP','Bartýn','Kurucaþile','1997-10-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serhat GÜNDOÐAN','Rize','Pazar / Rize','1966-02-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Irmak TAHSÝNOÐLU','Erzincan','Çayýrlý','1940-06-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yaþar SAVURGAN','Isparta','Gelendost','1991-08-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi ELYÝÐÝT','Giresun','Çanakçý','1953-09-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Akif POLAST','Bitlis','Mutki','1992-12-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salih FAYDALI','Ordu','Çatalpýnar','1996-08-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Münevver AYAOKU','Artvin','Artvin Merkez','1954-04-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammet KUZUCUOÐLU','Aydýn','Germencik','1989-07-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazlýcan ÖZSÝMÝTÇÝ','Þanlýurfa','Viranþehir','1951-12-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arya UNLUMAMULERÝ','Samsun','Terme','1957-03-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Döne GURBETOÐLU','Kütahya','Emet','1986-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan SELÝM','Samsun','Ladik','1993-01-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Soner ÜLGEN','Elazýð','Alacakaya','1940-12-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çetin BÖRKLÜ','Eskiþehir','Çifteler','1946-09-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ezgi ÝBUKÜRTÜNCÜ','Çanakkale','Gökçeada','1985-02-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hazal ÜREGÝL','Tunceli','Tunceli Merkez','1999-10-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aykut SUYUR','Rize','Rize Merkez','1964-05-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur KIRIT','Kýrýkkale','Balýþeyh','1972-02-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Songül TÜKEZÝM','Burdur','Burdur Merkez','1983-01-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berkay PÝRÝNÇAL','Sivas','Akýncýlar','1963-08-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Anýl GÜLDÜ','Antalya','Gündoðmuþ','1941-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Pýnar SAN.TÝC.A.Þ.','Çorum','Oðuzlar','1986-12-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sami ÖKÇE','Diyarbakýr','Bismil','1993-04-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer AÐAÇKESEN','Adana','Feke','1950-04-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nimet HAYDARV','Isparta','Gelendost','1963-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mina KALO','Kars','Susuz','1987-04-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Müzeyyen KATLAN','Muðla','Bodrum','1983-04-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Miraç ÖZYÖNÜM','Mardin','Mardin Merkez','1975-04-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mina MÝKYAZ','Ankara','Etimesgut','1981-05-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erkan KIROGLU','Hatay','Payas','1975-04-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rojin AKSÖZ','Bartýn','Bartýn Merkez','1948-11-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fikret DENÝZALP','Ýstanbul','Ümraniye','1995-03-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifnur KURUCU','Nevþehir','Avanos','1979-02-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammet Ali REK.TAN.ORG.HÝZ.SAN.TÝC.LTD.ÞTÝ.','Sakarya','Taraklý','1978-11-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sare ÝLÝÞ','Karaman','Ayrancý','1996-04-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tülin GÖKSUN','Isparta','Gelendost','1972-09-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi NURALAN','Kýrýkkale','Çelebi','1947-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif naz DABANLIOÐLU','Nevþehir','Derinkuyu','1966-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdurrahman GÜNEÞDOÐDU','Sivas','Yýldýzeli','1982-08-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer AYDOÐMUÞ','Manisa','Saruhanlý','1974-06-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazlý ÖRNEK','Rize','Derepazarý','1949-08-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serdar ÞAPÇI','Erzurum','Þenkaya','1961-02-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali ÝNCECÝK','Samsun','Atakum','1949-10-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayþe ABDELKADER','Trabzon','Tonya','1996-11-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rýza ERTURGUT','Kahramanmaraþ','Türkoðlu','1991-08-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fikret ÞÝRAY','Ýzmir','Kiraz','1981-03-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeki BÝRÝCÝKLÝOÐLU','Kütahya','Gediz','1995-01-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hüseyin VOLKAN','Ýstanbul','Esenler','1958-08-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çiðdem KARADAYI','Van','Gevaþ','1970-09-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erol SANHAL','Bilecik','Osmaneli','1957-09-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azat AYNAOÐLU','Malatya','Malatya Merkez','1978-10-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenaz TASDEMIR','Þýrnak','Beytüþþebap','1944-10-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen AKKOR','Zonguldak','Çaycuma','1950-06-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülsüm BÝKEÇ','Adana','Seyhan','1970-07-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamdi KÖKBULAK','Osmaniye','Kadirli','1946-09-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emin TÝC.ATEÞELÝÐÝ','Rize','Fýndýklý','1965-11-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda AKÇAN','Sakarya','Geyve','1964-05-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat ÞERALI','Muþ','Hasköy','1943-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Irmak HAMÝDÝ','Balýkesir','Manyas','1973-11-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri KARÝMAN','Ardahan','Damal','1952-05-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuðçe AKKOÇ','Isparta','Þarkikaraaðaç','1958-06-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Necdet ERÇAM','Bayburt','Bayburt Merkez','1986-05-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ahmet ÝNCÝKAPI','Muðla','Fethiye','1991-05-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arif TEMELOÐLU','Kütahya','Hisarcýk','1967-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif ÖZÇELÝKBAÞ','Hatay','Hatay Merkez','1993-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali Eymen DEVE','Ordu','Çaybaþý','1985-01-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Ali ABDULLAH','Çankýrý','Kurþunlu','1987-05-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazife DEVE','Sakarya','Sapanca','1967-10-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cuma KAZIKLI','Muðla','Dalaman','1971-03-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýhsan HAVAS','Hatay','Hassa','1955-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan DOKUYUCU','Ardahan','Posof','1993-01-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selim ÖZBAY','Sivas','Altýnyayla / Sivas','1992-10-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasin AÐAGÜL','Balýkesir','Bigadiç','1979-10-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Emir SERÇE','Manisa','Saruhanlý','1997-08-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ömer Faruk KOCANOÐLU','Malatya','Malatya Merkez','1952-08-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özcan KÜÇÜKÝRAVUL','Amasya','Amasya Merkez','1971-10-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gökçe FERAK','Aksaray','Aðaçören','1952-06-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazmiye TÜRKSARI','Siirt','Tillo','1964-07-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz SAHAN','Ýzmir','Ödemiþ','1975-10-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eren CANLI','Þanlýurfa','Siverek','1970-01-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kübra SUNGURLU','Burdur','Yeþilova','1985-02-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur EYYÜBOÐLU','Erzincan','Refahiye','1945-09-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mete MADENÜS','Ýzmir','Torbalý','1972-01-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Emin SARIGÖL','Ýstanbul','Kaðýthane','1985-06-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet BARIÞÇAKIR','Sivas','Ýmranlý','1996-08-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Habibe BABAN','Kars','Kaðýzman','1948-01-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz KAHVECÝLER','Samsun','Terme','1973-02-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Pakize BAÞARA','Siirt','Siirt Merkez','1959-10-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Savaþ NEYAL','Kahramanmaraþ','Dulkadiroðlu','1963-07-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bülent KAÇAROÐLU','Manisa','Turgutlu','1995-01-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Helin TERKES','Rize','Fýndýklý','1975-12-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zekiye HATAY','Balýkesir','Susurluk','1989-04-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arya KÝSE','Nevþehir','Kozaklý','1994-05-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nimet ÇITIRAK','Konya','Karapýnar','1964-08-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela nur SEREK','Kýrýkkale','Kýrýkkale Merkez','1994-01-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan ÖZÇÝL','Kütahya','Pazarlar','1963-11-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azad ÖNÜR','Adana','Karataþ','1989-03-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude KAMURAN','Van','Ýpekyolu','1967-12-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özkan DERÝLÝOÐLU','Kütahya','Altýntaþ','1996-06-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can DOLAR','Aksaray','Aðaçören','1986-05-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Haydar DEMÝRKAPI','Yozgat','Sorgun','1944-09-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur DUYSAK','Ýzmir','Bayraklý','1974-11-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naciye ÝNAT','Ýzmir','Foça','1946-05-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Canan KÖKSALICI','Hatay','Hassa','1976-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Baran SALPAL','Antalya','Manavgat','1965-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azra TÜTNCÜ','Denizli','Pamukkale','1977-01-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira TÜTER','Kars','Susuz','1967-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Barýþ ÖZÇAÐLI','Erzurum','Palandöken','1956-10-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýsa BÖLÜK','Ordu','Perþembe','1976-08-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ada VAPUR','Rize','Derepazarý','1949-01-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naciye ALNIAÇIK','Siirt','Kurtalan','1963-05-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül ADACAN','Malatya','Yazýhan','1944-06-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz S.T.Ý','Gaziantep','Karkamýþ','1977-02-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel ALSAN','Çanakkale','Çan','1972-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güler NURKAN','Rize','Hemþin','1987-03-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aslýhan DOLAY','Konya','Hadim','1957-01-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdurrahman ALTINGÖZ','Düzce','Gölyaka','1999-08-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Taner KARACASULU','Muþ','Hasköy','1986-12-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Leyla AYLANC','Aksaray','Eskil','1992-04-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Umut SAFALTIN','Antalya','Gazipaþa','1952-08-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazife MÝRZALI','Tokat','Baþçiftlik','1982-07-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Neslihan KARAKOSE','Eskiþehir','Han','1945-01-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay ÖZÐÜ','Hatay','Antakya','1940-10-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet EVGÝN','Zonguldak','Zonguldak Merkez','1947-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sami ALEMDAROÐLU','Ýstanbul','Avcýlar','1949-06-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah KARAAT','Bursa','Gemlik','1990-12-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birgül ALÝMÝNYUM','Trabzon','Sürmene','1979-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zahide BAÞSAKA','Bayburt','Demirözü','1972-09-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tansu KAFE','Malatya','Hekimhan','1941-05-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa TÜZÜN','Aydýn','Germencik','1988-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yaðýz BEÐENDÝ','Rize','Rize Merkez','1980-10-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan ISIÞ','Gaziantep','Nizip','1984-04-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rümeysa ÝNCEDAL','Ýstanbul','Beylikdüzü','1998-03-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mücahit KARÝP','Tunceli','Ovacýk / Tunceli','1980-06-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahattin SUKUSTURAN','Uþak','Sivaslý','1951-01-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Defne ENGÜZEL','Uþak','Sivaslý','1972-09-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Suat GÝRÝGN','Batman','Sason','1976-12-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri DÖJME','Samsun','Ladik','1981-05-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berna EFENDÝOGLU','Sakarya','Sapanca','1950-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Efe BÝRSAN','Yalova','Termal','1960-05-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Raziye ERGÜZER','Kahramanmaraþ','Onikiþubat','1971-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nihal KAYAR','Diyarbakýr','Çýnar','1951-10-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serap TATLIOÐLU','Uþak','Uþak Merkez','1953-07-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gamze ADAL','Aksaray','Ortaköy / Aksaray','1991-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özcan ELEKTÝRÝK','Ordu','Akkuþ','1960-02-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Ali ORUC','Ardahan','Ardahan Merkez','1996-10-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eymen PALABIYIK','Kýrklareli','Demirköy','1951-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif ada PLAKET','Yozgat','Sarýkaya','1970-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bayram ÝPEKÜS','Siirt','Þirvan','1969-06-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feride TAHÜT.SAN.TÝC.LTD','Kahramanmaraþ','Nurhak','1986-06-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat CÝLALITAÞ','Adýyaman','Sincik','1978-09-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ege KÖSTEKÇÝ','Sivas','Gölova','1988-07-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Vedat UGUR','Afyonkarahisar','Dazkýrý','1977-03-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Doruk ÖZTÜRKDEMÝR','Ýzmir','Kýnýk','1980-02-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena GÝRÝTLÝOÐLU','Yozgat','Þefaatli','1947-04-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerem OKTAY','Sivas','Ulaþ','1949-08-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gönül ATILANEVLAT','Ýstanbul','Adalar','1991-01-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurettin BÜYÜKAY','Denizli','Babadað','1981-07-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira ENGÝN','Karabük','Karabük Merkez','1994-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz BENDER','Hatay','Arsuz','1986-04-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can TAÞER','Ýstanbul','Bayrampaþa','1953-11-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muharrem GÖKMENOÐLU','Aydýn','Didim','1949-08-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adil KINALI','Konya','Derebucak','1995-04-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çaðla BEÐEN','Isparta','Yalvaç','1991-12-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ramazan DÝNÇKURT','Trabzon','Hayrat','1980-11-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer MURT','Yozgat','Yerköy','1997-06-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Necati DOÐUKAN','Burdur','Çeltikçi','1984-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zübeyde TATLICI','Kocaeli','Dilovasý','1951-07-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyzanur ARDAHAN','Kastamonu','Kastamonu Merkez','1947-03-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Saadet BALÝMRE','Ýstanbul','Beylikdüzü','1987-07-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asel BÜYÜKMUTLU','Antalya','Kemer / Antalya','1970-11-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Semra GÖÇMEZ','Tunceli','Pülümür','1975-08-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan KARADELÝ.','Iðdýr','Karakoyunlu','1997-03-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hediye SAGDIÇ','Gümüþhane','Kürtün','1958-05-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aslý GÜNE','Ýzmir','Beydað','1994-05-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýrfan KOCAÖZ','Tunceli','Pertek','1958-04-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat ÞENGEZKEN','Kýrklareli','Demirköy','1949-12-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melisa BAÐDAT','Trabzon','Çaykara','1994-05-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Batuhan KARAGÜNEY','Gaziantep','Oðuzeli','1999-01-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Metehan GÖÇEMEN','Artvin','Hopa','1990-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berkay ÇETE','Eskiþehir','Tepebaþý','1959-10-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kübra KURTULDU','Muðla','Bodrum','1972-06-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Doðan UZATMA','Aydýn','Kuyucak','1971-04-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erhan BÜYÜKTÜLÜ','Sinop','Sinop Merkez','1956-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Boran GÜRGAH,','Edirne','Keþan','1997-07-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Okan CAYIR','Van','Gevaþ','1986-04-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýsa BÖYÜKBIYIK','Kayseri','Felahiye','1989-06-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yunus Emre FEREK','Amasya','Amasya Merkez','1974-02-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ersin ÖZAKAR','Þanlýurfa','Karaköprü','1969-04-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurettin GAYRETLÝ','Denizli','Bekilli','1950-04-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Funda KARACA','Trabzon','Tonya','1960-08-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa AKTÝK','Trabzon','Maçka','1990-12-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sefa TAÞKANAT','Tokat','Reþadiye','1989-10-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bülent CENGÝZOÐLU','Siirt','Þirvan','1970-06-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisanur SARICAM','Adana','Saimbeyli','1950-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seval KODAL','Mersin','Toroslar','1970-05-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Savaþ TÜLLEK','Bolu','Mengen','1961-11-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güllü SALUR','Kütahya','Gediz','1998-01-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Oðuzhan KÖKAN','Ardahan','Damal','1941-07-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Furkan GÜNDOÐAR','Þýrnak','Þýrnak Merkez','1979-01-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aynur ERUZ','Konya','Ahýrlý','1954-10-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kezban TEM.MAD.SAN.TÝC.LTD','Adana','Sarýçam','1946-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeliz KÜÇÜKALP','Hatay','Dörtyol','1965-02-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aylin MAK.SAN.TÝC.LTD.ÞTÝ.','Kayseri','Hacýlar','1957-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan EYÝGÜN','Mardin','Dargeçit','1960-10-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Taha KUTLUDENÝZ','Batman','Beþiri','1961-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah ÇAKALOÐLU','Afyonkarahisar','Ýhsaniye','1979-11-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma UFAKLI','Samsun','43239','1946-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ömer Halis DÖÞEME','Þanlýurfa','Halfeti','1977-09-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan KARAMARLI','Kastamonu','Cide','1957-12-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kevser ELMAGÖZ','Elazýð','Elazýð Merkez','1996-06-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berivan AHMET','Siirt','Baykan','1956-05-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Duran DURUL','Yozgat','Çandýr','1964-07-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melahat KURS.','Bursa','Mustafakemalpaþa','1984-09-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemre MECÝT','Rize','Güneysu','1997-05-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kenan BACANAK','Hatay','Samandað','1997-10-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fýrat KILICARSLAN','Balýkesir','Burhaniye','1989-08-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilara UMURBEY','Ankara','Pursaklar','1963-02-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Türkan SUNAR','Diyarbakýr','Lice','1963-06-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kaan MERTSÖZ','Ankara','Evren','1985-02-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tolga TASCI','Malatya','Doðanþehir','1975-12-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülhan ALUÇ','Kastamonu','Ýnebolu','1970-09-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tugay KAYMAZEL','Ordu','Korgan','1946-07-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sümeyye BARA','Afyonkarahisar','Dazkýrý','1979-07-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rukiye ÜNGÖR','Denizli','Pamukkale','1956-07-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fadime CANÝKDERE','Antalya','Kemer / Antalya','1940-04-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur ÇEKMECELÝ','Çorum','Osmancýk','1991-01-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela nur MALZ.LTD.ST.','Þanlýurfa','Ceylanpýnar','1981-10-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ufuk SARIDEMÝR','Ýstanbul','Güngören','1982-05-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eylül GÜLÜ','Giresun','Doðankent','1969-08-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zahide KESERCAN','Sivas','Sivas Merkez','1993-05-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ersin EBÝÇOÐLU','Kýrklareli','Pehlivanköy','1948-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zahide GÖRÜR','Kütahya','Tavþanlý','1946-09-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yiðit ÖZDAL','Sivas','Yýldýzeli','1984-09-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çaðla SALONU','Adana','Yüreðir','1999-04-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Oðuz CÜRE','Mardin','Mazýdaðý','1973-02-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül BÝÞAR','Kýrþehir','Kaman','1955-05-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hümeyra OLÐUN','Gümüþhane','Þiran','1953-01-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdem BUÐDAYLI','Sivas','Altýnyayla / Sivas','1993-10-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Müzeyyen OCAKÇI','Kocaeli','Körfez','1972-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuðba BALKIR','Erzincan','Otlukbeli','1975-04-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sümeyye ALPAT','Giresun','Doðankent','1983-05-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Lina BÝRÝNCÝ','Ýstanbul','Beylikdüzü','1960-08-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gökhan UZDÝL','Sivas','Koyulhisar','1996-01-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülþah TUNÇÖZ','Ankara','Nallýhan','1964-04-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güler BEÞKAYA','Ankara','Pursaklar','1998-07-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerem TEMÝR','Malatya','Arapgir','1955-12-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güllü KARDAÞ','Balýkesir','Dursunbey','1963-07-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eren KIRBASOGLU','Konya','Akþehir','1998-08-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seher SAÝM','Afyonkarahisar','Evciler','1989-12-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ersin SEKMEN','Rize','Ýyidere','1975-10-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen SÜNBÜLOÐLU','Iðdýr','Iðdýr Merkez','1955-11-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur AZARIBABEREH','Konya','Güneysýnýr','1955-10-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sefa CANGAR','Tokat','Pazar / Tokat','1958-07-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Eymen AHLAT','Giresun','Eynesil','1966-11-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azad ERGÜNEÞ','Konya','Emirgazi','1990-07-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Durmuþ SOÐOÐULLARI','Eskiþehir','Ýnönü','1961-09-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sedef KÖSENÇIÐ','Sakarya','Geyve','1956-09-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Büþra BEZMEZ','Yalova','Armutlu','1999-06-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nihal ÝNÞ.SAN.TÝC.LTDÇÞTÝ.','Þanlýurfa','Siverek','1957-08-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasemin ÇINARSOY','Giresun','Eynesil','1957-02-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehtap ILGAR','Ýzmir','Kiraz','1983-10-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salim KATRAN','Sinop','Sinop Merkez','1990-06-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu BAYKARA','Erzincan','Erzincan Merkez','1950-09-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emine ERÝTÝR','Ankara','Çubuk','1950-05-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Emin TEKKAYA','Afyonkarahisar','Çobanlar','1984-04-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Münevver DÝCLE','Kýrýkkale','Sulakyurt','1988-01-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat ELGÜN','Rize','Kalkandere','1943-11-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zilan SARIARSLAN','Afyonkarahisar','Evciler','1984-05-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferhat BAÐDATLI','Çankýrý','Kýzýlýrmak','1951-03-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela nur BÝLÐÝN','Kýrklareli','Vize','1986-12-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güneþ ÇAÐLA','Erzurum','Pazaryolu','1953-09-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zehra KAHRÝMAN','Niðde','Altunhisar','1988-07-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma ÇOBANOÐLU','Samsun','Canik','1976-12-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Neslihan KILIÇÇEKER','Gaziantep','Nurdaðý','1982-10-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýzzet CANKURU','Isparta','Gönen / Isparta','1978-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýlknur KALKANCI','Artvin','Kemalpaþa / Artvin','1966-07-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülþah AKBUÐ','Konya','Meram','1999-02-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ecrin ÝN.TUR.OTO.LTD.','Artvin','Borçka','1984-10-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasemin DANAOÐLU','Bursa','Orhangazi','1956-04-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda KOCKANAT','Ankara','Pursaklar','1964-05-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferhat KASAROÐLU','Sakarya','Ferizli','1996-07-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Enver ÖZBEYLÝ','Karaman','Baþyayla','1989-02-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Döne SEFÝL','Konya','Emirgazi','1968-01-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ensar OPAK','Hatay','Yayladaðý','1997-08-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilara HACMALZEMELERÝ','Tokat','Reþadiye','1997-07-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özgür HAFIZOÐLU','Mersin','Yeniþehir / Mersin','1949-11-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan KOVULMAZ','Ýstanbul','Beþiktaþ','1995-10-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri GURLAÞ','Þanlýurfa','Haliliye','1940-10-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feride ÖZKANCA','Kütahya','Kütahya Merkez','1949-09-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Münevver TÜRÜCLÜ','Ankara','Evren','1996-07-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hüseyin OÇAN','Burdur','Karamanlý','1952-12-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azad KAYAR','Afyonkarahisar','Baþmakçý','1981-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seval ÖZKANLI','Edirne','Havsa','1995-07-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýlker KIRDAR','Malatya','Doðanþehir','1962-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Halil Ýbrahim BÝMBÝRDÝREK','Batman','Sason','1971-07-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Barýþ ERÝNÇ','Balýkesir','Edremit / Balýkesir','1972-03-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa CÝMEN','Hatay','Arsuz','1965-07-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz DOLAY','Denizli','Güney','1941-07-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan KANDAK','Samsun','Salýpazarý','1951-10-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eda TIC.LTD.STÝ','Ýstanbul','Büyükçekmece','1941-09-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þeyma SARICAN','Samsun','Bafra','1973-02-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ecrin MÜRSEL','Bilecik','Bilecik Merkez','1956-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer BÜYÜKLÜ','Bolu','Gerede','1968-09-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan ÇOPUROÐLU','Samsun','Havza','1999-09-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Müzeyyen GÜMÜÞTAÞ','Çorum','Laçin','1972-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz BÝLGET','Aydýn','Kuþadasý','1949-07-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülüzar DELÝVELÝ','Þanlýurfa','Akçakale','1965-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meral UZALA','Ýzmir','Çiðli','1957-12-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Eymen ÝCÝK','Þanlýurfa','Suruç','1968-05-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esma nur APÝLÝOÐULLARI','Denizli','Denizli Merkez','1991-11-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Haným GELEN','Ýstanbul','Sarýyer','1996-01-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hülya DAÞTAN','Þýrnak','Silopi','1989-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tunahan SURBÜL','Tokat','Almus','1999-05-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda ERMAN','Mardin','Mazýdaðý','1967-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan FERUH','Ordu','Kabataþ','1967-09-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile KAYIS','Kýrþehir','Akçakent','1963-11-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mevlüt ÞÝMSEKER','Bingöl','Genç','1949-11-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisanur AKKULAK','Kayseri','Sarýoðlan','1979-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cuma UCAR','Çankýrý','Ilgaz','1991-02-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ensar ELEK.MAK.SAN.TÝC.LTD.ÞTÝ','Ordu','Kumru','1956-07-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevim PAYCU','Aydýn','Nazilli','1979-05-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayten SUNGUNAY','Adýyaman','Çelikhan','1992-02-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdullah TEM.SAN.TÝC.LTD.ÞTÝ.','Erzincan','Otlukbeli','1949-06-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay DAVULCU','Ýzmir','Tire','1943-12-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yunus Emre KANDÝYA','Denizli','Pamukkale','1970-09-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hava MUZÝR','Afyonkarahisar','Þuhut','1959-07-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hafize ODABAÞIOÐLU','Kýrþehir','Kaman','1972-05-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdal ÇAPHAN','Ordu','Ünye','1984-03-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Ali ERZÝ','Çorum','Uðurludað','1996-03-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serdar ÇEMÇ','Çorum','Boðazkale','1951-07-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melek ÝTÝLBAY','Hatay','Erzin','1969-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýlker NASUHÝSAYDIN','Ankara','Haymana','1977-02-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif ada MAJÝDOV','Çanakkale','Eceabat','1941-01-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen MANTICI','Mersin','Tarsus','1945-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi UZUNBAYIR','Giresun','Doðankent','1968-11-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah ERTAL','Denizli','Buldan','1994-07-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira AÇLAN','Kýrþehir','Boztepe','1986-10-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Alperen OKHAN','Giresun','Þebinkarahisar','1967-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Efe TUNCTAN','Aydýn','Yenipazar / Aydýn','1964-04-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül KALIN','Gaziantep','Yavuzeli','1992-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Toprak UÇMAZ','Karabük','Ovacýk / Karabük','1942-12-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bünyamin TEKÝNSÝZ','Muðla','Marmaris','1948-01-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kumsal KÖMÜRLÜOÐLU','Artvin','Yusufeli','1997-10-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remziye ERAY','Erzurum','Olur','1967-01-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed BUGUR','Ýstanbul','Avcýlar','1949-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bünyamin ÇELÝKOK','Kastamonu','Ýhsangazi','1957-02-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdulkadir AÐZIKÜÇIK','Afyonkarahisar','Baþmakçý','1972-03-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nilüfer KOCABEY','Konya','Halkapýnar','1954-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elife TINGIDIK','Van','Van Merkez','1965-02-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Didem KOLÇAN','Ýzmir','Narlýdere','1958-09-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz OKÞAK','Samsun','Canik','1961-04-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eray ÞAHLAN','Sakarya','Serdivan','1998-05-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adnan UYAVER','Erzincan','Kemaliye','1945-11-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þenol ERZENOÐLU','Þanlýurfa','Birecik','1980-04-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melek SÜRÜCÜ','Rize','Çamlýhemþin','1998-10-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerem DENÝZER','Trabzon','Çaykara','1986-11-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salim ÇÝNÝOÐLU','Kayseri','Ýncesu','1990-05-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Döndü LORAS','Kocaeli','Baþiskele','1952-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kardelen DEMÝRCÝ','Samsun','Salýpazarý','1967-05-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mete MUTLUER','Sivas','Kangal','1942-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aykut ELÇÝOÐLU','Kars','Digor','1977-02-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þükran AYKIL','Konya','Çeltik','1994-02-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Büþra KARABENLÝ','Muðla','Datça','1996-08-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Buðlem ERBÝLEN','Bursa','Karacabey','1945-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esra MÜCDECÝ','Sivas','Doðanþar','1958-04-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Ali BOSTANOÐLU','Muðla','Fethiye','1980-06-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gözde SAPANCI','Aydýn','Karacasu','1951-06-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turan UZUNKAYA','Manisa','Selendi','1955-08-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceylan KELOÐLU','Aydýn','Nazilli','1988-12-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berk SACAR','Ýzmir','Selçuk','1973-09-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Doðan MEVSÝM','Kahramanmaraþ','Elbistan','1965-10-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif ÞAHÝNGÖZ','Kýrklareli','Lüleburgaz','1999-01-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayþe AZGIT','Uþak','Sivaslý','1973-09-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan SEZGÝN','Bursa','Büyükorhan','1952-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf ÝSFENDÝYAR','Burdur','Kemer / Burdur','1961-01-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nebahat TUNÇBEDEN','Kayseri','Melikgazi','1977-09-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülseren BALDIK','Kastamonu','Çatalzeytin','1946-05-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adem ÖNERSOY','Sinop','Boyabat','1959-10-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Masal ÝÞBECEREN','Erzincan','Çayýrlý','1945-07-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aslýhan ERDEN','Balýkesir','Ayvalýk','1948-03-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Alparslan DELÝÇAY','Rize','Pazar / Rize','1964-11-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma SÝNÝR','Kastamonu','Tosya','1996-11-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayþenur GENCAL','Kastamonu','Azdavay','1993-07-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meliha BABAHAN','Tunceli','Hozat','1992-06-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tarýk TÜLÜ','Çorum','Laçin','1974-11-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Döne GELBAL','Samsun','Bafra','1985-09-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedriye AZGIT','Elazýð','Baskil','1984-08-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Necati KÜLAHLI','Sivas','Yýldýzeli','1974-12-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erva TÜRKSOY','Erzincan','Ýliç','1970-01-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erva GÜRLEYÜK','Ordu','Çaybaþý','1982-01-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yunus DÝNCELÝR','Giresun','Piraziz','1957-04-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi UÇUK','Yalova','Yalova Merkez','1998-04-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Talha PAYCU','Kayseri','Felahiye','1981-01-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasin AKÇAKOCA','Isparta','Uluborlu','1959-10-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ramazan KEMÝKSÝZ','Hatay','Kýrýkhan','1941-01-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazlýcan BÝÇER','Çorum','Alaca','1940-03-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurten LTD.ÞT','Diyarbakýr','Sur','1969-11-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadir SARAÇOÐLU','Hatay','Samandað','1969-09-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülüzar TENGÝRLER','Ankara','Kalecik','1976-01-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berat TOLAK','Kocaeli','Derince','1945-03-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beren DÝZDAR','Manisa','Demirci','1970-07-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemal KILAVUZ','Adana','Yüreðir','1999-10-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeynep HAKOÐLU','Kars','Susuz','1968-11-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tolga ÞEYHOÐLU','Karabük','Eflani','1965-06-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemre ÖZAÐAÇ','Diyarbakýr','Hani','1945-11-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri KEKLÝK','Gaziantep','Nurdaðý','1946-08-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özcan ELVAN','Van','Bahçesaray','1963-11-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekrem SAÐDIK','Kocaeli','Derince','1976-11-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin ÇÝFTÇÝOÐLU','Burdur','Burdur Merkez','1996-09-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nehir UÐUÞ','Artvin','Hopa','1982-11-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan GENÇ','Sakarya','Kaynarca','1998-03-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat FÝRZEVÝÇ','Ankara','Pursaklar','1974-10-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asel GÜVENSÝN','Kýrýkkale','Yahþihan','1998-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Metehan TÜKEN','Yozgat','Akdaðmadeni','1968-03-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadir SIDAN','Trabzon','Dernekpazarý','1993-12-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay GÜMÜÞTEPE','Mersin','Toroslar','1973-10-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selahattin TAFLI','Tekirdað','Ergene','1947-11-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ömer KOSKA','Diyarbakýr','Hani','1956-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat GÜLBAÐ','Yozgat','Yozgat Merkez','1949-03-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat KLADYTH','Mersin','Toroslar','1961-07-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Emin ANNA','Tekirdað','Malkara','1958-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burhan ÇÝNKILINÇ','Denizli','Acýpayam','1962-04-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Narin BAYRI','Siirt','Siirt Merkez','1951-11-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevim KANNECÝ','Mersin','Yeniþehir / Mersin','1992-02-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali Osman ÖZELÇAM','Ýstanbul','Beykoz','1990-09-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nilüfer ASELÝM','Niðde','Ulukýþla','1944-03-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Irmak KILCIOÐLU','Diyarbakýr','Lice','1977-12-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tahir DELÝAGAOGLU','Kastamonu','Bozkurt / Kastamonu','1990-11-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aysima TOKTAY','Ankara','Beypazarý','1992-06-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Recep KÝLÝMCÝ','Antalya','Alanya','1980-12-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sibel KANPINAR','Konya','Kulu','1942-08-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan ERGÜVEN','Sivas','Gürün','1974-07-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri DEMÝRKAPU','Hatay','Kýrýkhan','1940-06-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan SAYGINER','Balýkesir','Altýeylül','1943-03-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali KIZILGÖK','Bursa','Yeniþehir / Bursa','1979-07-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meryem DÖKMECÝ','Bilecik','Bozüyük','1956-11-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birol ÝKÝZEK','Bolu','Mudurnu','1946-02-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þükrü SERTÇELÝK','Kilis','Elbeyli','1965-01-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebru KASAKOÐLU','Bitlis','Ahlat','1946-10-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çiðdem FÝDANOÐLU','Hatay','Hassa','1972-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esra ÖZAL','Düzce','Gümüþova','1967-04-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Metehan ÜÇOK','Trabzon','Beþikdüzü','1948-08-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Harun KARGUN','Giresun','Doðankent','1986-06-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can ÇAYCI','Niðde','Çiftlik','1986-02-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile RENKLÝGÝLLER','Ýstanbul','Fatih','1960-08-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tülin ATEÞSAL','Uþak','Karahallý','1997-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýrfan FAKOÐLU','Adýyaman','Gölbaþý / Adýyaman','1971-12-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selim KARAOÐLU','Karaman','Ayrancý','1963-12-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Medine NEMLÝ','Erzincan','Çayýrlý','1969-01-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekin BEÐENDÝ','Ankara','Haymana','1983-04-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur TEK.TES.ENR.PRO.DAN.SAN.TÝC.LTD.ÞTÝ','Manisa','Selendi','1985-05-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet SERBESOÐLU','Trabzon','Yomra','1943-02-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül HABERAL','Ýstanbul','Sultanbeyli','1965-05-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burcu COHA','Þanlýurfa','Akçakale','1995-09-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül SABUNLARI','Gaziantep','Þahinbey','1971-02-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebru DÝNCASLAN','Burdur','Altýnyayla / Burdur','1977-07-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çýnar SIRLI','Ýzmir','Dikili','1969-03-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Efe EKÝZLER','Hatay','Yayladaðý','1963-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birol KORKANKORKMAZ','Antalya','Serik','1967-02-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahattin CÝCAK','Samsun','Atakum','1996-07-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mahir AYGÖR','Kocaeli','Baþiskele','1966-02-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma DONAT','Kars','Digor','1945-11-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Pýnar PEKSERT','Konya','Karapýnar','1983-04-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Leyla EGÝNKAYA','Burdur','Altýnyayla / Burdur','1982-10-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aysel KALKMAZO','Antalya','Demre','1967-06-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekin KAYNAR','Isparta','Senirkent','1982-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeliha BADIL','Sivas','Suþehri','1971-11-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda KAYIM','Aksaray','Gülaðaç','1981-12-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz Selim ALÝCAN','Bursa','Mudanya','1940-04-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuðba MENTEÞE','Bilecik','Osmaneli','1992-11-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýkra PILAVCI','Hatay','Kumlu','1998-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sercan IGNELÝ','Ýzmir','Foça','1993-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Döndü DEKKEOÐLU','Amasya','Hamamözü','1996-03-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Havin TAÞANGÝL','Kocaeli','Baþiskele','1967-03-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berna HACIKERÝMOVA','Amasya','Suluova','1942-09-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kýymet UTKU','Tunceli','Nazýmiye','1972-02-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kezban TÜRETMÝÞ','Kayseri','Özvatan','1995-07-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Damla ABANAJ','Edirne','Uzunköprü','1963-12-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat KIRMIZIGÜL','Rize','Çamlýhemþin','1959-05-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fevzi AHMEDÝ','Trabzon','Dernekpazarý','1963-01-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Keziban OKSAK','Uþak','Ulubey / Uþak','1977-11-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet DEMÝRCÝLER','Afyonkarahisar','Ýhsaniye','1965-01-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Habibe ASMA','Düzce','Gümüþova','1995-02-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayfer CELEBÝ','Çankýrý','Eldivan','1986-05-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan SELMA','Van','Baþkale','1994-11-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hanife REKLAM','Ýstanbul','Güngören','1979-11-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rahime ALBAYNA','Ýstanbul','Pendik','1977-01-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Atakan SUSUZLU','Hatay','Erzin','1973-09-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Suat KUTBAY','Ardahan','Göle','1956-01-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Süleyman MOÐOLKANLI','Adana','Saimbeyli','1984-09-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin TÜÐLÜ','Ýstanbul','Ümraniye','1992-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Narin GOYMAT','Bingöl','Kiðý','1952-09-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eren ÞUTANRIKULU','Muðla','Dalaman','1990-02-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selçuk KÜÇÜKCEYLAN','Yalova','Altýnova','1983-11-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazlý TÜRKÝLERÝ','Ýstanbul','Tuzla','1940-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena BARUTÇU','Tunceli','Ovacýk / Tunceli','1942-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel SIRAY','Denizli','Serinhisar','1959-07-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel ABÝKE','Artvin','Arhavi','1954-07-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Suat TOKTAY','Kýrýkkale','Keskin','1992-09-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eray TOPAL','Ankara','Nallýhan','1942-03-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Volkan ÝÞÇÝGÝL','Hatay','Samandað','1965-01-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeþim GÖKÇÖL','Adana','Yumurtalýk','1961-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arif PALANCILAR','Sivas','Gürün','1960-08-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen ÝSFEN','Adana','Pozantý','1950-01-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mevlüt SOMUNCU','Denizli','Merkezefendi','1955-09-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sami TEMÝZÝÇ','Ordu','Korgan','1946-03-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýlker SENCAN','Rize','Hemþin','1981-09-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeter TORAGANLI','Balýkesir','Balya','1942-02-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali Osman KAPKIN','Antalya','Gazipaþa','1956-09-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arin USLUOÐLU','Erzurum','Yakutiye','1944-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eymen GÖKCEN','Hatay','Reyhanlý','1945-06-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hava TOPÇUHASANOÐLU','Ankara','Ayaþ','1995-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamide TÖRELÝ','Elazýð','Elazýð Merkez','1964-11-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed ERHAL','Samsun','Ayvacýk / Samsun','1992-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Neriman BÜYÜKTANIR','Konya','Kulu','1949-09-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gönül ÜRGÜP','Mersin','Mersin Merkez','1992-07-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Enes BEREÞ','Ardahan','Damal','1952-05-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Barýþ ÇÖKELE','Giresun','Dereli','1968-02-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin BEYAZ','Hakkari','Hakkari Merkez','1994-04-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rümeysa BÝRGÝLÝ','Çanakkale','Bayramiç','1961-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bayram KILIMBOZ','Hatay','Altýnözü','1967-08-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salih TURUÇALI','Elazýð','Karakoçan','1965-05-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Emin ÞEREMET','Yozgat','Çekerek','1951-05-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur AKSARAY','Adana','Çukurova','1979-10-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yaren UMAK','Konya','Seydiþehir','1957-09-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sýraç GÜLÇÝCEK','Bursa','Harmancýk','1965-07-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ezgi PEMBEÇÝÇEK','Denizli','Tavas','1973-04-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan ARDAHANLI','Muðla','Marmaris','1977-10-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Emir ALTINÖZ','Konya','Kadýnhaný','1984-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serhat TEMBÝH','Adýyaman','Adýyaman Merkez','1944-03-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Edanur DAÐÇOBANI','Kastamonu','Çatalzeytin','1973-09-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muammer TOPALOÐLU-','Manisa','Kula','1950-10-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þenol GÖZEN','Sakarya','Arifiye','1955-11-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Canan GÜROCAK','Manisa','Salihli','1975-05-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selim DEMÝRLENK','Erzurum','Narman','1974-05-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan PARÇA','Kastamonu','Doðanyurt','1994-08-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asiye ÇAÐLIOÐLU','Samsun','Çarþamba','1951-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þükriye DÝNCALTIN','Rize','Rize Merkez','1998-03-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebrar ALBAÞ','Burdur','Tefenni','1955-11-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þenay ÝBLAÐ','Samsun','Salýpazarý','1976-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Eymen MORGÜL','Çorum','Çorum Merkez','1983-09-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ercan SAMANCI','Denizli','Baklan','1990-04-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cansu AKBAÞ','Aydýn','Sultanhisar','1956-02-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuðba CÝHANER','Muðla','Menteþe','1960-01-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Okan ÖZKINACI','Þanlýurfa','Bozova','1984-12-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz NEVÝN','Tunceli','Pülümür','1961-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çýnar BÝTGEN','Ýstanbul','Ümraniye','1981-01-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Halil CIPIL','Van','Gevaþ','1967-09-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hediye SEVGÖZ','Çorum','Oðuzlar','1988-10-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Veysel MAÐAZA','Aydýn','Ýncirliova','1957-03-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurcan ÇELÝKBAÐ','Van','Van Merkez','1988-12-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meryem ÇAKMAN','Erzincan','Otlukbeli','1962-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Toprak ÝSTEKLÝ','Kýrþehir','Mucur','1957-04-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Savaþ ÞATANA','Mersin','Silifke','1959-08-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Merve DURKAYA','Denizli','Çivril','1998-05-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özlem ÖZKALFA','Muðla','Fethiye','1947-06-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tülay NURÝ','Karaman','Kazýmkarabekir','1989-01-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remziye GARGILI','Þanlýurfa','Ceylanpýnar','1995-10-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fýrat ÝRKÝN','Muðla','Marmaris','1989-05-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adil ANTALI','Giresun','Giresun Merkez','1971-07-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Devran GÜNDAÐ','Manisa','Ahmetli','1962-10-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur ÞÝÞEK','Antalya','Kemer / Antalya','1986-04-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin CATAL','Kayseri','Tomarza','1959-07-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Semanur AÇLAN','Iðdýr','Karakoyunlu','1946-06-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þerafettin KAMIÞ','Rize','Kalkandere','1940-07-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Faruk ERAKTAÞ','Malatya','Arapgir','1991-08-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hakký ÖZEK','Denizli','Pamukkale','1979-11-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan SERTKAYA','Ýzmir','Urla','1974-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emir BÜYÜKORAL','Hatay','Kýrýkhan','1989-07-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emircan ÞAHRA','Mersin','Toroslar','1967-08-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz PÝROÐLU','Kayseri','Ýncesu','1977-12-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül ÜLGEY','Tekirdað','Hayrabolu','1946-05-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ensar OLGAÇ','Sivas','Þarkýþla','1994-07-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamil SAMARAZ','Manisa','Sarýgöl','1968-01-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül TAMTELÜN','Çankýrý','Eldivan','1987-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Enes SÜZEN','Kastamonu','Küre','1940-10-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Pakize ÖRKÜÞ','Artvin','Murgul','1966-03-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Filiz SOMTAÞ','Çanakkale','Bayramiç','1952-01-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aylin AÐCAKAYA','Trabzon','Þalpazarý','1971-10-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rahime MUTLU','Tunceli','Hozat','1982-08-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azra ÖZÜBERK','Sivas','Þarkýþla','1990-12-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz ÞENEMRE','Kayseri','Pýnarbaþý / Kayseri','1998-10-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rýdvan ÖZTOPAL','Bursa','Orhaneli','1969-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yiðit KAYALAR','Karaman','Ayrancý','1969-07-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hava KURTAN','Erzincan','Üzümlü','1959-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sýla KONYALI','Samsun','Ladik','1952-10-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hatice TEKE','Isparta','Þarkikaraaðaç','1956-09-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat AYTEPE','Denizli','Acýpayam','1967-01-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamit TAVMA','Mersin','Silifke','1949-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tülin ÝBRYAMOV','Ankara','Pursaklar','1999-10-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye ODABAÞIOÐLU','Erzurum','Tekman','1990-01-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Doruk CALARGÜN','Sakarya','Serdivan','1972-08-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyzanur ÖZDEK','Diyarbakýr','Hani','1983-01-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin BAHTÝYAROÐLU','Yozgat','Yerköy','1986-03-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa SARIALÝOÐLU','Karabük','Yenice / Karabük','1982-02-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat NART','Þanlýurfa','Birecik','1942-07-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Doðukan KÜÇÜKEV','Sakarya','Kocaali','1993-02-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arda ÞENONAR','Edirne','Meriç','1950-04-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arif ÞÖLEN','Ardahan','Göle','1961-01-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferdi KOMPRASÖR)','Kilis','Kilis Merkez','1968-02-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Duru ÖZDÝL','Muðla','Bodrum','1955-12-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Ali BUZLU','Afyonkarahisar','Baþmakçý','1966-05-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Medine SAVAÞCIHABEÞ','Düzce','Yýðýlca','1969-11-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þeyda BARUK','Giresun','Çamoluk','1966-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ozan TOPAN','Çankýrý','Çerkeþ','1945-12-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýbrahim Halil ÝNÞ.EML.OTOMTV.TRZM.SAN.TÝC.LTD.ÞTÝ','Denizli','Acýpayam','1945-01-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýsa ÝNÞ.TAAH.NAK.LTD.ÞTÝ.','Burdur','Yeþilova','1961-04-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasin ÖZSOLAK','Diyarbakýr','Ergani','1956-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bahar KAÞAYICI','Antalya','Kepez','1966-08-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Derya AKGÜLLÜ','Kastamonu','Hanönü','1961-10-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi ÇOPRAK','Karabük','Eflani','1984-09-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan DOÐANKAYA','Düzce','Gölyaka','1977-08-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan KOÞUM','Karaman','Ayrancý','1981-01-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adil DERECÝK','Kýrklareli','Pehlivanköy','1950-06-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah TOPALAN','Adana','Ceyhan','1944-09-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eymen BERBERLER','Kýrþehir','Çiçekdaðý','1941-01-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela ALTINKAN','Kastamonu','Kastamonu Merkez','1970-06-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz DÜRGELGÝL','Ýzmir','Konak','1980-04-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyza nur ÇAKSUN','Bolu','Mudurnu','1954-08-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekin KÜRKOÐLU','Balýkesir','Manyas','1955-10-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur USAK','Adýyaman','Adýyaman Merkez','1995-03-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi GÖKÇAYIR','Tekirdað','Ergene','1990-07-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz ARALP','Isparta','Isparta Merkez','1969-07-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif su SOYLU','Tokat','Artova','1963-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hayrettin ÝLTAR','Adana','Tufanbeyli','1959-12-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serdar ÜÐÜTEN','Ankara','Çamlýdere','1985-09-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sinem SÜEL','Adýyaman','Sincik','1967-12-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bülent SEKRETER','Manisa','Köprübaþý / Manisa','1994-06-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Helin MERDÝNLÝ','Ordu','Perþembe','1958-07-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kumsal DURA','Gaziantep','Nurdaðý','1962-03-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tülin TAÞHAN','Denizli','Baklan','1974-10-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehtap HIDIROÐLU','Aðrý','Aðrý Merkez','1960-01-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sezer BORNOVALI','Trabzon','Sürmene','1980-06-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Saadet TÝMOÇÝN','Zonguldak','Kilimli','1980-03-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuana BEBEK','Ýstanbul','Sultanbeyli','1975-04-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kenan SÜSLÜ','Malatya','Yeþilyurt / Malatya','1975-12-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rumeysa MARA','Kýrklareli','Pehlivanköy','1997-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azra HASKARAMAN','Bolu','Göynük','1986-06-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ahmet EÐÝT','Niðde','Ulukýþla','1964-12-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aynur ÇARMIÞ','Mersin','Mersin Merkez','1968-09-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nilüfer KANDEMOÐLU','Þanlýurfa','Akçakale','1963-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eylül SÝERRA','Eskiþehir','Han','1961-05-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Savaþ GÜRÇOÐLU','Balýkesir','Kepsut','1974-06-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenaz ÇAMAÞIROÐLU','Ýstanbul','Esenyurt','1996-03-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevim RUHTEMÝZ','Osmaniye','Sumbas','1970-05-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kenan ÇADIRCI','Ýzmir','Çeþme','1982-09-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dursun ÝNÞ.TAH.TÝC.LTD.ÞTÝ.','Giresun','Tirebolu','1959-07-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülþen BEKDEMÝR','Kahramanmaraþ','Nurhak','1947-12-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Satý RIHTIM','Diyarbakýr','Dicle','1982-09-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdal ÞEFKATLÝ','Malatya','Yazýhan','1940-09-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feyza GÜNES','Ýstanbul','Ataþehir','1944-08-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur UYAROÐLU','Amasya','Göynücek','1961-10-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdoðan RENKTAÞ','Kilis','Kilis Merkez','1989-05-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Soner EZHER','Eskiþehir','Mihalýççýk','1961-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turgay BATAR','Yozgat','Yerköy','1972-02-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeþim KARABÖRKLÜ','Adana','Tufanbeyli','1982-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güllü NALÇACIOÐLU','Kastamonu','Seydiler','1959-10-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi ASTAM','Düzce','Gölyaka','1961-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güneþ UZERÇELÝK','Artvin','Kemalpaþa / Artvin','1993-02-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hatice kübra SELVÝ','Bolu','Gerede','1995-12-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdal ÜRÜNLÜ','Düzce','Çilimli','1966-06-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rojin DORUKÖZ','Manisa','Turgutlu','1985-07-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emircan ÖZTEL','Çanakkale','Ayvacýk / Çanakkale','1995-09-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýsa KASARCI','Osmaniye','Toprakkale','1948-06-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdi KAPTANOÐLU','Denizli','Denizli Merkez','1985-01-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hira ALTUNBAÞAK','Afyonkarahisar','Kýzýlören','1959-03-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz HASEKÝ','Malatya','Yeþilyurt / Malatya','1978-01-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Simge GENSÝ','Van','Gevaþ','1974-09-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Döndü SAKINMAZ','Uþak','Ulubey / Uþak','1952-05-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuðçe GÜNÝNÝ','Zonguldak','Ereðli / Zonguldak','1970-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Damla HASEKÝ','Iðdýr','Aralýk','1965-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammet Ali GÜLGÖR','Isparta','Aksu / Isparta','1953-12-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naciye SÝFÝL','Aydýn','Germencik','1974-09-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berfin ASIRALÝ','Kahramanmaraþ','Nurhak','1965-12-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Narin MERTKENGEL','Osmaniye','Kadirli','1988-12-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asel ÇÝDEM','Giresun','Keþap','1975-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz GÖNCÜ','Van','Çatak','1956-06-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude TANUÐUR','Eskiþehir','Mahmudiye','1985-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan ÖZKÜÇÜK','Aydýn','Karpuzlu','1996-12-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erva TACIM','Sakarya','Söðütlü','1954-11-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Buðlem LÝVGÖÇMEN','Bolu','Dörtdivan','1973-07-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hira nur VOYVODA','Trabzon','Beþikdüzü','1999-03-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selahattin CANAYDIN','Konya','Selçuklu','1981-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýlker TALHAOGLU','Ýstanbul','Sancaktepe','1985-07-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma zehra ÜNAÇAN','Yozgat','Çandýr','1942-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nevzat DOYRANLI','Ýzmir','Narlýdere','1972-01-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hatice MACUN','Bursa','Ýznik','1941-08-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Helin ÖZMEN','Adana','Ýmamoðlu','1967-07-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceren ÇALIÞKAN)','Ýstanbul','Maltepe','1997-12-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan SENCAR','Sinop','Türkeli','1953-03-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kevser KARAMAHMUT','Ordu','Ýkizce','1965-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel KIRMIZIYÜZ','Afyonkarahisar','Evciler','1954-01-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýzzet MANÇU','Konya','Güneysýnýr','1973-05-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hayrettin OGULTEKEN','Ankara','Akyurt','1989-08-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arya CEHRÝ','Kars','Arpaçay','1980-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Haným KULTAN','Afyonkarahisar','Dinar','1967-03-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile SÝDAT','Osmaniye','Kadirli','1968-04-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berkay KOÇAKOÐLU"','Trabzon','Köprübaþý / Trabzon','1954-01-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan BANGÝZ','Þýrnak','Uludere','1977-12-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Döndü AYBAÞ','Hakkari','Þemdinli','1971-05-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Songül ÖRGEN','Bingöl','Yedisu','1964-07-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda ACAROÐLU','Çankýrý','Çankýrý Merkez','1975-12-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çýnar TEK.MAK.LTD.ÞTÝ.','Amasya','Amasya Merkez','1983-06-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Medine GALERÝSÝ','Ýstanbul','Beykoz','1948-12-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seher EMEKTAR','Samsun','43239','1969-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda KANAN','Ankara','Çubuk','1978-08-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda HESAPÇIOÐLU','Kocaeli','Ýzmit','1946-08-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýkranur MÝÐRA','Yozgat','Akdaðmadeni','1981-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz BALK','Ýzmir','Bayýndýr','1983-11-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdulsamet EKBER','Yozgat','Çayýralan','1943-06-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude ÖZKAYA','Düzce','Yýðýlca','1977-08-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerim HASPAL','Rize','Çamlýhemþin','1970-10-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emin BUBA','Ýzmir','Kiraz','1968-03-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan DENÝZEL','Diyarbakýr','Diyarbakýr Merkez','1977-07-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Türkan EVÝRGEN','Rize','Güneysu','1951-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Osman CIRAK','Hatay','Hatay Merkez','1985-02-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf UFUK','Çorum','Uðurludað','1949-05-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rabia GÖKBEL','Çankýrý','Kýzýlýrmak','1987-06-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ömer SOFT','Afyonkarahisar','Kýzýlören','1941-07-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muharrem EMAR','Niðde','Niðde Merkez','1958-07-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif BAYRAK','Manisa','Selendi','1985-10-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bülent AKOÐLU','Erzurum','Erzurum Merkez','1997-11-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nermin DÜRER','Antalya','Manavgat','1990-04-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuba ÇEKEN','Ýstanbul','Ataþehir','1947-07-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kýymet ÝÞERÝ','Ýstanbul','Beþiktaþ','1963-12-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay HAMURPET','Sinop','Ayancýk','1967-08-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mert KARAKOZ','Tekirdað','Muratlý','1989-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda ÝNER','Edirne','Edirne Merkez','1954-04-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat SARIYILDIZ','Giresun','Piraziz','1959-04-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yýldýz ALKIN','Hatay','Samandað','1993-11-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan GÜRBÜZOÐLU','Muðla','Fethiye','1975-04-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýrem LÝVMERCAN','Edirne','Enez','1941-05-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þevval ARDIC','Çankýrý','Orta','1995-01-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Derin DÝBEN','Kahramanmaraþ','Nurhak','1991-11-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seher DEMÝRSOY','Antalya','Alanya','1944-02-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeter ATSAN','Elazýð','Elazýð Merkez','1987-02-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emir SEZÝK','Adana','Sarýçam','1975-01-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeki KUVVETLÝ','Ardahan','Ardahan Merkez','1972-12-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berivan ÇAKIRCI','Kýrklareli','Lüleburgaz','1965-03-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melih ÞAKALAK','Kastamonu','Tosya','1960-10-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma zehra KOVAFOÐLU','Muðla','Köyceðiz','1995-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Didem KAHRAMANTÜRK','Kýrþehir','Akçakent','1947-07-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hazal KARATAÞOÐLU','Tunceli','Mazgirt','1995-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meliha AKKULAK','Eskiþehir','Sarýcakaya','1950-01-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emre KATI','Bilecik','Pazaryeri','1948-03-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen BOZNA','Konya','Tuzlukçu','1991-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Eymen KÖSEM','Diyarbakýr','Diyarbakýr Merkez','1941-12-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nebahat ERÝÞTEN','Þýrnak','Cizre','1962-04-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Savaþ GÜNAYDI','Konya','Ilgýn','1970-10-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serhat HOSAN','Ordu','Kabadüz','1990-01-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemil DALGIN','Kocaeli','Gebze','1953-02-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berra BONCOOÐLU','Hakkari','Þemdinli','1943-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamit GÖZTOK','Konya','Karapýnar','1955-12-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur SELVÝTOP','Sivas','Ýmranlý','1998-08-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile BÜYÜKKURTUL','Karaman','Kazýmkarabekir','1942-07-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zübeyde ÝNAY','Yozgat','Þefaatli','1996-07-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Uður KOYUN','Kastamonu','Taþköprü','1954-11-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þevket ÖRGÜ','Denizli','Tavas','1986-12-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sinem DOÐULUGÝL','Manisa','Demirci','1988-06-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yýlmaz KÖKLÜ','Ýstanbul','Silivri','1982-08-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Damla KARTALOÐLU','Trabzon','Arsin','1992-11-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tahir DÜLGER','Balýkesir','Balýkesir Merkez','1966-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu KÜTRÜNCÜ','Kayseri','Sarýz','1964-02-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Talha GÜNEÞAN','Ankara','Mamak','1968-02-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Alperen KAÇAÐAN','Zonguldak','Alaplý','1983-04-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güneþ KOCABAÞ','Nevþehir','Hacýbektaþ','1971-11-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa KARATOP','Aydýn','Karpuzlu','1952-08-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabriye BERKANTÖZGEN','Karabük','Safranbolu','1999-07-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif su FURUNCUOÐLU','Konya','Beyþehir','1943-03-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan TOKTAÞ','Tokat','Almus','1961-10-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan KALPAKOÐLU','Sakarya','Pamukova','1965-11-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eray DEMÝRGÖZ','Manisa','Kula','1977-04-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sedat KORUR','Eskiþehir','Seyitgazi','1980-10-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay MADANOÐLU','Zonguldak','Devrek','1954-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan BALBAÞOÐLU','Çanakkale','Biga','1948-09-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülay ÇAÐLIATALAY','Sakarya','Ferizli','1988-02-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tülin AKTAÞDOÐAN','Isparta','Yalvaç','1962-04-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zafer KACAN','Sivas','Þarkýþla','1992-12-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Talha VORRÝA','Kýrklareli','Demirköy','1957-04-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferhat BÝLGÝSAYAR)','Ordu','Ulubey / Ordu','1966-07-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Buðlem TUÐLAN','Aðrý','Tutak','1946-04-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz PERDE','Samsun','Kavak','1954-03-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burak ERÐÝN','Giresun','Çanakçý','1979-06-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuðçe HEPGÜL','Ankara','Altýndað','1940-04-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cennet ÞAPAÐASIOÐLU','Erzurum','Oltu','1941-10-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Ali BOZTEPE','Diyarbakýr','Çermik','1983-07-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çiðdem SEVENCAN','Adana','Karataþ','1948-07-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fahrettin ARICAN','Kýrþehir','Çiçekdaðý','1964-10-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Semih SURETTÝ','Elazýð','Elazýð Merkez','1998-04-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa BEREN','Ordu','Aybastý','1945-03-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýbrahim SALÝHOGLU','Ýstanbul','Tuzla','1981-12-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rumeysa AKÇAKUYU','Bilecik','Bozüyük','1979-08-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ömer Halis AKÇIL','Þanlýurfa','Þanlýurfa Merkez','1940-11-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceylin CÝMENCAN','Erzincan','Kemaliye','1970-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz DAÐYARAN','Ardahan','Ardahan Merkez','1952-01-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ezgi ÖZBIYIK','Bilecik','Bilecik Merkez','1978-02-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sefa ÜRN.LTD.ÞTÝ','Kahramanmaraþ','Elbistan','1968-07-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nuri ÝÞBÝTÝR','Elazýð','Baskil','1973-11-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Resul ÖZABAY','Çanakkale','Ayvacýk / Çanakkale','1983-08-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eylül MÜH.ÝNÞ.TAAH.TURZ.SAN.TÝC','Konya','Güneysýnýr','1943-10-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nilgün DÖJME','Ankara','Elmadað','1949-05-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nuray TÜRKSARI','Giresun','Dereli','1941-04-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay REÞÝTÝ','Kastamonu','Aðlý','1988-05-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdem GÝOVANNÝ','Kastamonu','Ýhsangazi','1983-06-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nesrin ÞAHÝNLÝ','Bingöl','Bingöl Merkez','1981-03-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hafize KOCATEPE','Bingöl','Bingöl Merkez','1953-07-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ahmet ÖZTOKLU','Muðla','Kavaklýdere','1970-08-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feride SULUDERE','Afyonkarahisar','Dazkýrý','1957-08-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ömer Halis KÜÇÜKALEMDAR','Aðrý','Aðrý Merkez','1991-03-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Oktay IÞIKTAN','Ordu','Çaybaþý','1998-10-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arin BARIN','Afyonkarahisar','Ýscehisar','1942-03-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melike KENT','Karabük','Eskipazar','1969-11-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fýrat ERKAYA','Trabzon','Vakfýkebir','1958-11-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aziz ÖZBAYSAL','Sinop','Erfelek','1949-02-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azat ÇAÐMAN','Karaman','Ermenek','1982-06-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esma nur HANGÜN','Hatay','Altýnözü','1973-12-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beren TOPUZLU','Mersin','Gülnar','1944-10-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira ALPAGUT','Afyonkarahisar','Ýhsaniye','1952-07-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sema CEBÝÞLÝ','Ardahan','Hanak','1965-08-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan ÖÐREDEN','Tekirdað','Çorlu','1941-11-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aslýhan ENDÜS.SAN.TÝC.A.Þ.','Eskiþehir','Günyüzü','1971-01-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serkan ÖZTAÇ','Hatay','Hatay Merkez','1990-09-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu GÜLTEPE','Kastamonu','Tosya','1975-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdi ÖZGUR','Ýzmir','Kiraz','1957-02-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye KOKULU','Mardin','Kýzýltepe','1986-05-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özge TEKGÜL','Kütahya','Hisarcýk','1941-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Barýþ KOPAKÇI','Ýzmir','Torbalý','1989-03-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Oðuz ÇALGIN','Tokat','Niksar','1941-08-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Merve SALLIK','Erzurum','Oltu','1998-04-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asiye DADAÐLIO','Mersin','Akdeniz','1960-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülten DALÇIK','Edirne','Edirne Merkez','1948-07-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nuri TIRPANOÐLU','Manisa','Gölmarmara','1945-03-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bayram TARÇIN','Mersin','Anamur','1992-03-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þengül ALPDOÐAN','Aðrý','Patnos','1993-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yýldýz TÜRKARUH','Giresun','Güce','1950-09-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Harun ALÝM','Siirt','Tillo','1962-05-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Amine ÝÞSEVER','Mersin','Anamur','1948-10-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma KURTOGLU','Yozgat','Yozgat Merkez','1980-08-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer BÖBER','Konya','Derbent','1968-01-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Batuhan ÝNCEDAYI','Adana','Seyhan','1983-03-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þaban SILAY','Trabzon','Vakfýkebir','1956-09-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hülya TINAZ','Manisa','Saruhanlý','1940-07-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur DEDEKARGINOÐLU','Antalya','Döþemealtý','1980-07-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berra SARACOGLU','Kastamonu','Seydiler','1949-07-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hilal KENDÝRLÝ','Edirne','Meriç','1949-06-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asya ÖZGAZÝ','Erzurum','Hýnýs','1995-06-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Efe ÇIBIK','Samsun','Ladik','1980-02-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özgür ARSEVER','Konya','Doðanhisar','1941-03-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Makbule BAÞBÜLBÜL','Diyarbakýr','Çýnar','1974-08-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meryem KÖKTAÞOÐLU','Giresun','Giresun Merkez','1974-01-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceren ÖZÖZEN','Iðdýr','Karakoyunlu','1973-08-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ömer TÜRKAKIN','Manisa','Sarýgöl','1956-03-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hülya DEDE','Þýrnak','Silopi','1944-03-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyza TEKMEN','Manisa','Yunusemre','1989-05-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Enver KARAPINARLI','Aðrý','Patnos','1973-02-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan TREN','Yalova','Çiftlikköy','1963-09-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude PASÝNLÝ','Sakarya','Adapazarý','1958-10-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çýnar SUNMAZ','Manisa','Demirci','1979-01-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Güneþ AKSÝNER','Nevþehir','Derinkuyu','1991-04-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf ALIÞMAZ','Kýrþehir','Kaman','1999-03-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þerafettin KOMAÇAY','Eskiþehir','Mahmudiye','1974-08-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel KALTAKCI','Diyarbakýr','Çermik','1985-06-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ercan BÜR.','Isparta','Þarkikaraaðaç','1999-11-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýrem MAK.SAN.TÝC.LTD.ÞTÝ.','Konya','Doðanhisar','1997-03-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude naz KÖSTEKÇÝ','Kýrýkkale','Kýrýkkale Merkez','1994-06-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aliye ERYILDIZ','Bursa','Gemlik','1976-12-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aysima ÇETÝN','Çankýrý','Kýzýlýrmak','1981-08-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emine TOPGÜLER','Osmaniye','Sumbas','1943-12-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cansel GÜLLER','Gaziantep','Karkamýþ','1989-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burak EVRENSEL','Bingöl','Karlýova','1954-10-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Memet ELÝBAÞ','Ýstanbul','Kadýköy','1993-10-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat KOZGAR','Çanakkale','Çan','1959-01-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bülent AKÇASI','Artvin','Murgul','1985-07-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Harun ÖZPINAR','Denizli','Bekilli','1947-05-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adnan SÖZTUTAR','Kastamonu','Çatalzeytin','1950-11-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Buket BÜYÜKKAFES','Kýrklareli','Kýrklareli Merkez','1972-12-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz Selim DEMÝR','Muþ','Muþ Merkez','1970-04-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye AVGIN','Sinop','Saraydüzü','1991-05-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þeyma PAZ.','Þanlýurfa','Akçakale','1996-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeki PAMUKOGLU','Kýrþehir','Boztepe','1960-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye TERZÝOGLU','Kýrklareli','Lüleburgaz','1961-10-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýlker ANAS','Sakarya','Akyazý','1964-01-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi MOLLA','Konya','Emirgazi','1944-04-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu DURMAYAN','Afyonkarahisar','Ýhsaniye','1986-02-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Havva ÖZDAÞ','Ýstanbul','Esenler','1986-01-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Ali KIRICI','Manisa','Demirci','1940-01-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz IÞIN','Ordu','Altýnordu','1948-04-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz ERSEM','Hatay','Reyhanlý','1954-05-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ege ÖZATLAR','Burdur','Karamanlý','1975-02-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meltem ÞANSAL','Malatya','Pütürge','1981-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hasan BILDIRCIN','Trabzon','Hayrat','1999-08-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebubekir ATMACA','Diyarbakýr','Diyarbakýr Merkez','1950-11-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferdi SABANLI','Afyonkarahisar','Dazkýrý','1947-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nihal KELEÞOÐLU','Sinop','Sinop Merkez','1992-10-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayfer TOLUNBÜKE','Samsun','Atakum','1962-08-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ozan ENGÝ','Çorum','Ýskilip','1981-08-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esila ATTIM','Bursa','Yýldýrým','1945-03-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ramazan ÖZÜKARA','Amasya','Suluova','1974-06-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda ONUKER','Sivas','Ulaþ','1970-02-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin MAK.SAN.TÝC.LTD..ÞTÝ.','Erzurum','Pasinler','1991-02-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can DUYUM','Malatya','Doðanþehir','1956-08-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Enes ÇALGIN','Muðla','Ula','1943-02-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamit FÝGEN','Erzurum','Oltu','1942-06-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salih KÖKÞEN','Mardin','Dargeçit','1981-03-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Huriye BÜVET','Konya','Selçuklu','1947-07-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hümeyra KIRMAN','Van','Baþkale','1947-02-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naime ÇOKTAÞ','Aydýn','Kuyucak','1972-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birgül AÇAR','Kastamonu','Bozkurt / Kastamonu','1977-04-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fahrettin KÖSEOÐLU','Zonguldak','Devrek','1972-11-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kemal ÝNÞ.SAN.LTD.ÞTÝ','Aydýn','Karpuzlu','1984-09-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay SÝGORTAÇILIK','Tekirdað','Malkara','1972-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Recep GELÝNKAYA','Sivas','Sivas Merkez','1971-10-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özge ALATEPE','Hatay','Antakya','1958-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda VAHAPOÐLU','Þýrnak','Silopi','1984-08-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena ÇÝGDEM','Tokat','Yeþilyurt / Tokat','1980-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi ERCÝNS','Adýyaman','Gölbaþý / Adýyaman','1966-11-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadir SÜTÇÜ','Mardin','Yeþilli','1952-04-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rumeysa BULMAZ','Çankýrý','Atkaracalar','1957-12-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemal PAMUK','Bitlis','Mutki','1975-04-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hacer ELKATMIÞ','Hatay','Hatay Merkez','1955-08-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tarýk ERÝÞTEN','Balýkesir','Savaþtepe','1970-03-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Raziye KONAL','Bursa','Osmangazi','1967-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ege BÝLGEÇ','Kayseri','Tomarza','1981-10-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eylül DILEK','Samsun','Samsun Merkez','1947-02-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Duru GÜLÝSTAN','Mersin','Silifke','1990-01-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Öykü AKBEY','Denizli','Pamukkale','1959-01-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet CÝNE','Kars','Arpaçay','1976-12-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hayriye KARASU','Denizli','Sarayköy','1971-01-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kardelen KADIYORAN','Aksaray','Aðaçören','1976-03-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay TÝC.LTÞ.','Tekirdað','Marmaraereðlisi','1954-01-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali CENGÝARSLAN','Karabük','Eflani','1988-01-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sýla ERGAN','Diyarbakýr','Diyarbakýr Merkez','1967-01-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Türkan MAH.25.SOK.','Burdur','Çeltikçi','1993-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena ÇÝLESÝZ','Ýstanbul','Esenyurt','1963-10-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurten KÖSEN','Afyonkarahisar','Kýzýlören','1982-03-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turgay FÝLÝZMAN','Bingöl','Solhan','1972-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevgi DEDEMEN','Bursa','Ýznik','1998-12-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Didem TANTA','Balýkesir','Susurluk','1960-05-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Þükran OFLEZER','Bursa','Yýldýrým','1954-05-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fýrat ÇÝLENGER','Tokat','Artova','1967-12-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serkan OPRUKCU','Ankara','Bala','1963-09-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz Selim AYVAZOÐLU','Manisa','Saruhanlý','1986-06-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Özlem ÖZKOL','Sivas','Divriði','1988-02-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma ÖZOÐUL','Aydýn','Nazilli','1997-11-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sedanur MORALI','Erzincan','Kemah','1990-12-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Can ÖZGÖZLER','Manisa','Selendi','1967-02-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz HACIBEKÝROÐLU','Çanakkale','Çan','1972-11-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Eymen TERZÝBAÞ','Diyarbakýr','Çýnar','1998-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ercan ORBAY','Kütahya','Pazarlar','1994-09-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Halit BÜYÜKTERZÝ','Muþ','Malazgirt','1964-07-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur ÝLSEVEN','Çankýrý','Þabanözü','1988-10-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aslýhan BÝLALOGLU','Burdur','Karamanlý','1968-09-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beril DÝNÇTÜRK','Kütahya','Çavdarhisar','1985-06-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emircan EYÝLER','Ýzmir','Karaburun','1996-07-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Lütfiye BAKKALBAÞI','Samsun','Havza','1986-08-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuðba ÝNÞ.GID.TUR.SAN.TÝC.LTD.ÞTÝ','Van','Van Merkez','1994-07-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cuma TAÞ.SAN.TÝC.LTD.ÞTÝ.','Karaman','Ermenek','1940-10-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tahsin GÖNÜLDAÞ','Bilecik','Osmaneli','1978-09-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan BALEK','Çorum','Çorum Merkez','1992-07-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sare ÇAYKUÞ','Sakarya','Erenler','1961-10-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cem MAKAL','Konya','Cihanbeyli','1976-07-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan AKTAÞDOÐAN','Ordu','Gülyalý','1951-09-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zerda BÝNNEOÐLU','Malatya','Kale / Malatya','1983-06-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýlhan ALTINISIK','Van','Erciþ','1985-02-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Soner KUMBULOÐLU','Ýstanbul','Beylikdüzü','1941-03-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Makbule ÇORLU','Konya','Çumra','1975-05-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Efe BÝLDÝRCÝ','Gümüþhane','Torul','1983-12-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazmiye BALIBEYÝ','Ordu','Kumru','1995-03-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ýrfan SÝRKELÝ','Samsun','Yakakent','1999-09-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur ÝBRYAM','Osmaniye','Sumbas','1946-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Talha CANIKARA','Antalya','Gazipaþa','1995-12-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Çetin ÖZARABACI','Tokat','Almus','1990-02-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda BALATA','Bursa','Orhaneli','1951-10-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cafer UYARBAÞ','Muþ','Korkut','1998-08-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turgay GÜLSÜN','Zonguldak','Kilimli','1996-07-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Ali ONAZ','Afyonkarahisar','Hocalar','1992-12-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemil GÜRAL','Kýrýkkale','Çelebi','1991-05-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serpil ÇAKAOÐLU','Karabük','Safranbolu','1944-12-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melih KARAKAÞOÐLU','Erzurum','Tortum','1999-11-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yýlmaz TOKÐÖZ','Ýzmir','Balçova','1981-08-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur BODUROÐLU','Gümüþhane','Köse','1952-07-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aras KORKMAN','Isparta','Eðirdir','1950-07-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tayfun ÝNÞ.TAHH.SAN.TÝC.LTD.ÞTÝ','Bingöl','Yayladere','1992-10-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kevser EMAN','Malatya','Kale / Malatya','1992-03-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Caner ÖZTEL','Edirne','Ýpsala','1991-10-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turan AYSER','Malatya','Kale / Malatya','1992-02-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Furkan HAÞLAK','Adýyaman','Çelikhan','1987-08-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Evren KILIÇOÐLU','Artvin','Murgul','1959-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur SAÐ.HÝZ.','Elazýð','Karakoçan','1955-11-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda BOLAT','Ýzmir','Çeþme','1984-02-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cansu BOYLA','Elazýð','Aðýn','1970-09-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan SAYIT','Ankara','Þereflikoçhisar','1982-05-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceylin COÞÐUN','Konya','Emirgazi','1994-12-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Haným ÇAVDARCI','Düzce','Yýðýlca','1999-01-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülhan BÝRSAN','Kahramanmaraþ','Türkoðlu','1941-07-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Musa ALGUR','Þanlýurfa','Harran','1988-04-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gülþah ÞAHÝNLÝ','Aydýn','Sultanhisar','1983-10-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Veysel ELDEM','Mersin','Toroslar','1960-07-29 00:00:00.000','E')

--UPDATE KOMUTU:
UPDATE TABLOADI
SET COLUMN1=VALUE1, COLUMN2=VALUE2, COLUMN3=VALUE3

--Tabloya yaþ kategorisi eklemek istiyorum. Tables >> Design diyerek ekliyorum.
--Verimizde sadece doðum tarihleri bulunuyor yaþlarý direkt olarak verilmediði için NULL yazacak tabloda her bir verinin yaþý için.
--Bunu hesaplamak için update, datediff ve get date gibi fonksiyonlar kullanmamýz gerek.
--Datediff() iki tarih arasýnda zaman farký alýr. Yýl bazýnda, ay bazýnda gün bazýnda olmak üzere.
--Getdate() ise günümüzün tarihini belirtir.

select * from late_customer -- þu an age kýsmý null olarak geldi. 

update late_customer
set Age=DATEDIFF(YEAR,Birthdate,Getdate()) --Her bir kiþinin günümüzdeki yaþýný hesaplayacak.

--Her bir kiþinin yaþýný 1 arttýrmak istersek;
update late_customer
set age=Age+1

select * from late_customer

update late_customer
set age=Age-1 --bu haliyle yaþlarý 1 azalltýk

select * from late_customer

--DELETE KOMUTU:
--Bir tablodaki tüm kayýtlarý siler geri dönüþü olmaz.
--Bu örnek için elimizdeki veriyi kaybetmeyelim diye yedekleme yapacaðýz. 
--Bu yedeklemeyi de SELECT * INTO TABLOADIYEDEK FROM TABLOADI þeklinde yaparýz.

SELECT * INTO late_customer_yedek from late_customer --daha sonra tablo kýsmýný yenileyerek yedek tabloya ulaþabilirsin.

--Silme iþlemini yedek tablo üzerinden yapalým.
DELETE FROM late_customer_yedek
SELECT * FROM late_customer_yedek --þu an bu sorguyu çaðýrýnca boþ bir tablo geldi

--Dikkat etmek gereken bir durum var: tabloyu bir veri ekleyip tekrardan select * from late_customer_yedek dediðimiz zaman ID 1001'den baþlýyor.
SELECT * FROM late_customer_yedek
--Delete komutunda silinince otomoatik artan alan yani primary key silinen en son verinin numarasýndan devam ediyor.
--Tablonun tamamen boþalýp otomatik artan kýsmýn 1den baþlamasýný istiyorsak o zaman TRUNCATE komutu kullanmalýyýz.

TRUNCATE TABLE late_customer_yedek
SELECT * FROM late_customer_yedek --þu an gelen veri 1den baþlýyor. Öncesinde yedek tablosuna rastgele bir veri girmen gerekli!!!

--WHERE ÞARTLARI:
--Where komutu bir þarttýr. Bir koþul veririz, filtreleme gibi. Örn: Yaþý 20den büyük erkek çalýþanlar, ismi sadece Murat olanlar gibi.
SELECT * FROM TABLOADI
WHERE COLUMN1=VALUE1

--1den fazla where þartý kullanýlabilir. Örn: Yaþý 20den büyük istanbulda ikamet eden kadýn çalýþanlar gibi.

--WHERE ÞARTLARI
-- = Eþittir.
-- <> Eþit deðildir.
-- > Büyüktür.
-- < Küçüktür.
-- >= Büyüktür ya da eþittir.
-- <= Küçüktür ya da eþittir.
-- BETWEEN arasýndadýr.
-- LIKE Ýle baþlar, Ýle biter, Ýçerir
-- In içindedir.

--Ýsmi Soner Ülgen olan kullanýcýyý çekelim.

Select * from late_customer
where Customer='Soner Ülgen' --SQL olduðu için stringler tek týrnak ile ifade ediliyor.

select * from late_customer
where ID=21  --ID'si 21 olan kullanýcýyý getirdi.

select * from late_customer
where city='Ankara' --Ankara'da ikamet eden tüm kullanýcýlarý getirdi.

select * from late_customer
where Birthdate='1985-02-06' --Tarihi bu þekilde kullanmak yerine '19850206' þeklinde yazarsak kullanýlan dileden baðýmsýz sorgu çekebiliriz.

select * from late_customer
where Birthdate='19850206'

--Örn: Ýstanbul'un Tuzla hariç ilçelerini getirme
select * from late_customer
where City='Ýstanbul' AND District<>'Tuzla' --Tuzla hariç diðer tüm ilçelerde ikamet eden kullanýcýlarý getirdi. <> eþit deðildir.

--Örn: Yaþý 25 ile 55 arasýnda olan kullanýcýlarý getirme:
select * from late_customer
where Age BETWEEN '25' AND '55'

--Örn:Yaþý 1984-10-01 eþit ya da küçük olanlarý çaðýralým.
select * from late_customer
where Birthdate<='1984-10-01'  --<= küçük ya da eþit

--Like koþulu genelde stringlerde kullanýlýr. Genelde müþteri ürün aramalarýnda kullanýlýr.
--Örn: Ýsmi Onur olan kullanýcýyý getir.
select * from late_customer
where customer like 'Onur' --böyle bir sorgu gelmedi çünkü isim soisim olarak kullanýcýlar tanýmlanmýþ.

--Onur isminde kaç kullanýcýnýn olduðunu görmek için 'Onur%' yüzde iþaretini isimden sonra eklemeliyiz.
select * from late_customer
where Customer like 'Onur%' --4 adet Onur isminde kullanýcý geldi.

--Örn: Ýsminin içinde 'ince' geçenlere bakalým. Bunun için baþýna ve sonunda % iþareti koymalýyýz.
select * from late_customer
where Customer like '%ince%' --gelen sorguda incecik, incedal, dincelir, incedayý gibi kelimeler bulunuyor.

--% yüzde iþareti baþta olup isim aratmak istersek 'ile biter anlamýna gelir.
--ince ile biten isimler
select * from late_customer
where Customer like '&ince' --ince ile biten kelime yokmuþ. Direkt birinin soyadýndan deneyelim.

select * from late_customer
where Customer like '%incecik' --incecik ile biten 1 kiþi bulunuyormuþ


--Örn: Ýstanbul'un Tuzla ve Kadýköy ilçelerinde ikamet eden kullanýcýlarý getir.
select * from late_customer
where city='Ýstanbul' and District in ('Tuzla','Kadýköy')

--Örn: Ýstanbul'un Arnavutköy ve Halkalý ilçelerinde ikamet etmeyen kadýn kullanýcýlarý getir.
select * from late_customer
where City='Ýstanbul' and District not in ('Arnavutköy', 'Halkalý') and Gender='K'

--Önemli Not: Delete komutunu where þartýnýn içinde kullanarak tablonun hepsini silmeden istediðin kiþiyi silebilirsin.
--Örn: Tablodan 1. kiþiyi sil.
delete from late_customer
where ID=1
select * from late_customer --tablodan sadece ilk kullanýcý silindi.

--Örn: Ýsmi Serhat olan herkesi sil.
delete from late_customer
where Customer like 'Serhat%' --3 kiþi varmýþ. Like þartýný eklemezsen sonuç vermez çünkü Serhat isminde biri varsa sil diye komut veriyoruz.
select * from late_customer --Önce 1.kiþi volkaný çýkarmýþtýk 999 olmuþtu. Þimdi Serhat isminde 3 kiþi daha çýkardýk 996 oldu.

--Ayný þekilde Update þartý için de Where þartý kullanabiliriz.
--Örn: Gender kategorisini 'E' ve 'K' yerine 'Erkek' ve 'Kadýn' þeklinde güncelle.
--Öncelikle Tablo dizaynýnda varchar(1) yerine varchar(10) yap.

update late_customer
set Gender='Erkek' where Gender='E'

update late_customer
set Gender='Kadýn' where Gender='K'
select * from late_customer


--AND ve OR Operatörleri
--1den fazla koþulu ayný sorguda kullanmak için AND ve OR operatörlerine ihtiyaç duyarýz.
--Örn: Ýsmi Onur ile baþlayan ve þehri Ýstanbul olan kullanýcýlarý getir.
select * from late_customer
where Customer like 'Ali%' and City='Ýstanbul' --Sadece 1 kiþi varmýþ.

--Örn:Ýsmi Onur ile baþlayan veya Ankara'da yaþayan kullanýcýlarý çaðýr.
select * from late_customer
where Customer like 'Onur%' or City='Ankara' --Hem ismi Onur olanlarý hem de Ankara'da yaþayan herkesi getirdi.


--Distinct KOMUTU: Tekrar eden satýrlar için tek sorguda sonuç döndürür. 
--Örn: Bir tabloda 1 milyon kullanýcýnýn ismi Ömerse bunu teke düþürüp bize sonuç olarak gösterir.
select distinct Column1, Column2
from Tabloadý

--Örn: City kýsmýnda kaç çeþit þehir var ona bakalým.
select distinct City
from late_customer --bu þekilde 81 ili teker teker yazarak getirdi.


--Order By Komutu: Bir sýralama komutudur. Select ile çekilen datalarý hangi sýrada görmek istiyorsak o amaçla order by kullanýrýz.
--ASC A'dan Z'ye sýrala veya küçükten büyüðe sýrala demektir.
--DESC büyükten küçüðe sýrala demektir.
select column1, column2
from tabloadý
order by column1 asc, column2 desc

--Örn: Müþteri adýna göre sýralama yap.
select * from late_customer
order by Customer ASC --bu þekilde tüm müþteriler A'dan Z'ye sýraladý.

--Örn: Hem þehir hem de isme göre sýralama yap.
select * from late_customer
order by City, Customer ASC

--Sýralamayý kolon ismi yazmadan sadece kaçýncý kolona denk geliyorsa o þekilde rakamla da belirtebiliriz.
select * from late_customer
order by 3 ASC --bu þekilde ID ile baþlayýp 3.kolona denk gelen yani city'e göre sýralama yapar.


--TOP KOMUTU: Bir sette belli bir sayý kadar veya dönen datanýn belli bir yüzdesi kadar kayýt döndürmemizi saðlar.
select top n(sayý) column1, column2
from tabloadý
order by column1 asc, colmun2 desc

--Örn: Ýlk 5 kullancýyý getir.
select top 5 customer
from late_customer
order by Customer asc  --bu þekilde ilk 5 kullanýcýyý getirdi ve ben asc yazdýðým için alfabeye göre sýraladý.

--Örn: Ýstanbul'dan ilk 5 kullanýcýyý alfabeye göre sýralayýp getir.
select top 5 * from late_customer 
where city='Ýstanbul'
order by Customer asc --istanbuldan top 5 kullanýcý alfabeye göre sýralandý.

--Yüzdelik olarak göstermek istersek:
select top 50 percent * from late_customer 
where city='Ýstanbul'
order by Customer asc --istanbuldakilerin %50sini getirdi.

