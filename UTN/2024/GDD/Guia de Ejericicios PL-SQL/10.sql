-- Crear el/los objetos de base de datos que ante el intento de borrar un artículo
-- verifique que no exista stock y si es así lo borre en caso contrario que emita un
-- mensaje de error.

create TRIGGER ej10 on Producto
INSTEAD OF DELETE
AS
BEGIN
DECLARE @cantidad DECIMAL(12,2)
SELECT  @cantidad = stoc_cantidad FROM Producto join STOCK on stoc_producto = prod_codigo 
IF @cantidad <= 0
    PRINT 'error'
    
END