USE Locadora

INSERT INTO Empresas (Nome)
VALUES				 ('Locadora de Carros')

INSERT INTO Marcas (Nome)
VALUES			   ('Fiat'),
				   ('Ford')

INSERT INTO Modelos (IdMarca, Descricao)
VALUES			    (1, 'Argo'),
					(2, 'Mustang')

INSERT INTO Veiculos (IdModelo, IdEmpresa, Placa)
VALUES				 (1, 1, '12AE408'),
					 (2, 1, '259PFL1')

INSERT INTO Clientes (Nome, CPF)
VALUES				 ('Gabriel Pereira', '47254552885'),
    				 ('João Almeida', '48562489231')

INSERT INTO Alugueis (IdVeiculo, IdCliente, DataInicio, DataFim)
VALUES				 (1, 2, '07/04/2022', '07/06/2022'),
					 (2, 1, '07/04/2022', '14/04/2022')