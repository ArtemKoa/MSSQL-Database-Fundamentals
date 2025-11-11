use SBUT_PRODOVOLSTVIA_SKLAD

CREATE TABLE Tovar(
	ID_Tovar INT IDENTITY(1, 1),	--PK
	QR_kod_tovara BIGINT UNIQUE NOT NULL,
	Naimenovanie VARCHAR(30),
	Cena MONEY,
	Srok_izgotovlenia DATE,
	Srok_okonchania_godnosti DATE,
		--Проверка на то, чтобы срок окончания был позже чем срок изготовления
		CHECK (Srok_okonchania_godnosti > Srok_izgotovlenia),	
	Proizvoditel VARCHAR(50),
	Status_tovara VARCHAR(25),
	ID_Sklad INT NOT NULL,	--FK

	CONSTRAINT PK_Tovar PRIMARY KEY(ID_Tovar),	--Ограничение PK
	CONSTRAINT FK_Tovar FOREIGN KEY(ID_Sklad)	--Ограничение FK
	REFERENCES Sklad(ID_Sklad)
);	