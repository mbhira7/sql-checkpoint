CREATE TABLE Kategori (
	ID SERIAL,
	Navn VARCHAR(45) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Spraak (
	ID SERIAL,
	Navn VARCHAR(45) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Utgiver (
	ID SERIAL,
	Navn VARCHAR(128) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE Podkast (
	ID SERIAL,
	KategoriID INT,
	SpraakID INT,
	UtgiverID INT,
	Navn VARCHAR(128) NOT NULL,
	Beskrivelse TEXT NOT NULL,
	Bilde TEXT,
	PRIMARY KEY (ID),
	FOREIGN KEY (KategoriID) REFERENCES Kategori(ID),
	FOREIGN KEY (SpraakID) REFERENCES Spraak(ID),
	FOREIGN KEY (UtgiverID) REFERENCES Utgiver(ID)
);

INSERT INTO Kategori VALUES 
(DEFAULT, 'Helse'),
(DEFAULT, 'Tech'),
(DEFAULT, 'Reise');

INSERT INTO Spraak VALUES
(DEFAULT, 'Engelsk'),
(DEFAULT, 'Norsk');

INSERT INTO Utgiver VALUES
(DEFAULT, 'Per Hansen'),
(DEFAULT, 'Ingrid Moe');

INSERT INTO Podkast VALUES
(DEFAULT, 1, 1, 2, 'Keto diett', 'Beskrivelse av keto', 'www.bildeUrl/bilde.jpeg'),
(DEFAULT, 3, 2, 1, 'Nyttige tips for bestilling av flybiletter', 'Beskrivelse av tips', 'www.bildeUrl/bilde2.jpeg');