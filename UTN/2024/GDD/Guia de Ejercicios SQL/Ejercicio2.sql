-- Mostrar el código, detalle de todos los artículos vendidos en el año 2012 ordenados por cantidad vendida.

-- select prod_detalle, prod_codigo, sum(item_cantidad)
select prod_detalle, prod_codigo
FROM Factura 
    JOIN Item_Factura on fact_tipo = item_tipo and fact_sucursal = item_sucursal and fact_numero = item_numero      
    join Producto on item_producto = prod_codigo
where year(fact_fecha) = 2012
group BY prod_codigo, prod_detalle
ORDER by sum(item_cantidad)
