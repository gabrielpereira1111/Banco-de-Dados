USE Locadora

SELECT * FROM Empresas
SELECT * FROM Veiculos
SELECT * FROM Modelos
SELECT * FROM Marcas
SELECT * FROM Alugueis
SELECT * FROM Clientes


SELECT Veiculos.Placa, Empresas.Nome AS 'Empresa', Modelos.Descricao AS 'Modelo' FROM Veiculos
INNER JOIN Empresas
ON Veiculos.IdEmpresa = Empresas.IdEmpresa
INNER JOIN Modelos
ON Veiculos.IdModelo = Modelos.IdModelo

SELECT MO.Descricao AS 'Modelo', MA.Nome AS 'Marca' FROM Modelos AS MO
INNER JOIN Marcas AS MA
ON MO.IdMarca = MA.IdMarca

SELECT A.DataInicio, A.DataFim, C.Nome, M.Descricao FROM Alugueis AS A
INNER JOIN Clientes AS C
ON A.IdCliente = C.IdCliente
INNER JOIN Veiculos AS V
ON A.IdVeiculo = V.IdVeiculo
INNER JOIN Modelos AS M
ON V.IdModelo = M.IdModelo