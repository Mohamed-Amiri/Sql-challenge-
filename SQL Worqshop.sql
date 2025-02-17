create table  Avion  (
ID int primary key,
Nom varchar(255),
Capacite int,
Localite varchar (255)

);

create table  Pilote (
ID int PRIMARY KEY ,
Nom varchar(255),
Adresse varchar(255)

);

DROP table IF EXISTS vol;
create table vol (
	ID int PRIMARY KEY,
	PiloteID int,
	AvionID int, 
	Depart varchar(255),
	Arive varchar(255), 
	HeureDépart int,
	HeurArrive int,
	FOREIGN KEY (AvionID) REFERENCES Avion(ID),
	FOREIGN KEY (PiloteID) REFERENCES Pilote(ID)

);

INSERT INTO Avion (ID, nom, Capacite, Localite)
VALUES 
   (100, 'AIRBUS',  300, 'RABAT'),
   (101, 'B737',    250, 'CASA'),
   (102, 'B737',    150, 'RABAT');
   SELECT * FROM Avion;
   
SELECT * FROM  Avion 
ORDER BY nom DESC;


