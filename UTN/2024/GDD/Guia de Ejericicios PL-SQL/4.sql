-- Cree el/los objetos de base de datos necesarios para actualizar la columna de
-- empleado empl_comision con la sumatoria del total de lo vendido por ese
-- empleado a lo largo del último año. Se deberá retornar el código del vendedor
-- que más vendió (en monto) a lo largo del último año.

ALTER PROCEDURE actualizar_comision @codigo_mayor_vendedor NUMERIC(6) OUTPUT
AS
BEGIN
    SELECT TOP 1 @codigo_mayor_vendedor = fact_vendedor
    FROM Factura
    WHERE YEAR(fact_fecha) = (SELECT TOP 1 YEAR(fact_fecha) FROM Factura ORDER BY fact_fecha DESC)
    GROUP BY fact_vendedor
    ORDER BY SUM(fact_total)


    UPDATE Empleado
    SET empl_comision = (
        SELECT SUM(fact_total) 
        FROM Factura 
        WHERE 
            fact_vendedor = empl_codigo  
            AND YEAR(fact_fecha) = (SELECT TOP 1 YEAR(fact_fecha) FROM Factura ORDER BY fact_fecha DESC)
        GROUP BY fact_vendedor
    )
    
END
GO

DECLARE @elMasCapito NUMERIC(6)

EXEC actualizar_comision @elMasCapito OUTPUT
PRINT @elMasCapito 
GO

