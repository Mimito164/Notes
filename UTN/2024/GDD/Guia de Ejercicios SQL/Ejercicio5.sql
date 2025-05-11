-- Realizar una consulta que muestre código de artículo, detalle y cantidad de egresos de
-- stock que se realizaron para ese artículo en el año 2012 (egresan los productos que
-- fueron vendidos). Mostrar solo aquellos que hayan tenido más egresos que en el 2011.

SELECT prod_codigo, prod_detalle, SUM(item_cantidad) as Egresos_2012, YEAR(fact_fecha)
FROM Producto p1
JOIN Item_Factura on prod_codigo = item_producto
JOIN Factura on item_tipo = fact_tipo and item_sucursal = fact_sucursal and item_numero = fact_numero
WHERE YEAR(fact_fecha) = 2012
GROUP BY prod_codigo, prod_detalle, YEAR(fact_fecha)
HAVING SUM(item_cantidad) > (
    SELECT SUM(item_cantidad)
    FROM Item_Factura
    JOIN Factura on item_tipo = fact_tipo and item_sucursal = fact_sucursal and item_numero = fact_numero
    WHERE YEAR(fact_fecha) = 2011 AND p1.prod_codigo = item_producto
)
ORDER BY prod_codigo ASC

-- SELECT prod_codigo, prod_detalle, SUM(item_cantidad) as Egresos_2012, YEAR(fact_fecha)
-- FROM Producto p1
-- JOIN Item_Factura on prod_codigo = item_producto
-- JOIN Factura on item_tipo = fact_tipo and item_sucursal = fact_sucursal and item_numero = fact_numero
-- WHERE YEAR(fact_fecha) = 2012
-- GROUP BY prod_codigo, prod_detalle, YEAR(fact_fecha)
-- HAVING SUM(item_cantidad) > (
--     SELECT SUM(item_cantidad)
--     FROM Producto p2
--     JOIN Item_Factura on prod_codigo = item_producto
--     JOIN Factura on item_tipo = fact_tipo and item_sucursal = fact_sucursal and item_numero = fact_numero
--     WHERE YEAR(fact_fecha) = 2011 AND p1.prod_codigo = p2.prod_codigo
-- )
-- ORDER BY prod_codigo ASC