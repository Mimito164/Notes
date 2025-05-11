-- Mostrar para el o los artículos que tengan stock en todos los depósitos, nombre del
-- artículo, stock del depósito que más stock tiene.

SELECT  prod_codigo, prod_detalle
FROM Producto
CROSS JOIN DEPOSITO
JOIN STOCK 
    ON stoc_producto = prod_codigo
    AND stoc_deposito = depo_codigo
    AND stoc_cantidad > 0
GROUP BY prod_codigo, prod_detalle
HAVING COUNT(stoc_deposito) = (SELECT COUNT(*) FROM DEPOSITO)
ORDER BY prod_codigo