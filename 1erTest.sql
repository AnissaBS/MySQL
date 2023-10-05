create database banque; 
show databases;
use banque;
CREATE TABLE Adresse(
   ID_adresse INT,
   cp VARCHAR(50),
   rue VARCHAR(50),
   ville VARCHAR(50),
   PRIMARY KEY(ID_adresse)
);

CREATE TABLE Personne(
   ID_personne VARCHAR(50),
   PRIMARY KEY(ID_personne)
);

CREATE TABLE Banque(
   ID_banque VARCHAR(50),
   nom_banque VARCHAR(50),
   PRIMARY KEY(ID_banque)
);

CREATE TABLE Travailler(
   ID_personne VARCHAR(50),
   ID_banque VARCHAR(50),
   PRIMARY KEY(ID_personne, ID_banque),
   FOREIGN KEY(ID_personne) REFERENCES Personne(ID_personne),
   FOREIGN KEY(ID_banque) REFERENCES Banque(ID_banque)
);

CREATE TABLE possède(
   ID_adresse INT,
   ID_banque VARCHAR(50),
   PRIMARY KEY(ID_adresse, ID_banque),
   FOREIGN KEY(ID_adresse) REFERENCES Adresse(ID_adresse),
   FOREIGN KEY(ID_banque) REFERENCES Banque(ID_banque)
);

CREATE TABLE Habiter(
   ID_adresse INT,
   ID_personne VARCHAR(50),
   PRIMARY KEY(ID_adresse, ID_personne),
   FOREIGN KEY(ID_adresse) REFERENCES Adresse(ID_adresse),
   FOREIGN KEY(ID_personne) REFERENCES Personne(ID_personne)
);

