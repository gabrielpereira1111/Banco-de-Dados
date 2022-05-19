USE Optus

SELECT * FROM Artistas
SELECT * FROM Albuns
SELECT * FROM Estilos
SELECT * FROM AlbunsEstilos
SELECT * FROM Usuarios

SELECT AR.Nome AS 'Artista', AL.Titulo as 'Álbum'  FROM Albuns AS AL
INNER JOIN Artistas AS AR
ON AL.IdArtista = AR.IdArtista

SELECT AL.Titulo AS 'Álbum', E.Nome AS 'Estilo' FROM AlbunsEstilos AS AE
INNER JOIN Albuns AS AL
ON AE.IdAlbum = AL.IdAlbum
INNER JOIN Estilos AS E
ON E.IdEstilo = AE.IdEstilo