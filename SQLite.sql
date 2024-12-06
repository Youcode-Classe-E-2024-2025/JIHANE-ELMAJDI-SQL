--Création des tables(Livres,clients)
CREATE TABLE Livres (
id INT 
AUTO_INCREMENT PRIMARY KEY,
titre VARCHAR(255) NOT NULL,
auteur VARCHAR(255) NOT NULL,
prix DECIMAL (5,2) NOT NULL,
stock INT NOT NULL
  );

CREATE TABLE Clients(
id INT 
AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
date_inscription DATE NOT NULL);

--Insertion des données
insert INTO Livres (titre,auteur,prix,stock)VALUES
('Les Misérables','Victor Hugo',20.50,12),
('Le petit Prince','Antoine de Saint-Exupéry',15.99,5),
('1984','Georges Orwell',18.00,8),
('Harry Potter et la pierre philosophale','J.K.Rowling',25.00,10);

INSERT INTO Clients (nom,email,date_inscription)VALUES
('Jean Dupont','jean.dupont@email.fr','10-01-2024'),
('Alice Martin','alice.martin@email.fr','15-02-2024'),
('Bob Robert','bob.robert@email.fr','20-03-2024');
--Les requetes demandées
--1)
SELECT titre,auteur,prix
FROM Livres;

--2)
SELECT *
FROM Livres 
WHERE prix > 20.00;

--3)
SELECT *
FROM Clients 
WHERE date_inscription>'01-02-2024';

--4)
UPDATE Livres 
SET stock = stock - 1
WHERE titre = '1984';

--5)
SELECT * FROM Clients
WHERE email = 'bob.robert@email.fr';

--6)
INSERT INTO Livres (titre,auteur,prix,stock)VALUES
('Le seigneur des Anneaux','JRR Tolkien',30.00,7);
