-- Cree el/los objetos de base de datos necesarios para corregir la tabla empleado
-- en caso que sea necesario. Se sabe que debería existir un único gerente general
-- (debería ser el único empleado sin jefe). Si detecta que hay más de un empleado
-- sin jefe deberá elegir entre ellos el gerente general, el cual será seleccionado por
-- mayor salario. Si hay más de uno se seleccionara el de mayor antigüedad en la
-- empresa. Al finalizar la ejecución del objeto la tabla deberá cumplir con la regla
-- de un único empleado sin jefe (el gerente general) y deberá retornar la cantidad
-- de empleados que había sin jefe antes de la ejecución.

BEGIN TRANSACTION T GO

CREATE PROCEDURE unico_jefe @cantidad_sin_jefe INT OUTPUT
AS
BEGIN
    DECLARE @nuevo_jefe NUMERIC(6)

    select @cantidad_sin_jefe = COUNT(*) FROM Empleado WHERE empl_jefe IS NULL
    SELECT TOP 1 @nuevo_jefe = empl_codigo   
    FROM Empleado
    WHERE empl_jefe is NULL
    ORDER BY empl_salario DESC, empl_ingreso ASC

    UPDATE Empleado
        SET empl_jefe = @nuevo_jefe
    WHERE empl_codigo != @nuevo_jefe AND empl_jefe IS NULL

END
GO


ROLLBACK TRANSACTION T GO

DECLARE @VARIABLE INT
exec  unico_jefe @VARIABLE OUTPUT 
print @VARIABLE