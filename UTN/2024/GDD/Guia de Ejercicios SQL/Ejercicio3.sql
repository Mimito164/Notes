-- Realizar una consulta que muestre código de producto, nombre de producto y el stock
-- total, sin importar en que deposito se encuentre, los datos deben ser ordenados por
-- nombre del artículo de menor a mayor.

select trim(prod_codigo) "Codigo", trim(prod_detalle), sum(stoc_cantidad)
from Producto
    JOIN STOCK on stoc_producto = prod_codigo
group by prod_codigo, prod_detalle
ORDER BY prod_detalle desc