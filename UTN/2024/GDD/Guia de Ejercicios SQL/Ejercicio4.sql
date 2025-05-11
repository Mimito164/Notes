-- Realizar una consulta que muestre para todos los artículos código, detalle y cantidad de
-- artículos que lo componen. Mostrar solo aquellos artículos para los cuales el stock
-- promedio por depósito sea mayor a 100.

-- select prod_codigo, prod_detalle, count(comp_componente) cantidad, avg(stoc_cantidad) promedio
-- select prod_codigo, prod_detalle, count(comp_cantidad)
-- from Producto
--     left join Composicion on prod_codigo = comp_producto
--     join STOCK on prod_codigo = stoc_producto
-- group BY prod_codigo, prod_detalle
-- having AVG(stoc_cantidad) > 100
-- order BY cantidad DESC
--     join STOCK on prod_codigo = stoc_producto
-- group by prod_codigo, prod_detalle, comp_cantidad, stoc_cantidad, stoc_deposito


-- select stoc_producto, avg(stoc_cantidad)
-- from STOCK
-- group by stoc_producto

SELECT  P.prod_codigo, P.prod_detalle, 
        ISNULL(SUM(C.comp_cantidad),0) as cant_comp, 
        AVG(ISNULL(S.stoc_cantidad,0)) as stock_promedio_dep
FROM Producto P
LEFT JOIN Composicion C ON C.comp_producto = P.prod_codigo
CROSS JOIN Deposito D
LEFT JOIN Stock S 
    ON S.stoc_producto = P.prod_codigo
    AND S.stoc_deposito = D.depo_codigo
GROUP BY P.prod_codigo, P.prod_detalle
HAVING AVG(ISNULL(S.stoc_cantidad,0)) > 100