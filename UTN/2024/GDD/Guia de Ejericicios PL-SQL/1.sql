-- Hacer una función que dado un artículo y un deposito devuelva un string que
-- indique el estado del depósito según el artículo. Si la cantidad almacenada es
-- menor al límite retornar “OCUPACION DEL DEPOSITO XX %” siendo XX el
-- % de ocupación. Si la cantidad almacenada es mayor o igual al límite retornar
-- “DEPOSITO COMPLETO”.

DROP FUNCTION ocupacion
GO
CREATE FUNCTION ocupacion(@articulo char(8), @deposito char(2)) 
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @cantidad DECIMAL(12,2), @maximo NUMERIC(12,2), @estado VARCHAR(100)

    SELECT @cantidad = stoc_cantidad, @maximo = stoc_stock_maximo
    FROM STOCK
    WHERE   stoc_producto = @articulo
    AND     stoc_deposito = @deposito
    IF @cantidad < @maximo
        set @estado = 'OCUPACION DEL DEPOSITO ' + RTRIM(@deposito) +' '+  LTRIM(STR(@cantidad/@maximo*100))+'%'
    ELSE
        set @estado = 'DEPOSITO COMPLETO'
    RETURN @estado
END
GO

SELECT stoc_producto, stoc_detalle, dbo.ocupacion(stoc_producto, stoc_deposito) 
FROM STOCK
