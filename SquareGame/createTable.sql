
DROP DATABASE if exists square_game;
CREATE DATABASE square_game;
USE square_game;
CREATE TABLE Adresse(
    idAdr VARCHAR(30),
    rue numeric(10),
    codePostal numeric(5),
    ville VARCHAR(30),
	CONSTRAINT c_primary_key_idAdr PRIMARY KEY (idAdr)
);


CREATE TABLE Parent(
    idParent VARCHAR(30),
    idAdr VARCHAR(30),
    nameParent VARCHAR(50),
	CONSTRAINT c_primary_key_idParent PRIMARY KEY (idParent),
    CONSTRAINT c_foreign_key_idAdr FOREIGN KEY (idAdr) REFERENCES Adresse(idAdr)
);


CREATE TABLE UserPlayer(
	idUser VARCHAR(30),
    idAdr VARCHAR(30),
    idParent VARCHAR(30),
    loginUser VARCHAR(30),
    password VARCHAR(50),
    dateNaissanceUser DATE,
	CONSTRAINT c_primary_key_idUser PRIMARY KEY (idUser),
    CONSTRAINT c_foreign_key_idAdr FOREIGN KEY (idAdr) REFERENCES Adresse(idAdr),
	CONSTRAINT c_foreign_key_idParent FOREIGN KEY (idParent) REFERENCES Parent(idParent)
);


INSERT INTO Adresse (idAdr, rue, codePostal, ville) VALUES
(1, 12, 38000, 'Grenoble'),
(2, 65, 38400, 'Saint-Martin-Heres');


INSERT INTO Parent (idParent, idAdr, nameParent) VALUES
(1, 1, 'Victor Hugo'),
(2, 2, 'Martin');


INSERT INTO UserPlayer (idUser, idAdr, idParent, loginUser, password, dateNaissanceUser) VALUES
(1, 12, 38000, 'Grenoble'),
(2, 65, 38400, 'Saint-Martin-Heres');

