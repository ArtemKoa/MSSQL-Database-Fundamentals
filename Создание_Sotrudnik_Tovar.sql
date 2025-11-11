use SBUT_PRODOVOLSTVIA_SKLAD

CREATE TABLE Sotrudnik_Tovar(
	ID_Sotrudnik_Tovar INT IDENTITY(1, 1),	--PK
	ID_Sotrudnik INT NOT NULL,	--FK1
	ID_Tovar INT NOT NULL,	--FK2

	CONSTRAINT PK_Sotrudnik_Tovar PRIMARY KEY(ID_Sotrudnik_Tovar),	--Ограничение PK

	CONSTRAINT FK_Sotrudnik_Tovar1 FOREIGN KEY(ID_Sotrudnik)	--Ограничение FK1
	REFERENCES Sotrudnik(ID_Sotrudnik),	--на таблицу Sotrudnik

	CONSTRAINT FK_Sotrudnik_Tovar2 FOREIGN KEY(ID_Tovar)	--Ограничение FK2
	REFERENCES Tovar(ID_Tovar)	--на таблицу Tovar
);