USE ECommerce

INSERT INTO Lojas (RazaoSocial)
VALUES			  ('SENAI Shop')

INSERT INTO Categorias (IdLoja, Nome)
VALUES				   (1, 'Cursos'),
					   (1, 'Acessórios')

INSERT INTO	SubCategorias (Nome, IdCategoria)
VALUES                    ('Informática Básica', 1),
						  ('Desenvolvimento', 1),
						  ('Relógio', 2),
						  ('Camisetas', 2)

INSERT INTO Produtos (IdSubCategoria, Titulo, Valor)
VALUES				 (3, 'Galaxy Watch', 500.00),
					 (4, 'Jaqueta', 100.00),
					 (2, 'C#', 700.00)

INSERT INTO Clientes (Nome)
VALUES				 ('Gabriel')

INSERT INTO Pedidos (NumPedido, DataPedido, IdCliente)
VALUES				(1, '08/04/2022', 1)

INSERT INTO PedidosProdutos (IdPedido, IdProduto)
VALUES						(1, 2),
							(1, 3)
