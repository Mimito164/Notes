-- Mostrar para todos los rubros de artículos código, detalle, cantidad de artículos de ese
-- rubro y stock total de ese rubro de artículos. Solo tener en cuenta aquellos artículos que
-- tengan un stock mayor al del artículo ‘00000000’ en el depósito ‘00’.

SELECT rubr_id, rubr_detalle, COUNT(prod_codigo) "cantidad de artículos", SUM(stoc_cantidad) "stock total"
FROM Rubro
JOIN Producto ON rubr_id=prod_rubro
JOIN STOCK ON prod_codigo = stoc_producto
GROUP BY rubr_id, rubr_detalle
HAVING SUM(stoc_cantidad) > (
    SELECT stoc_cantidad
    FROM Producto
    JOIN STOCK on stoc_producto=prod_codigo
    JOIN DEPOSITO on depo_codigo = stoc_deposito
    WHERE prod_codigo = '00000000' AND depo_codigo = '00'
)
ORDER BY SUM(stoc_cantidad) ASC