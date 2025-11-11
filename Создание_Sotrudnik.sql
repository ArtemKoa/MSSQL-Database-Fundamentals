use SBUT_PRODOVOLSTVIA_SKLAD

CREATE TABLE Sotrudnik(
	ID_Sotrudnik INT IDENTITY(1, 1),	--PK
	Familia VARCHAR(35),
	Imya VARCHAR(25),
	Otchestvo VARCHAR(30),
	Grafik_raboti VARCHAR(3),
	Nomer_telefona_sotrudnika VARCHAR(20),
	ID_Doljnost INT NOT NULL,	--FK

	CONSTRAINT PK_Sotrudnik PRIMARY KEY (ID_Sotrudnik),	--Ограничение PK
	CONSTRAINT FK_Sotrudniki FOREIGN KEY (ID_Doljnost)	--Ограничение FK
	REFERENCES Doljnost(ID_Doljnost)
);