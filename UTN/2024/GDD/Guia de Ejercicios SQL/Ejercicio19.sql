-- En virtud de una recategorizacion de productos referida a la familia de los mismos se
-- solicita que desarrolle una consulta sql que retorne para todos los productos:
--  - Codigo de producto
--  - Detalle del producto
--  - Codigo de la familia del producto
--  - Detalle de la familia actual del producto
--  - Codigo de la familia sugerido para el producto
--  - Detalla de la familia sugerido para el producto
-- La familia sugerida para un producto es la que poseen la mayoria de los productos cuyo
-- detalle coinciden en los primeros 5 caracteres.
-- En caso que 2 o mas familias pudieran ser sugeridas se debera seleccionar la de menor
-- codigo. Solo se deben mostrar los productos para los cuales la familia actual sea
-- diferente a la sugerida
-- Los resultados deben ser ordenados por detalle de producto de manera ascendente

SELECT prod_codigo, prod_detalle, fami_id, fami_detalle, (
    SELECT TOP 1 fami_id, fami_detalle
    -- SELECT fami_id, fami_detalle, prod_detalle
    FROM Familia
    JOIN Producto P2
        ON prod_familia = fami_id
    WHERE 
        LEFT(P2.prod_detalle, 5) = LEFT(prod_detalle, 5)
        AND prod_familia != fami_id  
    GROUP BY fami_id
    ORDER BY COUNT(*) DESC, prod_codigo ASC
)
FROM Producto
CROSS JOIN Familia
-- WHERE prod_familia != fami_id
GROUP BY fami_id, fami_detalle
ORDER BY COUNT(*)



SELECT TOP 1 fami_id, fami_detalle
-- SELECT fami_id, fami_detalle, prod_detalle
FROM Familia
JOIN Producto
    ON prod_familia = fami_id
WHERE 
    LEFT(prod_detalle, 5) = 'HACIE'
    AND prod_familia != fami_id  
GROUP BY fami_id, prod_codigo
ORDER BY COUNT(*) DESC, prod_codigo ASC