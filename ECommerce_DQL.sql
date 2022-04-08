USE ECommerce

SELECT * FROM Lojas
SELECT * FROM Categorias
SELECT * FROM SubCategorias
SELECT * FROM Produtos
SELECT * FROM PedidosProdutos
SELECT * FROM Pedidos
SELECT * FROM Clientes

SELECT PE.NumPedido as 'Pedido', PO.Titulo as 'Produto' FROM PedidosProdutos AS PP
INNER JOIN Pedidos AS PE
ON PP.IdPedido = PE.IdPedido
INNER JOIN Produtos AS PO
ON PO.IdProduto = PP.IdProduto

SELECT PO.Titulo AS 'Produto', S.Nome AS 'Categoria' FROM Produtos AS PO
INNER JOIN SubCategorias AS S
ON PO.IdSubCategoria = S.IdSubCategoria