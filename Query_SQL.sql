INSERT Into etudiant values (NULL,"Joseph","Jean Moliere","004-275-128-6","2,Rue Beaufort,Delmas 30");

SELECT * FROM etudiant

SELECT PrenomEt from etudiant where NomEt="Joseph"


Create Table Produit (IdPro Int(6) Primary key AUTO_INCREMENT,
NomPro Varchar(20) NOT NULL UNIQUE,
Marque Varchar(30),
Prix float(6,2),
Qstock smallint CHECK(Qstock BETWEEN 0 AND 100),
CHECK (Marque <> 'IBM' OR Qstock < 10))

CREATE TABLE Client (
IdCli Varchar(4) PRIMARY KEY,
nom Varchar(20),
ville Varchar(30)
CHECK(ville IN('Delmas','Port-au-Prince','Petion-Ville')))


CREATE TABLE Vente(
IdCli varchar(4) NOT NULL,
IdPro int(6) NOT NULL,
datev DATE NOT NULL,
Qte Smallint CHECK (Qte BETWEEN 1 AND 10),
-- contrainte de table
PRIMARY KEY (IdCli,IdPro,datev),
FOREIGN KEY (IdPro) REFERENCES produit (IdPro),
FOREIGN KEY (IdCli) REFERENCES client (IdCli)
)