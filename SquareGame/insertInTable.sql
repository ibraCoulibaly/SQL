INSERT INTO Adresse (idAdr, rue, codePostal, ville) VALUES
(1, 12, 38000, 'Grenoble'),
(2, 65, 38400, 'Saint-Martin-Heres');


INSERT INTO Parent (idParent, idAdr, nameParent) VALUES
(1, 1, 'Victor Hugo'),
(2, 2, 'Martin');


INSERT INTO UserPlayer (idUser, idAdr, idParent, loginUser, password, dateNaissanceUser) VALUES
(1, 1, 1, 'monLogin', 'password', '2000-01-01'),
(2, 2, 2, 'monLogin1', 'password1', '2005-02-02');
