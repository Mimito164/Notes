-- Generar una consulta que muestre para cada artículo código, detalle, mayor precio
-- menor precio y % de la diferencia de precios (respecto del menor Ej.: menor precio =
-- 10, mayor precio =12 => mostrar 20 %). Mostrar solo aquellos artículos que posean
-- stock.

SELECT prod_codigo, MAX(item_precio) Maximo, MIN(item_precio) Minimo, (CONVERT(decimal(10,2),  (MAX(item_precio) -  MIN(item_precio)) / ((MAX(item_precio) + MIN(item_precio)/2) )*100 ))
FROM Producto
JOIN Item_Factura on item_producto = prod_codigo
JOIN STOCK ON stoc_producto = prod_codigo
WHERE stoc_cantidad > 0
GROUP BY prod_codigo
ORDER BY prod_codigo