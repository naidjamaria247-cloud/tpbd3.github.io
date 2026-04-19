DROP DATABASE IF EXISTS guest_db;
CREATE DATABASE guest_db;
USE guest_db;

SET NAMES utf8mb4;


DROP TABLE IF EXISTS Emprunt;
DROP TABLE IF EXISTS Livre;
DROP TABLE IF EXISTS Adherent;
DROP TABLE IF EXISTS Auteur;

CREATE TABLE Auteur (
    id_auteur INT PRIMARY KEY,
    nom VARCHAR(30),
    prenom VARCHAR(30),
    pays VARCHAR(30)
);

CREATE TABLE Livre (
    id_livre INT PRIMARY KEY,
    titre VARCHAR(50),
    annee INT,
    id_auteur INT,
    FOREIGN KEY (id_auteur) REFERENCES Auteur(id_auteur)
);

CREATE TABLE Adherent (
    id_adh INT PRIMARY KEY,
    nom VARCHAR(30),
    prenom VARCHAR(30),
    ville VARCHAR(30)
);

CREATE TABLE Emprunt (
    id_emprunt INT PRIMARY KEY,
    id_livre INT,
    id_adh INT,
    date_emprunt DATE,
    FOREIGN KEY (id_livre) REFERENCES Livre(id_livre),
    FOREIGN KEY (id_adh) REFERENCES Adherent(id_adh)
);


INSERT INTO Auteur VALUES
(1,'Hugo','Victor','France'),
(2,'Camus','Albert','Algérie'),
(3,'Orwell','George','UK'),
(4,'Zola','Emile','France'),
(5,'Balzac','Honoré','France'),
(6,'Dumas','Alexandre','France'),
(7,'Moliere','Jean','France'),
(8,'Flaubert','Gustave','France'),
(9,'Kafka','Franz','Allemagne'),
(10,'Tolstoi','Leon','Russie'),
(11,'Dostoevski','Fedor','Russie'),
(12,'Shakespeare','William','UK'),
(13,'Neruda','Pablo','Chili'),
(14,'Hemingway','Ernest','USA'),
(15,'Twain','Mark','USA'),
(16,'Verne','Jules','France'),
(17,'Eco','Umberto','Italie'),
(18,'Coelho','Paulo','Brésil'),
(19,'Mahfouz','Naguib','Egypte'),
(20,'Achebe','Chinua','Nigeria'),
(21,'Benali','Mohamed','Algeria'),
(22,'Benmohamed','yahia','Algeria'),
(23,'Benmouneh','abed','Tunisia');




INSERT INTO Livre VALUES
(1,'LesMiserables',1862,1),(2,'Letranger',1942,2),(3,'1984',1949,3),(4,'La Peste',1947,2),
(5,'Germinal',1885,4),(6,'Illusions perdues',1837,5),(7,'Les Trois Mousquetaires',1844,6),
(8,'Madame Bovary',1857,8),(9,'Le Proces',1925,9),(10,'Guerre et Paix',1869,10),
(11,'Crime et Chatiment',1866,11),(12,'SQL pour les Nuls',2020,12),(13,'Le vieil homme et la mer',1952,14),
(14,'Le tour du monde en 80 jours',1873,16),(15,'Le nom de la rose',1980,17),
(16,'LAlchimiste',1988,18),(17,'Palais du desir',1957,19),(18,'Things fall apart',1958,20),
(19,'Livre19',2001,1),(20,'Livre20',2002,2),(21,'Livre21',2003,3),(22,'Livre22',2004,4),
(23,'Livre23',2005,5),(24,'Livre24',2006,6),(25,'Livre25',2007,7),(26,'Livre26',2008,8),
(27,'Livre27',2009,9),(28,'Livre28',2010,10),(29,'Livre29',2011,11),(30,'Livre30',2012,12),
(31,'Livre31',2013,13),(32,'Livre32',2014,14),(33,'Livre33',2015,15),(34,'Livre34',2016,16),
(35,'Livre35',2017,17),(36,'Livre36',2018,18),(37,'Livre37',2019,19),(38,'Livre38',2020,20),
(39,'Livre39',2021,1),(40,'Livre40',2022,2),(41,'Livre41',2023,3),(42,'Livre42',2024,4),
(43,'SQL Les fondamentaux du langage',2020,5),(44,'Livre44',2019,6),(45,'Livre45',2018,7),(46,'Livre46',2017,8),
(47,'Livre47',2016,9),(48,'Livre48',2015,10),(49,'Livre49',2014,11),(50,'Livre50',2013,12), (51,'Livre51',2013,21),(52,'Livre52',2013,22), (53,'Livre53',2013,23); 
INSERT INTO Adherent VALUES
(1,'Ali','Karim','Alger'),(2,'Sara','Nina','Oran'),(3,'Yacine','Amine','Constantine'),
(4,'Meriem','Sana','Alger'),(5,'Nadia','Lina','Oran'),(6,'Samir','Walid','Setif'),
(7,'Rachid','Kamel','Annaba'),(8,'Salim','Nabil','Blida'),(9,'Amel','Ines','Tlemcen'),
(10,'Lina','Aya','Batna'),(11,'User11','Test','Alger'),(12,'User12','Test','Oran'),
(13,'User13','Test','Constantine'),(14,'User14','Test','Alger'),(15,'User15','Test','Oran'),
(16,'User16','Test','Setif'),(17,'User17','Test','Annaba'),(18,'User18','Test','Blida'),
(19,'User19','Test','Tlemcen'),(20,'User20','Test','Batna'),
(21,'User21','Test','Alger'),(22,'User22','Test','Oran'),(23,'User23','Test','Constantine'),
(24,'User24','Test','Alger'),(25,'User25','Test','Oran'),(26,'User26','Test','Setif'),
(27,'User27','Test','Annaba'),(28,'User28','Test','Blida'),(29,'User29','Test','Tlemcen'),
(30,'User30','Test','Batna'),(31,'User31','Test','Alger'),(32,'User32','Test','Oran'),
(33,'User33','Test','Constantine'),(34,'User34','Test','Alger'),(35,'User35','Test','Oran'),
(36,'User36','Test','Setif'),(37,'User37','Test','Annaba'),(38,'User38','Test','Blida'),
(39,'User39','Test','Tlemcen'),(40,'User40','Test','Batna'),
(41,'User41','Test','Alger'),(42,'User42','Test','Oran'),(43,'User43','Test','Constantine'),
(44,'User44','Test','Alger'),(45,'User45','Test','Oran'),(46,'User46','Test','Setif'),
(47,'User47','Test','Annaba'),(48,'User48','Test','Blida'),(49,'User49','Test','Tlemcen'),
(50,'User50','Test','Batna');



INSERT INTO Emprunt VALUES
(1,1,1,'2025-01-10'),(2,2,1,'2023-02-12'),(3,3,2,'2023-03-05'),(4,4,3,'2023-04-01'),
(5,5,4,'2023-05-01'),(6,6,5,'2023-06-01'),(7,7,6,'2023-07-01'),(8,8,7,'2023-08-01'),
(9,9,8,'2023-09-01'),(10,10,9,'2023-10-01'),
(11,12,10,'2023-01-11'),(12,12,11,'2023-02-11'),(13,13,12,'2023-03-11'),
(14,14,13,'2025-04-11'),(15,15,14,'2023-05-11'),(16,16,15,'2023-06-11'),
(17,17,16,'2023-07-11'),(18,18,17,'2023-08-11'),(19,19,18,'2023-09-11'),
(20,20,19,'2025-10-11');

SELECT * FROM Adherent
WHERE ville = 'Alger';

SELECT * FROM Livre
WHERE annee BETWEEN 2000 AND 2015;

SELECT * FROM Adherent
WHERE ville IN ('Alger', 'Oran', 'Constantine');

SELECT COUNT(*) AS nombre_livres FROM Livre;

SELECT * FROM Auteur
WHERE nom LIKE 'ben%';
SELECT * FROM Livre
WHERE titre LIKE '%SQL%';
SELECT L.*
FROM Livre L
LEFT JOIN Emprunt E ON L.id_livre = E.id_livre
WHERE E.id_livre IS NULL;
SELECT COUNT(DISTINCT id_livre) AS total_empruntes
FROM Emprunt;
SELECT *
FROM Livre
WHERE id_livre NOT IN (
    SELECT id_livre
    FROM Emprunt
    WHERE date_emprunt < '2000-01-01'
);

SELECT l.titre, a.nom
FROM livre l JOIN Auteur a ON l.id_auteur = a.id_auteur;

SELECT ad.nom, l.titre, e.date_emprunt
FROM Emprunt e JOIN Adherent ad ON e.id_adh = ad.id_adh JOIN Livre l ON e.id_livre = l.id_livre
WHERE  year(date_emprunt)=2025;

SELECT livre.titre FROM livre 
JOIN emprunt  ON livre.id_livre = emprunt.id_livre JOIN adherent  ON emprunt.id_adh = adherent.id_adh
WHERE livre.titre LIKE '%SQL%'
AND adherent.nom = 'Lina Aya';

SELECT livre.titre
FROM livre 
JOIN auteur  ON livre.id_auteur =auteur.id_auteur WHERE auteur.pays IN ('france', 'Algerie');