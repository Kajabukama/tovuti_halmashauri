-- DROP DATABASE IF EXISTS `tovuti_mikoa`;
-- CREATE DATABASE `tovuti_mikoa`;
-- USE `tovuti_mikoa`;
DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  region VARCHAR(255),
  capital VARCHAR(255),
  districts INT,
  area FLOAT,
  population VARCHAR(255),
  zone VARCHAR(255),
  web_address VARCHAR(255),
  poster VARCHAR(255)
) AUTO_INCREMENT = 1000;

INSERT INTO `regions` (region,capital,districts,area,population,zone, web_address, poster) 
VALUES 
  ('Arusha','Arusha',6,34.516,'1694310','Northern','http://www.arusha.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/arusha.png'),
  ('Dar es Salaam ','Dar es Salaam',3,1.393,'4364541','Coastal','http://www.dsm.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/dsm.png'),
  ('Dodoma','Dodoma',7,41.311,'2083588','Central','http://www.dodoma.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/dodoma.png'),
  ('Geita','Geita',5,20.054,'1739530','Lake','http://www.geita.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/geita.png'),
  ('Iringa','Iringa',3,35.503,'941238','Southern Highlands','http://www.iringa.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/iringa.png'),
  ('Kagera','Bukoba',7,39.627,'2458023','Lake','http://www.kagera.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/kagera.png'),
  ('Katavi','Mpanda',2,45.843,'564604','Southern Highlands','http://www.katavi.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/katavi.png'),
  ('Kigoma','Kigoma',6,45.066,'2127930','Central','http://www.kigoma.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/kigoma.png'),
  ('Kilimanjaro','Moshi',6,13.209,'1640087','Northern','http://www.kilimanjaro.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/kilimanjaro.png'),
  ('Lindi','Lindi',5,67.000,'864652','Coastal','http://www.lindi.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/lindi.png'),
  ('Manyara','Babati',5,47.913,'1425131','Northern','http://www.manyara.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/manyara.png'),
  ('Mara','Musoma',6,31.150,'1743830','Lake','http://www.mara.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/mara.png'),
  ('Mbeya','Mbeya',8,62.420,'2707410','Southern Highlands','http://www.mbeya.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/mbeya.png'),
  ('Morogoro','Morogoro',6,70.799,'2218492','Coastal','http://www.morogoro.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/morogoro.png'),
  ('Mtwara','Mtwara',5,16.707,'1270854','Coastal','http://www.mtwara.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/mtwara.png'),
  ('Mwanza','Mwanza',7,9.467,'2772509','Lake','http://www.mwanza.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/mwanza.png'),
  ('Njombe','Njombe',4,21.347,'702097','Southern Highlands','http://www.njombe.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/njombe.png'),
  ('Pwani','Kibaha',6,32.407,'1098668','Coastal','http://www.pwani.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/pwani.png'),
  ('Rukwa','Sumbawanga',3,22.792,'1004539','Southern Highlands','http://www.rukwa.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/rukwa.png'),
  ('Ruvuma','Songea',5,66.477,'1376891','Southern Highlands','http://www.ruvuma.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/ruvuma.png'),
  ('Shinyanga','Shinyanga',3,18.901,'1534808','Lake','http://www.shinyanga.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/shinyanga.png'),
  ('Simiyu','Bariadi',5,25.212,'1584157','Lake','http://www.simiyu.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/simiyu.png'),
  ('Singida','Singida',5,49.437,'1370637','Central','http://www.singida.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/singida.png'),
  ('Songwe','Songwe',5,49.437,'1370637','Central','http://www.songwe.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/songwe.png'),
  ('Tabora','Tabora',7,76.151,'2291623','Central','http://www.tabora.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/tabora.png'),
  ('Tanga','Tanga',8,27.348,'2045205','Northern','http://www.tanga.go.tz','http://tovuti.youtanzaniaadventure.co.tz/assets/imgs/regions/tanga.png');

