USE Optus

INSERT INTO Artistas (Nome)
VALUES				 ('Joji'),
					 ('Kanye West')

INSERT INTO Albuns (Titulo, DataLancamento, Localizacao, QtdMinutos, Ativo, IdArtista)
VALUES			   ('Nectar', '25/09/2020', 'Estados Unidos', 53, 1, 1),
				   ('The College Dropout', '10/02/2004', 'Estados Unidos', 76, 1, 2)

INSERT INTO Estilos (Nome)
VALUES				('Alternative R&B'),
					('Neo-Soul'),
					('Hip Hop'),
					('Progressive Rap')

INSERT INTO AlbunsEstilos (IdAlbum, IdEstilo)
VALUES					  (3, 1),
						  (3, 2),
						  (4, 3),
						  (4, 4)

INSERT INTO Usuarios(Nome, Email, Senha, Permissao)
VALUES				('Gabriel', 'gabriel_pereira02@outlook.com.br', 'gabriel123', 1)