--Veritaban� nelerden olu�ur?
-- -Tablolar, kolonlar, sat�rlar, indexler
--�ndexler verinin daha h�zl� �ekilebilmesi i�in s�ral� tutulan yap�lard�r.
--Veritaban� sunucu bir yaz�l�mc�r, donan�m de�ildir. Network �zerinde bir porttan sistemi dinler ve gelen komutlara g�re istenilen veriyi g�nderirir.
--Bir veritaban� sunucusu sadece SQL komutlar� ile �al���r.
--Veritaban�ndan sadece veriyi �ekmeyiz, veriyi de�i�tirebiliriz de.

--RDMS(�li�kisel Veritaban�): tekrar eden verileri tekille�tirmek amac� ile yap�land�r�lan veritaban� sistemi.

--1.Veritaban� nedir? *Yap�land�r�lm�� bilgi veya verilerin depoland��� aland�r*
--2.Veritaban� y�netim sistemi nedir? *Verilerin g�venilir, h�zl� ve kolayca eri�ilmesini sa�layan bir yaz�l�md�r*
--3.Veritaban� sunucusu nedir? *Veritaban� y�netim sistemi taraf�ndan veritaban�n� �al��t�rmak i�in kullan�landonan�m ve yaz�l�md�r*
--4.Client-Server mimarisi nas�l �al���r? *�stemci bilgisayar a�� �zerinden sunucuya bir veri talebi g�nderir, sunucu istemcinin istedi�i i�lemi kabul eder ve istenen veri paketlerini istemciye geri g�nderir*
--5.�li�kisel veritaban� nedir? *Verinin tekrara d��memesi i�in tekille�tirme ile yap�land�r�lan veritaban� sistemidir.
--6.SQLserver 2017 s�r�mleri nelerdir?
--7.SQL server 2017 nas�l kurulur?

--Tabloda say�sal de�erler i�in integer int
--Tarih de�erleri i�in date
--Tarih ve zaman de�erleri i�in datetime
--Text ifadeler i�inse varchar kullanmal�y�z.
--Primary key: Bir tabloda tekrar etmeyen alan demek.

--DATA MAN�P�LASYON KOMUTLARI: datay� �eken datay� de��tiren komutlar.
--Select: Veritaban�ndan kay�tlar� �eker.
--Update: Bir tablodaki kayd�n bir ya da daha fazla alan�n� g�nceller, de�i�tirir.
--Delete: Bir tablodan kay�t siler.
--Insert into: Tabloya yeni kay�t ekler.
--Truncate table: Tablonun i�ini bo�alt�r. tabloyu ilk olu�turuldu�u zamana d�n��t�r�r tamamen bo�alt�r.

--VER�TABANI MAN�P�LASYON KOMUTLARI: Veri taban� objelerini de�i�tirmeyi silmeye yarayan komutlar.
--Create Database: Yeni veri taban� olu�turur.
--Alter Database: Bir veritaban�n�n �zelliklerini de�i�tirir.
--Create Table: Yeni bir tablo olu�turur.
--Alter Table: Bir tablonun �zelliklerini de��tirir.
--Drop Table: Bir tabloyu tamamen siler.
--Create Index: �ndex olu�turur.
--Drop Index: �ndexi siler.

--Select komutuyla �a��r�rken e�er bizim verilerin i�inde bulundu�u database se�ili de�ilse �al��maz.
--Se�tikten sonra CTRL+E yaparak �al��t�rabilirsin.

SELECT
ID, Customer, City, District, Gender
FROM
"UDEMY-SQL".DBO.late_customer

--Insert Komutu:

INSERT INTO
late_customer
([Customer], [City], [District], [Birthdate], [Gender])
VALUES
('BURAK EFE', '�ZM�R', '���L�', '1999-08-26', 'M')

--Birden fazla eklememiz gereken ki�i olursa 100 veya 1000 adet excelden, databasedeki tablodaki sat�r s�tun ile exceldeki s�ralama ayn� olmal�d�r.
--Otomatik tekrarlamayan primary key alan varsa bu alan ��kar�lmal�d�r.
--Tablo �zerinde edit top 200 rows diyerek listeyi a�t�ktan sonra sa� �stte bulunan SQL butonuna t�kla.
--Primary key olan ID k�sm�n� ve top 200 k�sm�n� sil.

SELECT
[ID], [Customer], [City], [District], [Birthdate], [Gender]
FROM
dbo.late_customer  --�u anda yakla��k 1000 adet veriyi eklemi� olduk :)

--Di�er bir ekleme y�ntemi ise insert komutu kullanarak eklemek.
--Excelin form�l�nde string ifadeleri ay�rt etmek i�in �ift t�rnak " " kullan�r�z. SQL'de ise stringler tek t�rnak ' ile ifade edilir.
--="INSERT INTO CUSTOMER (CUSTOMERNAME,CITY,BIRTHDATE,DISTRICT,GENDER) VALUES('"&A2&"','"&B2&"','"&D2&"','"&C2&"','"&E2&"')"

TRUNCATE TABLE late_customer

INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Volkan �EK�P','Bart�n','Kuruca�ile','1997-10-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serhat G�NDO�AN','Rize','Pazar / Rize','1966-02-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Irmak TAHS�NO�LU','Erzincan','�ay�rl�','1940-06-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ya�ar SAVURGAN','Isparta','Gelendost','1991-08-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi ELY���T','Giresun','�anak��','1953-09-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Akif POLAST','Bitlis','Mutki','1992-12-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salih FAYDALI','Ordu','�atalp�nar','1996-08-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('M�nevver AYAOKU','Artvin','Artvin Merkez','1954-04-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammet KUZUCUO�LU','Ayd�n','Germencik','1989-07-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazl�can �ZS�M�T��','�anl�urfa','Viran�ehir','1951-12-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arya UNLUMAMULER�','Samsun','Terme','1957-03-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('D�ne GURBETO�LU','K�tahya','Emet','1986-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan SEL�M','Samsun','Ladik','1993-01-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Soner �LGEN','Elaz��','Alacakaya','1940-12-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�etin B�RKL�','Eski�ehir','�ifteler','1946-09-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ezgi �BUK�RT�NC�','�anakkale','G�k�eada','1985-02-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hazal �REG�L','Tunceli','Tunceli Merkez','1999-10-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aykut SUYUR','Rize','Rize Merkez','1964-05-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur KIRIT','K�r�kkale','Bal��eyh','1972-02-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Song�l T�KEZ�M','Burdur','Burdur Merkez','1983-01-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berkay P�R�N�AL','Sivas','Ak�nc�lar','1963-08-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('An�l G�LD�','Antalya','G�ndo�mu�','1941-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('P�nar SAN.T�C.A.�.','�orum','O�uzlar','1986-12-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sami �K�E','Diyarbak�r','Bismil','1993-04-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer A�A�KESEN','Adana','Feke','1950-04-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nimet HAYDARV','Isparta','Gelendost','1963-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mina KALO','Kars','Susuz','1987-04-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('M�zeyyen KATLAN','Mu�la','Bodrum','1983-04-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira� �ZY�N�M','Mardin','Mardin Merkez','1975-04-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mina M�KYAZ','Ankara','Etimesgut','1981-05-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erkan KIROGLU','Hatay','Payas','1975-04-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rojin AKS�Z','Bart�n','Bart�n Merkez','1948-11-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fikret DEN�ZALP','�stanbul','�mraniye','1995-03-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifnur KURUCU','Nev�ehir','Avanos','1979-02-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammet Ali REK.TAN.ORG.H�Z.SAN.T�C.LTD.�T�.','Sakarya','Tarakl�','1978-11-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sare �L��','Karaman','Ayranc�','1996-04-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�lin G�KSUN','Isparta','Gelendost','1972-09-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi NURALAN','K�r�kkale','�elebi','1947-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif naz DABANLIO�LU','Nev�ehir','Derinkuyu','1966-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdurrahman G�NE�DO�DU','Sivas','Y�ld�zeli','1982-08-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer AYDO�MU�','Manisa','Saruhanl�','1974-06-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazl� �RNEK','Rize','Derepazar�','1949-08-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serdar �AP�I','Erzurum','�enkaya','1961-02-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali �NCEC�K','Samsun','Atakum','1949-10-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ay�e ABDELKADER','Trabzon','Tonya','1996-11-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('R�za ERTURGUT','Kahramanmara�','T�rko�lu','1991-08-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fikret ��RAY','�zmir','Kiraz','1981-03-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeki B�R�C�KL�O�LU','K�tahya','Gediz','1995-01-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('H�seyin VOLKAN','�stanbul','Esenler','1958-08-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�i�dem KARADAYI','Van','Geva�','1970-09-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erol SANHAL','Bilecik','Osmaneli','1957-09-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azat AYNAO�LU','Malatya','Malatya Merkez','1978-10-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenaz TASDEMIR','��rnak','Beyt���ebap','1944-10-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen AKKOR','Zonguldak','�aycuma','1950-06-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ls�m B�KE�','Adana','Seyhan','1970-07-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamdi K�KBULAK','Osmaniye','Kadirli','1946-09-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emin T�C.ATE�EL���','Rize','F�nd�kl�','1965-11-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda AK�AN','Sakarya','Geyve','1964-05-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat �ERALI','Mu�','Hask�y','1943-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Irmak HAM�D�','Bal�kesir','Manyas','1973-11-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri KAR�MAN','Ardahan','Damal','1952-05-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tu��e AKKO�','Isparta','�arkikaraa�a�','1958-06-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Necdet ER�AM','Bayburt','Bayburt Merkez','1986-05-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ahmet �NC�KAPI','Mu�la','Fethiye','1991-05-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arif TEMELO�LU','K�tahya','Hisarc�k','1967-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif �Z�EL�KBA�','Hatay','Hatay Merkez','1993-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali Eymen DEVE','Ordu','�ayba��','1985-01-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Ali ABDULLAH','�ank�r�','Kur�unlu','1987-05-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazife DEVE','Sakarya','Sapanca','1967-10-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cuma KAZIKLI','Mu�la','Dalaman','1971-03-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�hsan HAVAS','Hatay','Hassa','1955-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan DOKUYUCU','Ardahan','Posof','1993-01-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selim �ZBAY','Sivas','Alt�nyayla / Sivas','1992-10-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasin A�AG�L','Bal�kesir','Bigadi�','1979-10-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Emir SER�E','Manisa','Saruhanl�','1997-08-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�mer Faruk KOCANO�LU','Malatya','Malatya Merkez','1952-08-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zcan K���K�RAVUL','Amasya','Amasya Merkez','1971-10-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�k�e FERAK','Aksaray','A�a��ren','1952-06-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazmiye T�RKSARI','Siirt','Tillo','1964-07-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz SAHAN','�zmir','�demi�','1975-10-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eren CANLI','�anl�urfa','Siverek','1970-01-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('K�bra SUNGURLU','Burdur','Ye�ilova','1985-02-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur EYY�BO�LU','Erzincan','Refahiye','1945-09-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mete MADEN�S','�zmir','Torbal�','1972-01-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Emin SARIG�L','�stanbul','Ka��thane','1985-06-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet BARI��AKIR','Sivas','�mranl�','1996-08-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Habibe BABAN','Kars','Ka��zman','1948-01-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz KAHVEC�LER','Samsun','Terme','1973-02-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Pakize BA�ARA','Siirt','Siirt Merkez','1959-10-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sava� NEYAL','Kahramanmara�','Dulkadiro�lu','1963-07-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B�lent KA�ARO�LU','Manisa','Turgutlu','1995-01-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Helin TERKES','Rize','F�nd�kl�','1975-12-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zekiye HATAY','Bal�kesir','Susurluk','1989-04-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arya K�SE','Nev�ehir','Kozakl�','1994-05-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nimet �ITIRAK','Konya','Karap�nar','1964-08-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela nur SEREK','K�r�kkale','K�r�kkale Merkez','1994-01-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan �Z��L','K�tahya','Pazarlar','1963-11-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azad �N�R','Adana','Karata�','1989-03-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude KAMURAN','Van','�pekyolu','1967-12-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zkan DER�L�O�LU','K�tahya','Alt�nta�','1996-06-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can DOLAR','Aksaray','A�a��ren','1986-05-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Haydar DEM�RKAPI','Yozgat','Sorgun','1944-09-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur DUYSAK','�zmir','Bayrakl�','1974-11-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naciye �NAT','�zmir','Fo�a','1946-05-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Canan K�KSALICI','Hatay','Hassa','1976-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Baran SALPAL','Antalya','Manavgat','1965-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azra T�TNC�','Denizli','Pamukkale','1977-01-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira T�TER','Kars','Susuz','1967-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bar�� �Z�A�LI','Erzurum','Paland�ken','1956-10-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�sa B�L�K','Ordu','Per�embe','1976-08-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ada VAPUR','Rize','Derepazar�','1949-01-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naciye ALNIA�IK','Siirt','Kurtalan','1963-05-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l ADACAN','Malatya','Yaz�han','1944-06-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz S.T.�','Gaziantep','Karkam��','1977-02-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel ALSAN','�anakkale','�an','1972-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ler NURKAN','Rize','Hem�in','1987-03-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asl�han DOLAY','Konya','Hadim','1957-01-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdurrahman ALTING�Z','D�zce','G�lyaka','1999-08-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Taner KARACASULU','Mu�','Hask�y','1986-12-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Leyla AYLANC','Aksaray','Eskil','1992-04-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Umut SAFALTIN','Antalya','Gazipa�a','1952-08-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazife M�RZALI','Tokat','Ba��iftlik','1982-07-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Neslihan KARAKOSE','Eski�ehir','Han','1945-01-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay �Z��','Hatay','Antakya','1940-10-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet EVG�N','Zonguldak','Zonguldak Merkez','1947-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sami ALEMDARO�LU','�stanbul','Avc�lar','1949-06-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah KARAAT','Bursa','Gemlik','1990-12-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birg�l AL�M�NYUM','Trabzon','S�rmene','1979-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zahide BA�SAKA','Bayburt','Demir�z�','1972-09-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tansu KAFE','Malatya','Hekimhan','1941-05-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa T�Z�N','Ayd�n','Germencik','1988-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ya��z BE�END�','Rize','Rize Merkez','1980-10-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan ISI�','Gaziantep','Nizip','1984-04-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('R�meysa �NCEDAL','�stanbul','Beylikd�z�','1998-03-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('M�cahit KAR�P','Tunceli','Ovac�k / Tunceli','1980-06-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahattin SUKUSTURAN','U�ak','Sivasl�','1951-01-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Defne ENG�ZEL','U�ak','Sivasl�','1972-09-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Suat G�R�GN','Batman','Sason','1976-12-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri D�JME','Samsun','Ladik','1981-05-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berna EFEND�OGLU','Sakarya','Sapanca','1950-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Efe B�RSAN','Yalova','Termal','1960-05-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Raziye ERG�ZER','Kahramanmara�','Oniki�ubat','1971-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nihal KAYAR','Diyarbak�r','��nar','1951-10-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serap TATLIO�LU','U�ak','U�ak Merkez','1953-07-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Gamze ADAL','Aksaray','Ortak�y / Aksaray','1991-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zcan ELEKT�R�K','Ordu','Akku�','1960-02-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Ali ORUC','Ardahan','Ardahan Merkez','1996-10-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eymen PALABIYIK','K�rklareli','Demirk�y','1951-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif ada PLAKET','Yozgat','Sar�kaya','1970-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bayram �PEK�S','Siirt','�irvan','1969-06-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feride TAH�T.SAN.T�C.LTD','Kahramanmara�','Nurhak','1986-06-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat C�LALITA�','Ad�yaman','Sincik','1978-09-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ege K�STEK��','Sivas','G�lova','1988-07-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Vedat UGUR','Afyonkarahisar','Dazk�r�','1977-03-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Doruk �ZT�RKDEM�R','�zmir','K�n�k','1980-02-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena G�R�TL�O�LU','Yozgat','�efaatli','1947-04-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerem OKTAY','Sivas','Ula�','1949-08-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�n�l ATILANEVLAT','�stanbul','Adalar','1991-01-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurettin B�Y�KAY','Denizli','Babada�','1981-07-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira ENG�N','Karab�k','Karab�k Merkez','1994-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz BENDER','Hatay','Arsuz','1986-04-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can TA�ER','�stanbul','Bayrampa�a','1953-11-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muharrem G�KMENO�LU','Ayd�n','Didim','1949-08-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adil KINALI','Konya','Derebucak','1995-04-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�a�la BE�EN','Isparta','Yalva�','1991-12-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ramazan D�N�KURT','Trabzon','Hayrat','1980-11-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer MURT','Yozgat','Yerk�y','1997-06-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Necati DO�UKAN','Burdur','�eltik�i','1984-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Z�beyde TATLICI','Kocaeli','Dilovas�','1951-07-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyzanur ARDAHAN','Kastamonu','Kastamonu Merkez','1947-03-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Saadet BAL�MRE','�stanbul','Beylikd�z�','1987-07-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asel B�Y�KMUTLU','Antalya','Kemer / Antalya','1970-11-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Semra G��MEZ','Tunceli','P�l�m�r','1975-08-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan KARADEL�.','I�d�r','Karakoyunlu','1997-03-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hediye SAGDI�','G�m��hane','K�rt�n','1958-05-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asl� G�NE','�zmir','Beyda�','1994-05-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�rfan KOCA�Z','Tunceli','Pertek','1958-04-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat �ENGEZKEN','K�rklareli','Demirk�y','1949-12-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melisa BA�DAT','Trabzon','�aykara','1994-05-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Batuhan KARAG�NEY','Gaziantep','O�uzeli','1999-01-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Metehan G��EMEN','Artvin','Hopa','1990-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berkay �ETE','Eski�ehir','Tepeba��','1959-10-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('K�bra KURTULDU','Mu�la','Bodrum','1972-06-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Do�an UZATMA','Ayd�n','Kuyucak','1971-04-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erhan B�Y�KT�L�','Sinop','Sinop Merkez','1956-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Boran G�RGAH,','Edirne','Ke�an','1997-07-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Okan CAYIR','Van','Geva�','1986-04-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�sa B�Y�KBIYIK','Kayseri','Felahiye','1989-06-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yunus Emre FEREK','Amasya','Amasya Merkez','1974-02-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ersin �ZAKAR','�anl�urfa','Karak�pr�','1969-04-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurettin GAYRETL�','Denizli','Bekilli','1950-04-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Funda KARACA','Trabzon','Tonya','1960-08-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa AKT�K','Trabzon','Ma�ka','1990-12-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sefa TA�KANAT','Tokat','Re�adiye','1989-10-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B�lent CENG�ZO�LU','Siirt','�irvan','1970-06-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisanur SARICAM','Adana','Saimbeyli','1950-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seval KODAL','Mersin','Toroslar','1970-05-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sava� T�LLEK','Bolu','Mengen','1961-11-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ll� SALUR','K�tahya','Gediz','1998-01-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('O�uzhan K�KAN','Ardahan','Damal','1941-07-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Furkan G�NDO�AR','��rnak','��rnak Merkez','1979-01-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aynur ERUZ','Konya','Ah�rl�','1954-10-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kezban TEM.MAD.SAN.T�C.LTD','Adana','Sar��am','1946-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeliz K���KALP','Hatay','D�rtyol','1965-02-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aylin MAK.SAN.T�C.LTD.�T�.','Kayseri','Hac�lar','1957-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan EY�G�N','Mardin','Darge�it','1960-10-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Taha KUTLUDEN�Z','Batman','Be�iri','1961-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah �AKALO�LU','Afyonkarahisar','�hsaniye','1979-11-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma UFAKLI','Samsun','43239','1946-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�mer Halis D��EME','�anl�urfa','Halfeti','1977-09-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan KARAMARLI','Kastamonu','Cide','1957-12-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kevser ELMAG�Z','Elaz��','Elaz�� Merkez','1996-06-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berivan AHMET','Siirt','Baykan','1956-05-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Duran DURUL','Yozgat','�and�r','1964-07-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melahat KURS.','Bursa','Mustafakemalpa�a','1984-09-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemre MEC�T','Rize','G�neysu','1997-05-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kenan BACANAK','Hatay','Samanda�','1997-10-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('F�rat KILICARSLAN','Bal�kesir','Burhaniye','1989-08-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilara UMURBEY','Ankara','Pursaklar','1963-02-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�rkan SUNAR','Diyarbak�r','Lice','1963-06-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kaan MERTS�Z','Ankara','Evren','1985-02-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tolga TASCI','Malatya','Do�an�ehir','1975-12-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�lhan ALU�','Kastamonu','�nebolu','1970-09-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tugay KAYMAZEL','Ordu','Korgan','1946-07-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('S�meyye BARA','Afyonkarahisar','Dazk�r�','1979-07-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rukiye �NG�R','Denizli','Pamukkale','1956-07-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fadime CAN�KDERE','Antalya','Kemer / Antalya','1940-04-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur �EKMECEL�','�orum','Osmanc�k','1991-01-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela nur MALZ.LTD.ST.','�anl�urfa','Ceylanp�nar','1981-10-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ufuk SARIDEM�R','�stanbul','G�ng�ren','1982-05-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eyl�l G�L�','Giresun','Do�ankent','1969-08-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zahide KESERCAN','Sivas','Sivas Merkez','1993-05-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ersin EB��O�LU','K�rklareli','Pehlivank�y','1948-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zahide G�R�R','K�tahya','Tav�anl�','1946-09-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yi�it �ZDAL','Sivas','Y�ld�zeli','1984-09-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�a�la SALONU','Adana','Y�re�ir','1999-04-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('O�uz C�RE','Mardin','Maz�da��','1973-02-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l B��AR','K�r�ehir','Kaman','1955-05-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('H�meyra OL�UN','G�m��hane','�iran','1953-01-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdem BU�DAYLI','Sivas','Alt�nyayla / Sivas','1993-10-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('M�zeyyen OCAK�I','Kocaeli','K�rfez','1972-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tu�ba BALKIR','Erzincan','Otlukbeli','1975-04-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('S�meyye ALPAT','Giresun','Do�ankent','1983-05-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Lina B�R�NC�','�stanbul','Beylikd�z�','1960-08-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�khan UZD�L','Sivas','Koyulhisar','1996-01-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�l�ah TUN��Z','Ankara','Nall�han','1964-04-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ler BE�KAYA','Ankara','Pursaklar','1998-07-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerem TEM�R','Malatya','Arapgir','1955-12-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ll� KARDA�','Bal�kesir','Dursunbey','1963-07-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eren KIRBASOGLU','Konya','Ak�ehir','1998-08-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seher SA�M','Afyonkarahisar','Evciler','1989-12-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ersin SEKMEN','Rize','�yidere','1975-10-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen S�NB�LO�LU','I�d�r','I�d�r Merkez','1955-11-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur AZARIBABEREH','Konya','G�neys�n�r','1955-10-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sefa CANGAR','Tokat','Pazar / Tokat','1958-07-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Eymen AHLAT','Giresun','Eynesil','1966-11-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azad ERG�NE�','Konya','Emirgazi','1990-07-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Durmu� SO�O�ULLARI','Eski�ehir','�n�n�','1961-09-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sedef K�SEN�I�','Sakarya','Geyve','1956-09-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B��ra BEZMEZ','Yalova','Armutlu','1999-06-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nihal �N�.SAN.T�C.LTD��T�.','�anl�urfa','Siverek','1957-08-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasemin �INARSOY','Giresun','Eynesil','1957-02-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehtap ILGAR','�zmir','Kiraz','1983-10-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salim KATRAN','Sinop','Sinop Merkez','1990-06-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu BAYKARA','Erzincan','Erzincan Merkez','1950-09-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emine ER�T�R','Ankara','�ubuk','1950-05-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Emin TEKKAYA','Afyonkarahisar','�obanlar','1984-04-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('M�nevver D�CLE','K�r�kkale','Sulakyurt','1988-01-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat ELG�N','Rize','Kalkandere','1943-11-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zilan SARIARSLAN','Afyonkarahisar','Evciler','1984-05-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferhat BA�DATLI','�ank�r�','K�z�l�rmak','1951-03-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela nur B�L��N','K�rklareli','Vize','1986-12-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ne� �A�LA','Erzurum','Pazaryolu','1953-09-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zehra KAHR�MAN','Ni�de','Altunhisar','1988-07-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma �OBANO�LU','Samsun','Canik','1976-12-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Neslihan KILI��EKER','Gaziantep','Nurda��','1982-10-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zzet CANKURU','Isparta','G�nen / Isparta','1978-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�lknur KALKANCI','Artvin','Kemalpa�a / Artvin','1966-07-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�l�ah AKBU�','Konya','Meram','1999-02-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ecrin �N.TUR.OTO.LTD.','Artvin','Bor�ka','1984-10-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasemin DANAO�LU','Bursa','Orhangazi','1956-04-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda KOCKANAT','Ankara','Pursaklar','1964-05-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferhat KASARO�LU','Sakarya','Ferizli','1996-07-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Enver �ZBEYL�','Karaman','Ba�yayla','1989-02-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('D�ne SEF�L','Konya','Emirgazi','1968-01-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ensar OPAK','Hatay','Yaylada��','1997-08-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilara HACMALZEMELER�','Tokat','Re�adiye','1997-07-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zg�r HAFIZO�LU','Mersin','Yeni�ehir / Mersin','1949-11-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan KOVULMAZ','�stanbul','Be�ikta�','1995-10-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri GURLA�','�anl�urfa','Haliliye','1940-10-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feride �ZKANCA','K�tahya','K�tahya Merkez','1949-09-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('M�nevver T�R�CL�','Ankara','Evren','1996-07-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('H�seyin O�AN','Burdur','Karamanl�','1952-12-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azad KAYAR','Afyonkarahisar','Ba�mak��','1981-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seval �ZKANLI','Edirne','Havsa','1995-07-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�lker KIRDAR','Malatya','Do�an�ehir','1962-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Halil �brahim B�MB�RD�REK','Batman','Sason','1971-07-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bar�� ER�N�','Bal�kesir','Edremit / Bal�kesir','1972-03-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa C�MEN','Hatay','Arsuz','1965-07-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz DOLAY','Denizli','G�ney','1941-07-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan KANDAK','Samsun','Sal�pazar�','1951-10-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eda TIC.LTD.ST�','�stanbul','B�y�k�ekmece','1941-09-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eyma SARICAN','Samsun','Bafra','1973-02-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ecrin M�RSEL','Bilecik','Bilecik Merkez','1956-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer B�Y�KL�','Bolu','Gerede','1968-09-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan �OPURO�LU','Samsun','Havza','1999-09-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('M�zeyyen G�M��TA�','�orum','La�in','1972-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz B�LGET','Ayd�n','Ku�adas�','1949-07-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�l�zar DEL�VEL�','�anl�urfa','Ak�akale','1965-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meral UZALA','�zmir','�i�li','1957-12-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Eymen �C�K','�anl�urfa','Suru�','1968-05-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esma nur AP�L�O�ULLARI','Denizli','Denizli Merkez','1991-11-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Han�m GELEN','�stanbul','Sar�yer','1996-01-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('H�lya DA�TAN','��rnak','Silopi','1989-08-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tunahan SURB�L','Tokat','Almus','1999-05-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda ERMAN','Mardin','Maz�da��','1967-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan FERUH','Ordu','Kabata�','1967-09-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile KAYIS','K�r�ehir','Ak�akent','1963-11-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mevl�t ��MSEKER','Bing�l','Gen�','1949-11-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisanur AKKULAK','Kayseri','Sar�o�lan','1979-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cuma UCAR','�ank�r�','Ilgaz','1991-02-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ensar ELEK.MAK.SAN.T�C.LTD.�T�','Ordu','Kumru','1956-07-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevim PAYCU','Ayd�n','Nazilli','1979-05-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayten SUNGUNAY','Ad�yaman','�elikhan','1992-02-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdullah TEM.SAN.T�C.LTD.�T�.','Erzincan','Otlukbeli','1949-06-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay DAVULCU','�zmir','Tire','1943-12-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yunus Emre KAND�YA','Denizli','Pamukkale','1970-09-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hava MUZ�R','Afyonkarahisar','�uhut','1959-07-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hafize ODABA�IO�LU','K�r�ehir','Kaman','1972-05-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdal �APHAN','Ordu','�nye','1984-03-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Ali ERZ�','�orum','U�urluda�','1996-03-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serdar �EM�','�orum','Bo�azkale','1951-07-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melek �T�LBAY','Hatay','Erzin','1969-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�lker NASUH�SAYDIN','Ankara','Haymana','1977-02-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif ada MAJ�DOV','�anakkale','Eceabat','1941-01-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen MANTICI','Mersin','Tarsus','1945-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi UZUNBAYIR','Giresun','Do�ankent','1968-11-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah ERTAL','Denizli','Buldan','1994-07-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira A�LAN','K�r�ehir','Boztepe','1986-10-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Alperen OKHAN','Giresun','�ebinkarahisar','1967-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Efe TUNCTAN','Ayd�n','Yenipazar / Ayd�n','1964-04-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l KALIN','Gaziantep','Yavuzeli','1992-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Toprak U�MAZ','Karab�k','Ovac�k / Karab�k','1942-12-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B�nyamin TEK�NS�Z','Mu�la','Marmaris','1948-01-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kumsal K�M�RL�O�LU','Artvin','Yusufeli','1997-10-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remziye ERAY','Erzurum','Olur','1967-01-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed BUGUR','�stanbul','Avc�lar','1949-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B�nyamin �EL�KOK','Kastamonu','�hsangazi','1957-02-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdulkadir A�ZIK��IK','Afyonkarahisar','Ba�mak��','1972-03-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nil�fer KOCABEY','Konya','Halkap�nar','1954-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elife TINGIDIK','Van','Van Merkez','1965-02-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Didem KOL�AN','�zmir','Narl�dere','1958-09-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz OK�AK','Samsun','Canik','1961-04-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eray �AHLAN','Sakarya','Serdivan','1998-05-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adnan UYAVER','Erzincan','Kemaliye','1945-11-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�enol ERZENO�LU','�anl�urfa','Birecik','1980-04-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melek S�R�C�','Rize','�aml�hem�in','1998-10-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerem DEN�ZER','Trabzon','�aykara','1986-11-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salim ��N�O�LU','Kayseri','�ncesu','1990-05-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('D�nd� LORAS','Kocaeli','Ba�iskele','1952-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kardelen DEM�RC�','Samsun','Sal�pazar�','1967-05-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mete MUTLUER','Sivas','Kangal','1942-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aykut EL��O�LU','Kars','Digor','1977-02-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��kran AYKIL','Konya','�eltik','1994-02-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B��ra KARABENL�','Mu�la','Dat�a','1996-08-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bu�lem ERB�LEN','Bursa','Karacabey','1945-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esra M�CDEC�','Sivas','Do�an�ar','1958-04-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Ali BOSTANO�LU','Mu�la','Fethiye','1980-06-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�zde SAPANCI','Ayd�n','Karacasu','1951-06-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turan UZUNKAYA','Manisa','Selendi','1955-08-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceylan KELO�LU','Ayd�n','Nazilli','1988-12-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berk SACAR','�zmir','Sel�uk','1973-09-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Do�an MEVS�M','Kahramanmara�','Elbistan','1965-10-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif �AH�NG�Z','K�rklareli','L�leburgaz','1999-01-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ay�e AZGIT','U�ak','Sivasl�','1973-09-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan SEZG�N','Bursa','B�y�korhan','1952-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf �SFEND�YAR','Burdur','Kemer / Burdur','1961-01-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nebahat TUN�BEDEN','Kayseri','Melikgazi','1977-09-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�lseren BALDIK','Kastamonu','�atalzeytin','1946-05-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adem �NERSOY','Sinop','Boyabat','1959-10-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Masal ��BECEREN','Erzincan','�ay�rl�','1945-07-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asl�han ERDEN','Bal�kesir','Ayval�k','1948-03-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Alparslan DEL��AY','Rize','Pazar / Rize','1964-11-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma S�N�R','Kastamonu','Tosya','1996-11-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ay�enur GENCAL','Kastamonu','Azdavay','1993-07-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meliha BABAHAN','Tunceli','Hozat','1992-06-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tar�k T�L�','�orum','La�in','1974-11-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('D�ne GELBAL','Samsun','Bafra','1985-09-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedriye AZGIT','Elaz��','Baskil','1984-08-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Necati K�LAHLI','Sivas','Y�ld�zeli','1974-12-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erva T�RKSOY','Erzincan','�li�','1970-01-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erva G�RLEY�K','Ordu','�ayba��','1982-01-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yunus D�NCEL�R','Giresun','Piraziz','1957-04-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi U�UK','Yalova','Yalova Merkez','1998-04-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Talha PAYCU','Kayseri','Felahiye','1981-01-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasin AK�AKOCA','Isparta','Uluborlu','1959-10-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ramazan KEM�KS�Z','Hatay','K�r�khan','1941-01-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazl�can B��ER','�orum','Alaca','1940-03-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurten LTD.�T','Diyarbak�r','Sur','1969-11-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadir SARA�O�LU','Hatay','Samanda�','1969-09-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�l�zar TENG�RLER','Ankara','Kalecik','1976-01-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berat TOLAK','Kocaeli','Derince','1945-03-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beren D�ZDAR','Manisa','Demirci','1970-07-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemal KILAVUZ','Adana','Y�re�ir','1999-10-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeynep HAKO�LU','Kars','Susuz','1968-11-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tolga �EYHO�LU','Karab�k','Eflani','1965-06-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemre �ZA�A�','Diyarbak�r','Hani','1945-11-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri KEKL�K','Gaziantep','Nurda��','1946-08-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zcan ELVAN','Van','Bah�esaray','1963-11-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekrem SA�DIK','Kocaeli','Derince','1976-11-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin ��FT��O�LU','Burdur','Burdur Merkez','1996-09-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nehir U�U�','Artvin','Hopa','1982-11-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan GEN�','Sakarya','Kaynarca','1998-03-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat F�RZEV��','Ankara','Pursaklar','1974-10-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asel G�VENS�N','K�r�kkale','Yah�ihan','1998-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Metehan T�KEN','Yozgat','Akda�madeni','1968-03-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadir SIDAN','Trabzon','Dernekpazar�','1993-12-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay G�M��TEPE','Mersin','Toroslar','1973-10-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selahattin TAFLI','Tekirda�','Ergene','1947-11-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�mer KOSKA','Diyarbak�r','Hani','1956-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat G�LBA�','Yozgat','Yozgat Merkez','1949-03-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat KLADYTH','Mersin','Toroslar','1961-07-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Emin ANNA','Tekirda�','Malkara','1958-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burhan ��NKILIN�','Denizli','Ac�payam','1962-04-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Narin BAYRI','Siirt','Siirt Merkez','1951-11-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevim KANNEC�','Mersin','Yeni�ehir / Mersin','1992-02-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali Osman �ZEL�AM','�stanbul','Beykoz','1990-09-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nil�fer ASEL�M','Ni�de','Uluk��la','1944-03-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Irmak KILCIO�LU','Diyarbak�r','Lice','1977-12-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tahir DEL�AGAOGLU','Kastamonu','Bozkurt / Kastamonu','1990-11-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aysima TOKTAY','Ankara','Beypazar�','1992-06-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Recep K�L�MC�','Antalya','Alanya','1980-12-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sibel KANPINAR','Konya','Kulu','1942-08-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan ERG�VEN','Sivas','G�r�n','1974-07-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabri DEM�RKAPU','Hatay','K�r�khan','1940-06-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan SAYGINER','Bal�kesir','Alt�eyl�l','1943-03-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali KIZILG�K','Bursa','Yeni�ehir / Bursa','1979-07-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meryem D�KMEC�','Bilecik','Boz�y�k','1956-11-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birol �K�ZEK','Bolu','Mudurnu','1946-02-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��kr� SERT�EL�K','Kilis','Elbeyli','1965-01-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebru KASAKO�LU','Bitlis','Ahlat','1946-10-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�i�dem F�DANO�LU','Hatay','Hassa','1972-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esra �ZAL','D�zce','G�m��ova','1967-04-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Metehan ��OK','Trabzon','Be�ikd�z�','1948-08-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Harun KARGUN','Giresun','Do�ankent','1986-06-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can �AYCI','Ni�de','�iftlik','1986-02-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile RENKL�G�LLER','�stanbul','Fatih','1960-08-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�lin ATE�SAL','U�ak','Karahall�','1997-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�rfan FAKO�LU','Ad�yaman','G�lba�� / Ad�yaman','1971-12-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selim KARAO�LU','Karaman','Ayranc�','1963-12-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Medine NEML�','Erzincan','�ay�rl�','1969-01-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekin BE�END�','Ankara','Haymana','1983-04-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur TEK.TES.ENR.PRO.DAN.SAN.T�C.LTD.�T�','Manisa','Selendi','1985-05-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet SERBESO�LU','Trabzon','Yomra','1943-02-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l HABERAL','�stanbul','Sultanbeyli','1965-05-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burcu COHA','�anl�urfa','Ak�akale','1995-09-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l SABUNLARI','Gaziantep','�ahinbey','1971-02-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebru D�NCASLAN','Burdur','Alt�nyayla / Burdur','1977-07-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��nar SIRLI','�zmir','Dikili','1969-03-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Efe EK�ZLER','Hatay','Yaylada��','1963-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birol KORKANKORKMAZ','Antalya','Serik','1967-02-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahattin C�CAK','Samsun','Atakum','1996-07-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mahir AYG�R','Kocaeli','Ba�iskele','1966-02-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma DONAT','Kars','Digor','1945-11-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('P�nar PEKSERT','Konya','Karap�nar','1983-04-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Leyla EG�NKAYA','Burdur','Alt�nyayla / Burdur','1982-10-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aysel KALKMAZO','Antalya','Demre','1967-06-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekin KAYNAR','Isparta','Senirkent','1982-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeliha BADIL','Sivas','Su�ehri','1971-11-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda KAYIM','Aksaray','G�la�a�','1981-12-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz Selim AL�CAN','Bursa','Mudanya','1940-04-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tu�ba MENTE�E','Bilecik','Osmaneli','1992-11-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�kra PILAVCI','Hatay','Kumlu','1998-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sercan IGNEL�','�zmir','Fo�a','1993-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('D�nd� DEKKEO�LU','Amasya','Hamam�z�','1996-03-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Havin TA�ANG�L','Kocaeli','Ba�iskele','1967-03-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berna HACIKER�MOVA','Amasya','Suluova','1942-09-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('K�ymet UTKU','Tunceli','Naz�miye','1972-02-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kezban T�RETM��','Kayseri','�zvatan','1995-07-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Damla ABANAJ','Edirne','Uzunk�pr�','1963-12-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat KIRMIZIG�L','Rize','�aml�hem�in','1959-05-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fevzi AHMED�','Trabzon','Dernekpazar�','1963-01-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Keziban OKSAK','U�ak','Ulubey / U�ak','1977-11-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Demet DEM�RC�LER','Afyonkarahisar','�hsaniye','1965-01-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Habibe ASMA','D�zce','G�m��ova','1995-02-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayfer CELEB�','�ank�r�','Eldivan','1986-05-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan SELMA','Van','Ba�kale','1994-11-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hanife REKLAM','�stanbul','G�ng�ren','1979-11-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rahime ALBAYNA','�stanbul','Pendik','1977-01-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Atakan SUSUZLU','Hatay','Erzin','1973-09-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Suat KUTBAY','Ardahan','G�le','1956-01-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('S�leyman MO�OLKANLI','Adana','Saimbeyli','1984-09-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin T��L�','�stanbul','�mraniye','1992-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Narin GOYMAT','Bing�l','Ki��','1952-09-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eren �UTANRIKULU','Mu�la','Dalaman','1990-02-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sel�uk K���KCEYLAN','Yalova','Alt�nova','1983-11-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazl� T�RK�LER�','�stanbul','Tuzla','1940-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena BARUT�U','Tunceli','Ovac�k / Tunceli','1942-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel SIRAY','Denizli','Serinhisar','1959-07-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel AB�KE','Artvin','Arhavi','1954-07-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Suat TOKTAY','K�r�kkale','Keskin','1992-09-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eray TOPAL','Ankara','Nall�han','1942-03-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Volkan ����G�L','Hatay','Samanda�','1965-01-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ye�im G�K��L','Adana','Yumurtal�k','1961-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arif PALANCILAR','Sivas','G�r�n','1960-08-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen �SFEN','Adana','Pozant�','1950-01-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mevl�t SOMUNCU','Denizli','Merkezefendi','1955-09-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sami TEM�Z��','Ordu','Korgan','1946-03-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�lker SENCAN','Rize','Hem�in','1981-09-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeter TORAGANLI','Bal�kesir','Balya','1942-02-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali Osman KAPKIN','Antalya','Gazipa�a','1956-09-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arin USLUO�LU','Erzurum','Yakutiye','1944-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eymen G�KCEN','Hatay','Reyhanl�','1945-06-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hava TOP�UHASANO�LU','Ankara','Aya�','1995-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamide T�REL�','Elaz��','Elaz�� Merkez','1964-11-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed ERHAL','Samsun','Ayvac�k / Samsun','1992-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Neriman B�Y�KTANIR','Konya','Kulu','1949-09-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�n�l �RG�P','Mersin','Mersin Merkez','1992-07-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Enes BERE�','Ardahan','Damal','1952-05-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bar�� ��KELE','Giresun','Dereli','1968-02-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin BEYAZ','Hakkari','Hakkari Merkez','1994-04-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('R�meysa B�RG�L�','�anakkale','Bayrami�','1961-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bayram KILIMBOZ','Hatay','Alt�n�z�','1967-08-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salih TURU�ALI','Elaz��','Karako�an','1965-05-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Emin �EREMET','Yozgat','�ekerek','1951-05-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Onur AKSARAY','Adana','�ukurova','1979-10-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yaren UMAK','Konya','Seydi�ehir','1957-09-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('S�ra� G�L��CEK','Bursa','Harmanc�k','1965-07-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ezgi PEMBE���EK','Denizli','Tavas','1973-04-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan ARDAHANLI','Mu�la','Marmaris','1977-10-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Emir ALTIN�Z','Konya','Kad�nhan�','1984-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serhat TEMB�H','Ad�yaman','Ad�yaman Merkez','1944-03-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Edanur DA��OBANI','Kastamonu','�atalzeytin','1973-09-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muammer TOPALO�LU-','Manisa','Kula','1950-10-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�enol G�ZEN','Sakarya','Arifiye','1955-11-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Canan G�ROCAK','Manisa','Salihli','1975-05-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selim DEM�RLENK','Erzurum','Narman','1974-05-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan PAR�A','Kastamonu','Do�anyurt','1994-08-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asiye �A�LIO�LU','Samsun','�ar�amba','1951-02-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��kriye D�NCALTIN','Rize','Rize Merkez','1998-03-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebrar ALBA�','Burdur','Tefenni','1955-11-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�enay �BLA�','Samsun','Sal�pazar�','1976-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Eymen MORG�L','�orum','�orum Merkez','1983-09-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ercan SAMANCI','Denizli','Baklan','1990-04-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cansu AKBA�','Ayd�n','Sultanhisar','1956-02-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tu�ba C�HANER','Mu�la','Mente�e','1960-01-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Okan �ZKINACI','�anl�urfa','Bozova','1984-12-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz NEV�N','Tunceli','P�l�m�r','1961-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��nar B�TGEN','�stanbul','�mraniye','1981-01-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Halil CIPIL','Van','Geva�','1967-09-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hediye SEVG�Z','�orum','O�uzlar','1988-10-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Veysel MA�AZA','Ayd�n','�ncirliova','1957-03-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurcan �EL�KBA�','Van','Van Merkez','1988-12-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meryem �AKMAN','Erzincan','Otlukbeli','1962-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Toprak �STEKL�','K�r�ehir','Mucur','1957-04-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sava� �ATANA','Mersin','Silifke','1959-08-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Merve DURKAYA','Denizli','�ivril','1998-05-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zlem �ZKALFA','Mu�la','Fethiye','1947-06-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�lay NUR�','Karaman','Kaz�mkarabekir','1989-01-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remziye GARGILI','�anl�urfa','Ceylanp�nar','1995-10-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('F�rat �RK�N','Mu�la','Marmaris','1989-05-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adil ANTALI','Giresun','Giresun Merkez','1971-07-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Devran G�NDA�','Manisa','Ahmetli','1962-10-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur ���EK','Antalya','Kemer / Antalya','1986-04-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin CATAL','Kayseri','Tomarza','1959-07-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Semanur A�LAN','I�d�r','Karakoyunlu','1946-06-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�erafettin KAMI�','Rize','Kalkandere','1940-07-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Faruk ERAKTA�','Malatya','Arapgir','1991-08-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hakk� �ZEK','Denizli','Pamukkale','1979-11-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan SERTKAYA','�zmir','Urla','1974-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emir B�Y�KORAL','Hatay','K�r�khan','1989-07-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emircan �AHRA','Mersin','Toroslar','1967-08-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz P�RO�LU','Kayseri','�ncesu','1977-12-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l �LGEY','Tekirda�','Hayrabolu','1946-05-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ensar OLGA�','Sivas','�ark��la','1994-07-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamil SAMARAZ','Manisa','Sar�g�l','1968-01-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l TAMTEL�N','�ank�r�','Eldivan','1987-06-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Enes S�ZEN','Kastamonu','K�re','1940-10-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Pakize �RK��','Artvin','Murgul','1966-03-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Filiz SOMTA�','�anakkale','Bayrami�','1952-01-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aylin A�CAKAYA','Trabzon','�alpazar�','1971-10-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rahime MUTLU','Tunceli','Hozat','1982-08-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azra �Z�BERK','Sivas','�ark��la','1990-12-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz �ENEMRE','Kayseri','P�narba�� / Kayseri','1998-10-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('R�dvan �ZTOPAL','Bursa','Orhaneli','1969-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yi�it KAYALAR','Karaman','Ayranc�','1969-07-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hava KURTAN','Erzincan','�z�ml�','1959-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('S�la KONYALI','Samsun','Ladik','1952-10-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hatice TEKE','Isparta','�arkikaraa�a�','1956-09-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat AYTEPE','Denizli','Ac�payam','1967-01-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamit TAVMA','Mersin','Silifke','1949-03-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�lin �BRYAMOV','Ankara','Pursaklar','1999-10-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye ODABA�IO�LU','Erzurum','Tekman','1990-01-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Doruk CALARG�N','Sakarya','Serdivan','1972-08-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyzanur �ZDEK','Diyarbak�r','Hani','1983-01-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin BAHT�YARO�LU','Yozgat','Yerk�y','1986-03-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa SARIAL�O�LU','Karab�k','Yenice / Karab�k','1982-02-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat NART','�anl�urfa','Birecik','1942-07-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Do�ukan K���KEV','Sakarya','Kocaali','1993-02-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arda �ENONAR','Edirne','Meri�','1950-04-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arif ��LEN','Ardahan','G�le','1961-01-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferdi KOMPRAS�R)','Kilis','Kilis Merkez','1968-02-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Duru �ZD�L','Mu�la','Bodrum','1955-12-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Ali BUZLU','Afyonkarahisar','Ba�mak��','1966-05-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Medine SAVA�CIHABE�','D�zce','Y���lca','1969-11-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eyda BARUK','Giresun','�amoluk','1966-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ozan TOPAN','�ank�r�','�erke�','1945-12-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�brahim Halil �N�.EML.OTOMTV.TRZM.SAN.T�C.LTD.�T�','Denizli','Ac�payam','1945-01-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�sa �N�.TAAH.NAK.LTD.�T�.','Burdur','Ye�ilova','1961-04-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yasin �ZSOLAK','Diyarbak�r','Ergani','1956-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bahar KA�AYICI','Antalya','Kepez','1966-08-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Derya AKG�LL�','Kastamonu','Han�n�','1961-10-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi �OPRAK','Karab�k','Eflani','1984-09-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Reyhan DO�ANKAYA','D�zce','G�lyaka','1977-08-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan KO�UM','Karaman','Ayranc�','1981-01-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adil DEREC�K','K�rklareli','Pehlivank�y','1950-06-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emrah TOPALAN','Adana','Ceyhan','1944-09-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eymen BERBERLER','K�r�ehir','�i�ekda��','1941-01-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ela ALTINKAN','Kastamonu','Kastamonu Merkez','1970-06-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz D�RGELG�L','�zmir','Konak','1980-04-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyza nur �AKSUN','Bolu','Mudurnu','1954-08-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ekin K�RKO�LU','Bal�kesir','Manyas','1955-10-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur USAK','Ad�yaman','Ad�yaman Merkez','1995-03-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi G�K�AYIR','Tekirda�','Ergene','1990-07-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz ARALP','Isparta','Isparta Merkez','1969-07-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif su SOYLU','Tokat','Artova','1963-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hayrettin �LTAR','Adana','Tufanbeyli','1959-12-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serdar ���TEN','Ankara','�aml�dere','1985-09-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sinem S�EL','Ad�yaman','Sincik','1967-12-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B�lent SEKRETER','Manisa','K�pr�ba�� / Manisa','1994-06-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Helin MERD�NL�','Ordu','Per�embe','1958-07-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kumsal DURA','Gaziantep','Nurda��','1962-03-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�lin TA�HAN','Denizli','Baklan','1974-10-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehtap HIDIRO�LU','A�r�','A�r� Merkez','1960-01-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sezer BORNOVALI','Trabzon','S�rmene','1980-06-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Saadet T�MO��N','Zonguldak','Kilimli','1980-03-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuana BEBEK','�stanbul','Sultanbeyli','1975-04-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kenan S�SL�','Malatya','Ye�ilyurt / Malatya','1975-12-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rumeysa MARA','K�rklareli','Pehlivank�y','1997-09-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azra HASKARAMAN','Bolu','G�yn�k','1986-06-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ahmet E��T','Ni�de','Uluk��la','1964-12-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aynur �ARMI�','Mersin','Mersin Merkez','1968-09-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nil�fer KANDEMO�LU','�anl�urfa','Ak�akale','1963-06-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eyl�l S�ERRA','Eski�ehir','Han','1961-05-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sava� G�R�O�LU','Bal�kesir','Kepsut','1974-06-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenaz �AMA�IRO�LU','�stanbul','Esenyurt','1996-03-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevim RUHTEM�Z','Osmaniye','Sumbas','1970-05-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kenan �ADIRCI','�zmir','�e�me','1982-09-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dursun �N�.TAH.T�C.LTD.�T�.','Giresun','Tirebolu','1959-07-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�l�en BEKDEM�R','Kahramanmara�','Nurhak','1947-12-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sat� RIHTIM','Diyarbak�r','Dicle','1982-09-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdal �EFKATL�','Malatya','Yaz�han','1940-09-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feyza G�NES','�stanbul','Ata�ehir','1944-08-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur UYARO�LU','Amasya','G�yn�cek','1961-10-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdo�an RENKTA�','Kilis','Kilis Merkez','1989-05-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Soner EZHER','Eski�ehir','Mihal����k','1961-12-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turgay BATAR','Yozgat','Yerk�y','1972-02-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ye�im KARAB�RKL�','Adana','Tufanbeyli','1982-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ll� NAL�ACIO�LU','Kastamonu','Seydiler','1959-10-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi ASTAM','D�zce','G�lyaka','1961-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ne� UZER�EL�K','Artvin','Kemalpa�a / Artvin','1993-02-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hatice k�bra SELV�','Bolu','Gerede','1995-12-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdal �R�NL�','D�zce','�ilimli','1966-06-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rojin DORUK�Z','Manisa','Turgutlu','1985-07-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emircan �ZTEL','�anakkale','Ayvac�k / �anakkale','1995-09-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�sa KASARCI','Osmaniye','Toprakkale','1948-06-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdi KAPTANO�LU','Denizli','Denizli Merkez','1985-01-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hira ALTUNBA�AK','Afyonkarahisar','K�z�l�ren','1959-03-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cengiz HASEK�','Malatya','Ye�ilyurt / Malatya','1978-01-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Simge GENS�','Van','Geva�','1974-09-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('D�nd� SAKINMAZ','U�ak','Ulubey / U�ak','1952-05-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tu��e G�N�N�','Zonguldak','Ere�li / Zonguldak','1970-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Damla HASEK�','I�d�r','Aral�k','1965-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammet Ali G�LG�R','Isparta','Aksu / Isparta','1953-12-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naciye S�F�L','Ayd�n','Germencik','1974-09-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berfin ASIRAL�','Kahramanmara�','Nurhak','1965-12-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Narin MERTKENGEL','Osmaniye','Kadirli','1988-12-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asel ��DEM','Giresun','Ke�ap','1975-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz G�NC�','Van','�atak','1956-06-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude TANU�UR','Eski�ehir','Mahmudiye','1985-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bedirhan �ZK���K','Ayd�n','Karpuzlu','1996-12-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erva TACIM','Sakarya','S���tl�','1954-11-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bu�lem L�VG��MEN','Bolu','D�rtdivan','1973-07-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hira nur VOYVODA','Trabzon','Be�ikd�z�','1999-03-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selahattin CANAYDIN','Konya','Sel�uklu','1981-03-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�lker TALHAOGLU','�stanbul','Sancaktepe','1985-07-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma zehra �NA�AN','Yozgat','�and�r','1942-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nevzat DOYRANLI','�zmir','Narl�dere','1972-01-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hatice MACUN','Bursa','�znik','1941-08-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Helin �ZMEN','Adana','�mamo�lu','1967-07-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceren �ALI�KAN)','�stanbul','Maltepe','1997-12-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan SENCAR','Sinop','T�rkeli','1953-03-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kevser KARAMAHMUT','Ordu','�kizce','1965-06-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel KIRMIZIY�Z','Afyonkarahisar','Evciler','1954-01-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zzet MAN�U','Konya','G�neys�n�r','1973-05-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hayrettin OGULTEKEN','Ankara','Akyurt','1989-08-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arya CEHR�','Kars','Arpa�ay','1980-06-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Han�m KULTAN','Afyonkarahisar','Dinar','1967-03-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile S�DAT','Osmaniye','Kadirli','1968-04-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berkay KO�AKO�LU"','Trabzon','K�pr�ba�� / Trabzon','1954-01-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan BANG�Z','��rnak','Uludere','1977-12-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('D�nd� AYBA�','Hakkari','�emdinli','1971-05-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Song�l �RGEN','Bing�l','Yedisu','1964-07-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda ACARO�LU','�ank�r�','�ank�r� Merkez','1975-12-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��nar TEK.MAK.LTD.�T�.','Amasya','Amasya Merkez','1983-06-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Medine GALER�S�','�stanbul','Beykoz','1948-12-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seher EMEKTAR','Samsun','43239','1969-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda KANAN','Ankara','�ubuk','1978-08-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda HESAP�IO�LU','Kocaeli','�zmit','1946-08-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�kranur M��RA','Yozgat','Akda�madeni','1981-09-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz BALK','�zmir','Bay�nd�r','1983-11-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Abdulsamet EKBER','Yozgat','�ay�ralan','1943-06-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude �ZKAYA','D�zce','Y���lca','1977-08-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kerim HASPAL','Rize','�aml�hem�in','1970-10-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emin BUBA','�zmir','Kiraz','1968-03-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Dilan DEN�ZEL','Diyarbak�r','Diyarbak�r Merkez','1977-07-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�rkan EV�RGEN','Rize','G�neysu','1951-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Osman CIRAK','Hatay','Hatay Merkez','1985-02-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf UFUK','�orum','U�urluda�','1949-05-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rabia G�KBEL','�ank�r�','K�z�l�rmak','1987-06-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�mer SOFT','Afyonkarahisar','K�z�l�ren','1941-07-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muharrem EMAR','Ni�de','Ni�de Merkez','1958-07-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif BAYRAK','Manisa','Selendi','1985-10-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B�lent AKO�LU','Erzurum','Erzurum Merkez','1997-11-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nermin D�RER','Antalya','Manavgat','1990-04-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuba �EKEN','�stanbul','Ata�ehir','1947-07-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('K�ymet ��ER�','�stanbul','Be�ikta�','1963-12-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay HAMURPET','Sinop','Ayanc�k','1967-08-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mert KARAKOZ','Tekirda�','Muratl�','1989-04-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda �NER','Edirne','Edirne Merkez','1954-04-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Polat SARIYILDIZ','Giresun','Piraziz','1959-04-11 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Y�ld�z ALKIN','Hatay','Samanda�','1993-11-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan G�RB�ZO�LU','Mu�la','Fethiye','1975-04-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�rem L�VMERCAN','Edirne','Enez','1941-05-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�evval ARDIC','�ank�r�','Orta','1995-01-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Derin D�BEN','Kahramanmara�','Nurhak','1991-11-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seher DEM�RSOY','Antalya','Alanya','1944-02-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yeter ATSAN','Elaz��','Elaz�� Merkez','1987-02-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emir SEZ�K','Adana','Sar��am','1975-01-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeki KUVVETL�','Ardahan','Ardahan Merkez','1972-12-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berivan �AKIRCI','K�rklareli','L�leburgaz','1965-03-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melih �AKALAK','Kastamonu','Tosya','1960-10-15 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma zehra KOVAFO�LU','Mu�la','K�yce�iz','1995-10-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Didem KAHRAMANT�RK','K�r�ehir','Ak�akent','1947-07-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hazal KARATA�O�LU','Tunceli','Mazgirt','1995-01-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meliha AKKULAK','Eski�ehir','Sar�cakaya','1950-01-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emre KATI','Bilecik','Pazaryeri','1948-03-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birsen BOZNA','Konya','Tuzluk�u','1991-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Eymen K�SEM','Diyarbak�r','Diyarbak�r Merkez','1941-12-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nebahat ER��TEN','��rnak','Cizre','1962-04-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sava� G�NAYDI','Konya','Ilg�n','1970-10-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serhat HOSAN','Ordu','Kabad�z','1990-01-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemil DALGIN','Kocaeli','Gebze','1953-02-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berra BONCOO�LU','Hakkari','�emdinli','1943-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamit G�ZTOK','Konya','Karap�nar','1955-12-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur SELV�TOP','Sivas','�mranl�','1998-08-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kamile B�Y�KKURTUL','Karaman','Kaz�mkarabekir','1942-07-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Z�beyde �NAY','Yozgat','�efaatli','1996-07-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('U�ur KOYUN','Kastamonu','Ta�k�pr�','1954-11-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�evket �RG�','Denizli','Tavas','1986-12-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sinem DO�ULUG�L','Manisa','Demirci','1988-06-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Y�lmaz K�KL�','�stanbul','Silivri','1982-08-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Damla KARTALO�LU','Trabzon','Arsin','1992-11-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tahir D�LGER','Bal�kesir','Bal�kesir Merkez','1966-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu K�TR�NC�','Kayseri','Sar�z','1964-02-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Talha G�NE�AN','Ankara','Mamak','1968-02-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Alperen KA�A�AN','Zonguldak','Alapl�','1983-04-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ne� KOCABA�','Nev�ehir','Hac�bekta�','1971-11-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Mustafa KARATOP','Ayd�n','Karpuzlu','1952-08-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sabriye BERKANT�ZGEN','Karab�k','Safranbolu','1999-07-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elif su FURUNCUO�LU','Konya','Bey�ehir','1943-03-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emirhan TOKTA�','Tokat','Almus','1961-10-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan KALPAKO�LU','Sakarya','Pamukova','1965-11-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eray DEM�RG�Z','Manisa','Kula','1977-04-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sedat KORUR','Eski�ehir','Seyitgazi','1980-10-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tuncay MADANO�LU','Zonguldak','Devrek','1954-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan BALBA�O�LU','�anakkale','Biga','1948-09-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�lay �A�LIATALAY','Sakarya','Ferizli','1988-02-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�lin AKTA�DO�AN','Isparta','Yalva�','1962-04-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zafer KACAN','Sivas','�ark��la','1992-12-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Talha VORR�A','K�rklareli','Demirk�y','1957-04-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferhat B�LG�SAYAR)','Ordu','Ulubey / Ordu','1966-07-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bu�lem TU�LAN','A�r�','Tutak','1946-04-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz PERDE','Samsun','Kavak','1954-03-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burak ER��N','Giresun','�anak��','1979-06-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tu��e HEPG�L','Ankara','Alt�nda�','1940-04-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cennet �APA�ASIO�LU','Erzurum','Oltu','1941-10-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf Ali BOZTEPE','Diyarbak�r','�ermik','1983-07-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�i�dem SEVENCAN','Adana','Karata�','1948-07-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fahrettin ARICAN','K�r�ehir','�i�ekda��','1964-10-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Semih SURETT�','Elaz��','Elaz�� Merkez','1998-04-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa BEREN','Ordu','Aybast�','1945-03-18 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�brahim SAL�HOGLU','�stanbul','Tuzla','1981-12-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rumeysa AK�AKUYU','Bilecik','Boz�y�k','1979-08-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�mer Halis AK�IL','�anl�urfa','�anl�urfa Merkez','1940-11-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceylin C�MENCAN','Erzincan','Kemaliye','1970-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naz DA�YARAN','Ardahan','Ardahan Merkez','1952-01-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ezgi �ZBIYIK','Bilecik','Bilecik Merkez','1978-02-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sefa �RN.LTD.�T�','Kahramanmara�','Elbistan','1968-07-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nuri ��B�T�R','Elaz��','Baskil','1973-11-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Resul �ZABAY','�anakkale','Ayvac�k / �anakkale','1983-08-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eyl�l M�H.�N�.TAAH.TURZ.SAN.T�C','Konya','G�neys�n�r','1943-10-06 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nilg�n D�JME','Ankara','Elmada�','1949-05-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nuray T�RKSARI','Giresun','Dereli','1941-04-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay RE��T�','Kastamonu','A�l�','1988-05-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdem G�OVANN�','Kastamonu','�hsangazi','1983-06-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nesrin �AH�NL�','Bing�l','Bing�l Merkez','1981-03-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hafize KOCATEPE','Bing�l','Bing�l Merkez','1953-07-15 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ahmet �ZTOKLU','Mu�la','Kavakl�dere','1970-08-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Feride SULUDERE','Afyonkarahisar','Dazk�r�','1957-08-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�mer Halis K���KALEMDAR','A�r�','A�r� Merkez','1991-03-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Oktay I�IKTAN','Ordu','�ayba��','1998-10-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Arin BARIN','Afyonkarahisar','�scehisar','1942-03-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melike KENT','Karab�k','Eskipazar','1969-11-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('F�rat ERKAYA','Trabzon','Vakf�kebir','1958-11-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aziz �ZBAYSAL','Sinop','Erfelek','1949-02-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Azat �A�MAN','Karaman','Ermenek','1982-06-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esma nur HANG�N','Hatay','Alt�n�z�','1973-12-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beren TOPUZLU','Mersin','G�lnar','1944-10-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mira ALPAGUT','Afyonkarahisar','�hsaniye','1952-07-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sema CEB��L�','Ardahan','Hanak','1965-08-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan ��REDEN','Tekirda�','�orlu','1941-11-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asl�han END�S.SAN.T�C.A.�.','Eski�ehir','G�ny�z�','1971-01-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serkan �ZTA�','Hatay','Hatay Merkez','1990-09-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu G�LTEPE','Kastamonu','Tosya','1975-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Erdi �ZGUR','�zmir','Kiraz','1957-02-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye KOKULU','Mardin','K�z�ltepe','1986-05-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zge TEKG�L','K�tahya','Hisarc�k','1941-02-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bar�� KOPAK�I','�zmir','Torbal�','1989-03-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('O�uz �ALGIN','Tokat','Niksar','1941-08-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Merve SALLIK','Erzurum','Oltu','1998-04-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asiye DADA�LIO','Mersin','Akdeniz','1960-11-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�lten DAL�IK','Edirne','Edirne Merkez','1948-07-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nuri TIRPANO�LU','Manisa','G�lmarmara','1945-03-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Bayram TAR�IN','Mersin','Anamur','1992-03-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eng�l ALPDO�AN','A�r�','Patnos','1993-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Y�ld�z T�RKARUH','Giresun','G�ce','1950-09-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Harun AL�M','Siirt','Tillo','1962-05-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Amine ��SEVER','Mersin','Anamur','1948-10-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fatma KURTOGLU','Yozgat','Yozgat Merkez','1980-08-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muzaffer B�BER','Konya','Derbent','1968-01-30 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Batuhan �NCEDAYI','Adana','Seyhan','1983-03-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�aban SILAY','Trabzon','Vakf�kebir','1956-09-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('H�lya TINAZ','Manisa','Saruhanl�','1940-07-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sudenur DEDEKARGINO�LU','Antalya','D��emealt�','1980-07-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Berra SARACOGLU','Kastamonu','Seydiler','1949-07-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hilal KEND�RL�','Edirne','Meri�','1949-06-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asya �ZGAZ�','Erzurum','H�n�s','1995-06-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Efe �IBIK','Samsun','Ladik','1980-02-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zg�r ARSEVER','Konya','Do�anhisar','1941-03-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Makbule BA�B�LB�L','Diyarbak�r','��nar','1974-08-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meryem K�KTA�O�LU','Giresun','Giresun Merkez','1974-01-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceren �Z�ZEN','I�d�r','Karakoyunlu','1973-08-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�mer T�RKAKIN','Manisa','Sar�g�l','1956-03-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('H�lya DEDE','��rnak','Silopi','1944-03-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beyza TEKMEN','Manisa','Yunusemre','1989-05-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Enver KARAPINARLI','A�r�','Patnos','1973-02-13 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Orhan TREN','Yalova','�iftlikk�y','1963-09-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude PAS�NL�','Sakarya','Adapazar�','1958-10-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��nar SUNMAZ','Manisa','Demirci','1979-01-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�ne� AKS�NER','Nev�ehir','Derinkuyu','1991-04-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yusuf ALI�MAZ','K�r�ehir','Kaman','1999-03-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�erafettin KOMA�AY','Eski�ehir','Mahmudiye','1974-08-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emel KALTAKCI','Diyarbak�r','�ermik','1985-06-02 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ercan B�R.','Isparta','�arkikaraa�a�','1999-11-02 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�rem MAK.SAN.T�C.LTD.�T�.','Konya','Do�anhisar','1997-03-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sude naz K�STEK��','K�r�kkale','K�r�kkale Merkez','1994-06-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aliye ERYILDIZ','Bursa','Gemlik','1976-12-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aysima �ET�N','�ank�r�','K�z�l�rmak','1981-08-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emine TOPG�LER','Osmaniye','Sumbas','1943-12-31 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cansel G�LLER','Gaziantep','Karkam��','1989-05-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Burak EVRENSEL','Bing�l','Karl�ova','1954-10-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Memet EL�BA�','�stanbul','Kad�k�y','1993-10-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sebahat KOZGAR','�anakkale','�an','1959-01-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('B�lent AK�ASI','Artvin','Murgul','1985-07-28 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Harun �ZPINAR','Denizli','Bekilli','1947-05-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Adnan S�ZTUTAR','Kastamonu','�atalzeytin','1950-11-25 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Buket B�Y�KKAFES','K�rklareli','K�rklareli Merkez','1972-12-27 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz Selim DEM�R','Mu�','Mu� Merkez','1970-04-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye AVGIN','Sinop','Sarayd�z�','1991-05-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�eyma PAZ.','�anl�urfa','Ak�akale','1996-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zeki PAMUKOGLU','K�r�ehir','Boztepe','1960-02-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadriye TERZ�OGLU','K�rklareli','L�leburgaz','1961-10-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�lker ANAS','Sakarya','Akyaz�','1964-01-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Remzi MOLLA','Konya','Emirgazi','1944-04-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Elifsu DURMAYAN','Afyonkarahisar','�hsaniye','1986-02-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Havva �ZDA�','�stanbul','Esenler','1986-01-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Ali KIRICI','Manisa','Demirci','1940-01-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz I�IN','Ordu','Alt�nordu','1948-04-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayaz ERSEM','Hatay','Reyhanl�','1954-05-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ege �ZATLAR','Burdur','Karamanl�','1975-02-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Meltem �ANSAL','Malatya','P�t�rge','1981-12-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hasan BILDIRCIN','Trabzon','Hayrat','1999-08-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ebubekir ATMACA','Diyarbak�r','Diyarbak�r Merkez','1950-11-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ferdi SABANLI','Afyonkarahisar','Dazk�r�','1947-04-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nihal KELE�O�LU','Sinop','Sinop Merkez','1992-10-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayfer TOLUNB�KE','Samsun','Atakum','1962-08-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ozan ENG�','�orum','�skilip','1981-08-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Esila ATTIM','Bursa','Y�ld�r�m','1945-03-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ramazan �Z�KARA','Amasya','Suluova','1974-06-26 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Seda ONUKER','Sivas','Ula�','1970-02-16 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asmin MAK.SAN.T�C.LTD..�T�.','Erzurum','Pasinler','1991-02-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Can DUYUM','Malatya','Do�an�ehir','1956-08-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Enes �ALGIN','Mu�la','Ula','1943-02-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hamit F�GEN','Erzurum','Oltu','1942-06-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Salih K�K�EN','Mardin','Darge�it','1981-03-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Huriye B�VET','Konya','Sel�uklu','1947-07-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('H�meyra KIRMAN','Van','Ba�kale','1947-02-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Naime �OKTA�','Ayd�n','Kuyucak','1972-05-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Birg�l A�AR','Kastamonu','Bozkurt / Kastamonu','1977-04-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Fahrettin K�SEO�LU','Zonguldak','Devrek','1972-11-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kemal �N�.SAN.LTD.�T�','Ayd�n','Karpuzlu','1984-09-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay S�GORTA�ILIK','Tekirda�','Malkara','1972-02-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Recep GEL�NKAYA','Sivas','Sivas Merkez','1971-10-05 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zge ALATEPE','Hatay','Antakya','1958-08-07 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevda VAHAPO�LU','��rnak','Silopi','1984-08-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena ��GDEM','Tokat','Ye�ilyurt / Tokat','1980-02-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Niyazi ERC�NS','Ad�yaman','G�lba�� / Ad�yaman','1966-11-23 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kadir S�T��','Mardin','Ye�illi','1952-04-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Rumeysa BULMAZ','�ank�r�','Atkaracalar','1957-12-28 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemal PAMUK','Bitlis','Mutki','1975-04-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hacer ELKATMI�','Hatay','Hatay Merkez','1955-08-21 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tar�k ER��TEN','Bal�kesir','Sava�tepe','1970-03-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Raziye KONAL','Bursa','Osmangazi','1967-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ege B�LGE�','Kayseri','Tomarza','1981-10-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Eyl�l DILEK','Samsun','Samsun Merkez','1947-02-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Duru G�L�STAN','Mersin','Silifke','1990-01-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�yk� AKBEY','Denizli','Pamukkale','1959-01-19 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet C�NE','Kars','Arpa�ay','1976-12-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hayriye KARASU','Denizli','Sarayk�y','1971-01-14 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kardelen KADIYORAN','Aksaray','A�a��ren','1976-03-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Belinay T�C.LT�.','Tekirda�','Marmaraere�lisi','1954-01-10 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ali CENG�ARSLAN','Karab�k','Eflani','1988-01-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('S�la ERGAN','Diyarbak�r','Diyarbak�r Merkez','1967-01-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('T�rkan MAH.25.SOK.','Burdur','�eltik�i','1993-12-24 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sena ��LES�Z','�stanbul','Esenyurt','1963-10-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nurten K�SEN','Afyonkarahisar','K�z�l�ren','1982-03-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turgay F�L�ZMAN','Bing�l','Solhan','1972-12-06 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sevgi DEDEMEN','Bursa','�znik','1998-12-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Didem TANTA','Bal�kesir','Susurluk','1960-05-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('��kran OFLEZER','Bursa','Y�ld�r�m','1954-05-11 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('F�rat ��LENGER','Tokat','Artova','1967-12-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serkan OPRUKCU','Ankara','Bala','1963-09-17 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Yavuz Selim AYVAZO�LU','Manisa','Saruhanl�','1986-06-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�zlem �ZKOL','Sivas','Divri�i','1988-02-08 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Selma �ZO�UL','Ayd�n','Nazilli','1997-11-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sedanur MORALI','Erzincan','Kemah','1990-12-23 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Can �ZG�ZLER','Manisa','Selendi','1967-02-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Deniz HACIBEK�RO�LU','�anakkale','�an','1972-11-05 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Muhammed Eymen TERZ�BA�','Diyarbak�r','��nar','1998-12-22 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ercan ORBAY','K�tahya','Pazarlar','1994-09-01 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Halit B�Y�KTERZ�','Mu�','Malazgirt','1964-07-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur �LSEVEN','�ank�r�','�aban�z�','1988-10-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Asl�han B�LALOGLU','Burdur','Karamanl�','1968-09-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Beril D�N�T�RK','K�tahya','�avdarhisar','1985-06-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Emircan EY�LER','�zmir','Karaburun','1996-07-31 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('L�tfiye BAKKALBA�I','Samsun','Havza','1986-08-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tu�ba �N�.GID.TUR.SAN.T�C.LTD.�T�','Van','Van Merkez','1994-07-17 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cuma TA�.SAN.T�C.LTD.�T�.','Karaman','Ermenek','1940-10-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tahsin G�N�LDA�','Bilecik','Osmaneli','1978-09-20 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sultan BALEK','�orum','�orum Merkez','1992-07-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Sare �AYKU�','Sakarya','Erenler','1961-10-20 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cem MAKAL','Konya','Cihanbeyli','1976-07-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cihan AKTA�DO�AN','Ordu','G�lyal�','1951-09-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Zerda B�NNEO�LU','Malatya','Kale / Malatya','1983-06-04 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�lhan ALTINISIK','Van','Erci�','1985-02-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Soner KUMBULO�LU','�stanbul','Beylikd�z�','1941-03-27 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Makbule �ORLU','Konya','�umra','1975-05-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Efe B�LD�RC�','G�m��hane','Torul','1983-12-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nazmiye BALIBEY�','Ordu','Kumru','1995-03-03 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�rfan S�RKEL�','Samsun','Yakakent','1999-09-09 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Nisa nur �BRYAM','Osmaniye','Sumbas','1946-09-01 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Talha CANIKARA','Antalya','Gazipa�a','1995-12-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('�etin �ZARABACI','Tokat','Almus','1990-02-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda BALATA','Bursa','Orhaneli','1951-10-30 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cafer UYARBA�','Mu�','Korkut','1998-08-16 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turgay G�LS�N','Zonguldak','Kilimli','1996-07-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Mehmet Ali ONAZ','Afyonkarahisar','Hocalar','1992-12-21 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cemil G�RAL','K�r�kkale','�elebi','1991-05-04 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Serpil �AKAO�LU','Karab�k','Safranbolu','1944-12-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Melih KARAKA�O�LU','Erzurum','Tortum','1999-11-08 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Y�lmaz TOK��Z','�zmir','Bal�ova','1981-08-03 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur BODURO�LU','G�m��hane','K�se','1952-07-25 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Aras KORKMAN','Isparta','E�irdir','1950-07-12 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Tayfun �N�.TAHH.SAN.T�C.LTD.�T�','Bing�l','Yayladere','1992-10-18 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Kevser EMAN','Malatya','Kale / Malatya','1992-03-12 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Caner �ZTEL','Edirne','�psala','1991-10-07 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Turan AYSER','Malatya','Kale / Malatya','1992-02-19 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Furkan HA�LAK','Ad�yaman','�elikhan','1987-08-29 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Evren KILI�O�LU','Artvin','Murgul','1959-01-10 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Hiranur SA�.H�Z.','Elaz��','Karako�an','1955-11-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceyda BOLAT','�zmir','�e�me','1984-02-26 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Cansu BOYLA','Elaz��','A��n','1970-09-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ayhan SAYIT','Ankara','�erefliko�hisar','1982-05-24 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Ceylin CO��UN','Konya','Emirgazi','1994-12-29 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Han�m �AVDARCI','D�zce','Y���lca','1999-01-13 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�lhan B�RSAN','Kahramanmara�','T�rko�lu','1941-07-22 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Musa ALGUR','�anl�urfa','Harran','1988-04-14 00:00:00.000','E')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('G�l�ah �AH�NL�','Ayd�n','Sultanhisar','1983-10-09 00:00:00.000','K')
INSERT INTO late_customer (Customer,City,District,Birthdate,Gender) VALUES('Veysel ELDEM','Mersin','Toroslar','1960-07-29 00:00:00.000','E')

--UPDATE KOMUTU:
UPDATE TABLOADI
SET COLUMN1=VALUE1, COLUMN2=VALUE2, COLUMN3=VALUE3

--Tabloya ya� kategorisi eklemek istiyorum. Tables >> Design diyerek ekliyorum.
--Verimizde sadece do�um tarihleri bulunuyor ya�lar� direkt olarak verilmedi�i i�in NULL yazacak tabloda her bir verinin ya�� i�in.
--Bunu hesaplamak i�in update, datediff ve get date gibi fonksiyonlar kullanmam�z gerek.
--Datediff() iki tarih aras�nda zaman fark� al�r. Y�l baz�nda, ay baz�nda g�n baz�nda olmak �zere.
--Getdate() ise g�n�m�z�n tarihini belirtir.

select * from late_customer -- �u an age k�sm� null olarak geldi. 

update late_customer
set Age=DATEDIFF(YEAR,Birthdate,Getdate()) --Her bir ki�inin g�n�m�zdeki ya��n� hesaplayacak.

--Her bir ki�inin ya��n� 1 artt�rmak istersek;
update late_customer
set age=Age+1

select * from late_customer

update late_customer
set age=Age-1 --bu haliyle ya�lar� 1 azallt�k

select * from late_customer

--DELETE KOMUTU:
--Bir tablodaki t�m kay�tlar� siler geri d�n��� olmaz.
--Bu �rnek i�in elimizdeki veriyi kaybetmeyelim diye yedekleme yapaca��z. 
--Bu yedeklemeyi de SELECT * INTO TABLOADIYEDEK FROM TABLOADI �eklinde yapar�z.

SELECT * INTO late_customer_yedek from late_customer --daha sonra tablo k�sm�n� yenileyerek yedek tabloya ula�abilirsin.

--Silme i�lemini yedek tablo �zerinden yapal�m.
DELETE FROM late_customer_yedek
SELECT * FROM late_customer_yedek --�u an bu sorguyu �a��r�nca bo� bir tablo geldi

--Dikkat etmek gereken bir durum var: tabloyu bir veri ekleyip tekrardan select * from late_customer_yedek dedi�imiz zaman ID 1001'den ba�l�yor.
SELECT * FROM late_customer_yedek
--Delete komutunda silinince otomoatik artan alan yani primary key silinen en son verinin numaras�ndan devam ediyor.
--Tablonun tamamen bo�al�p otomatik artan k�sm�n 1den ba�lamas�n� istiyorsak o zaman TRUNCATE komutu kullanmal�y�z.

TRUNCATE TABLE late_customer_yedek
SELECT * FROM late_customer_yedek --�u an gelen veri 1den ba�l�yor. �ncesinde yedek tablosuna rastgele bir veri girmen gerekli!!!

--WHERE �ARTLARI:
--Where komutu bir �artt�r. Bir ko�ul veririz, filtreleme gibi. �rn: Ya�� 20den b�y�k erkek �al��anlar, ismi sadece Murat olanlar gibi.
SELECT * FROM TABLOADI
WHERE COLUMN1=VALUE1

--1den fazla where �art� kullan�labilir. �rn: Ya�� 20den b�y�k istanbulda ikamet eden kad�n �al��anlar gibi.

--WHERE �ARTLARI
-- = E�ittir.
-- <> E�it de�ildir.
-- > B�y�kt�r.
-- < K���kt�r.
-- >= B�y�kt�r ya da e�ittir.
-- <= K���kt�r ya da e�ittir.
-- BETWEEN aras�ndad�r.
-- LIKE �le ba�lar, �le biter, ��erir
-- In i�indedir.

--�smi Soner �lgen olan kullan�c�y� �ekelim.

Select * from late_customer
where Customer='Soner �lgen' --SQL oldu�u i�in stringler tek t�rnak ile ifade ediliyor.

select * from late_customer
where ID=21  --ID'si 21 olan kullan�c�y� getirdi.

select * from late_customer
where city='Ankara' --Ankara'da ikamet eden t�m kullan�c�lar� getirdi.

select * from late_customer
where Birthdate='1985-02-06' --Tarihi bu �ekilde kullanmak yerine '19850206' �eklinde yazarsak kullan�lan dileden ba��ms�z sorgu �ekebiliriz.

select * from late_customer
where Birthdate='19850206'

--�rn: �stanbul'un Tuzla hari� il�elerini getirme
select * from late_customer
where City='�stanbul' AND District<>'Tuzla' --Tuzla hari� di�er t�m il�elerde ikamet eden kullan�c�lar� getirdi. <> e�it de�ildir.

--�rn: Ya�� 25 ile 55 aras�nda olan kullan�c�lar� getirme:
select * from late_customer
where Age BETWEEN '25' AND '55'

--�rn:Ya�� 1984-10-01 e�it ya da k���k olanlar� �a��ral�m.
select * from late_customer
where Birthdate<='1984-10-01'  --<= k���k ya da e�it

--Like ko�ulu genelde stringlerde kullan�l�r. Genelde m��teri �r�n aramalar�nda kullan�l�r.
--�rn: �smi Onur olan kullan�c�y� getir.
select * from late_customer
where customer like 'Onur' --b�yle bir sorgu gelmedi ��nk� isim soisim olarak kullan�c�lar tan�mlanm��.

--Onur isminde ka� kullan�c�n�n oldu�unu g�rmek i�in 'Onur%' y�zde i�aretini isimden sonra eklemeliyiz.
select * from late_customer
where Customer like 'Onur%' --4 adet Onur isminde kullan�c� geldi.

--�rn: �sminin i�inde 'ince' ge�enlere bakal�m. Bunun i�in ba��na ve sonunda % i�areti koymal�y�z.
select * from late_customer
where Customer like '%ince%' --gelen sorguda incecik, incedal, dincelir, inceday� gibi kelimeler bulunuyor.

--% y�zde i�areti ba�ta olup isim aratmak istersek 'ile biter anlam�na gelir.
--ince ile biten isimler
select * from late_customer
where Customer like '&ince' --ince ile biten kelime yokmu�. Direkt birinin soyad�ndan deneyelim.

select * from late_customer
where Customer like '%incecik' --incecik ile biten 1 ki�i bulunuyormu�


--�rn: �stanbul'un Tuzla ve Kad�k�y il�elerinde ikamet eden kullan�c�lar� getir.
select * from late_customer
where city='�stanbul' and District in ('Tuzla','Kad�k�y')

--�rn: �stanbul'un Arnavutk�y ve Halkal� il�elerinde ikamet etmeyen kad�n kullan�c�lar� getir.
select * from late_customer
where City='�stanbul' and District not in ('Arnavutk�y', 'Halkal�') and Gender='K'

--�nemli Not: Delete komutunu where �art�n�n i�inde kullanarak tablonun hepsini silmeden istedi�in ki�iyi silebilirsin.
--�rn: Tablodan 1. ki�iyi sil.
delete from late_customer
where ID=1
select * from late_customer --tablodan sadece ilk kullan�c� silindi.

--�rn: �smi Serhat olan herkesi sil.
delete from late_customer
where Customer like 'Serhat%' --3 ki�i varm��. Like �art�n� eklemezsen sonu� vermez ��nk� Serhat isminde biri varsa sil diye komut veriyoruz.
select * from late_customer --�nce 1.ki�i volkan� ��karm��t�k 999 olmu�tu. �imdi Serhat isminde 3 ki�i daha ��kard�k 996 oldu.

--Ayn� �ekilde Update �art� i�in de Where �art� kullanabiliriz.
--�rn: Gender kategorisini 'E' ve 'K' yerine 'Erkek' ve 'Kad�n' �eklinde g�ncelle.
--�ncelikle Tablo dizayn�nda varchar(1) yerine varchar(10) yap.

update late_customer
set Gender='Erkek' where Gender='E'

update late_customer
set Gender='Kad�n' where Gender='K'
select * from late_customer


--AND ve OR Operat�rleri
--1den fazla ko�ulu ayn� sorguda kullanmak i�in AND ve OR operat�rlerine ihtiya� duyar�z.
--�rn: �smi Onur ile ba�layan ve �ehri �stanbul olan kullan�c�lar� getir.
select * from late_customer
where Customer like 'Ali%' and City='�stanbul' --Sadece 1 ki�i varm��.

--�rn:�smi Onur ile ba�layan veya Ankara'da ya�ayan kullan�c�lar� �a��r.
select * from late_customer
where Customer like 'Onur%' or City='Ankara' --Hem ismi Onur olanlar� hem de Ankara'da ya�ayan herkesi getirdi.


--Distinct KOMUTU: Tekrar eden sat�rlar i�in tek sorguda sonu� d�nd�r�r. 
--�rn: Bir tabloda 1 milyon kullan�c�n�n ismi �merse bunu teke d���r�p bize sonu� olarak g�sterir.
select distinct Column1, Column2
from Tabload�

--�rn: City k�sm�nda ka� �e�it �ehir var ona bakal�m.
select distinct City
from late_customer --bu �ekilde 81 ili teker teker yazarak getirdi.


--Order By Komutu: Bir s�ralama komutudur. Select ile �ekilen datalar� hangi s�rada g�rmek istiyorsak o ama�la order by kullan�r�z.
--ASC A'dan Z'ye s�rala veya k���kten b�y��e s�rala demektir.
--DESC b�y�kten k����e s�rala demektir.
select column1, column2
from tabload�
order by column1 asc, column2 desc

--�rn: M��teri ad�na g�re s�ralama yap.
select * from late_customer
order by Customer ASC --bu �ekilde t�m m��teriler A'dan Z'ye s�ralad�.

--�rn: Hem �ehir hem de isme g�re s�ralama yap.
select * from late_customer
order by City, Customer ASC

--S�ralamay� kolon ismi yazmadan sadece ka��nc� kolona denk geliyorsa o �ekilde rakamla da belirtebiliriz.
select * from late_customer
order by 3 ASC --bu �ekilde ID ile ba�lay�p 3.kolona denk gelen yani city'e g�re s�ralama yapar.


--TOP KOMUTU: Bir sette belli bir say� kadar veya d�nen datan�n belli bir y�zdesi kadar kay�t d�nd�rmemizi sa�lar.
select top n(say�) column1, column2
from tabload�
order by column1 asc, colmun2 desc

--�rn: �lk 5 kullanc�y� getir.
select top 5 customer
from late_customer
order by Customer asc  --bu �ekilde ilk 5 kullan�c�y� getirdi ve ben asc yazd���m i�in alfabeye g�re s�ralad�.

--�rn: �stanbul'dan ilk 5 kullan�c�y� alfabeye g�re s�ralay�p getir.
select top 5 * from late_customer 
where city='�stanbul'
order by Customer asc --istanbuldan top 5 kullan�c� alfabeye g�re s�raland�.

--Y�zdelik olarak g�stermek istersek:
select top 50 percent * from late_customer 
where city='�stanbul'
order by Customer asc --istanbuldakilerin %50sini getirdi.

