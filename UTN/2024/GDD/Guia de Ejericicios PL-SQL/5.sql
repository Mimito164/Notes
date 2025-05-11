-- Realizar un procedimiento que complete con los datos existentes en el modelo
-- provisto la tabla de hechos denominada Fact_table tiene las siguiente definición:

-- Create table Fact_table
-- ( anio char(4) not NULL,
-- mes char(2) not NULL,
-- familia char(3) not NULL,
-- rubro char(4) not NULL,
-- zona char(3) not NULL,
-- cliente char(6) not NULL,
-- producto char(8) not NULL,
-- cantidad decimal(12,2),
-- monto decimal(12,2)
-- )
-- Alter table Fact_table
-- Add constraint PK_Fact_table primary key(anio,mes,familia,rubro,zona,cliente,producto)


CREATE PROCEDURE completar_Fact_table
AS
BEGIN
    INSERT INTO Fact_table 
    SELECT
        cast (YEAR(fact_fecha) as char(4)),
        RIGHT('0' + str(MONTH(fact_fecha)),2),
        prod_familia,
			   prod_rubro,
			   depa_zona,
			   fact_vendedor,
			   prod_codigo,
			   item_cantidad,
			   item_precio
    FROM Factura
    JOIN Item_Factura
        ON fact_tipo = item_tipo
        AND fact_sucursal = item_sucursal
        AND fact_numero = item_numero
    JOIN Producto
        ON prod_codigo = item_producto
    JOIN Empleado
        ON empl_codigo = fact_vendedor
    join Departamento
        ON depa_codigo = empl_departamento

END
GO

SELECT * from dbo.Fact_table
GO

create procedure completarFacts
as
begin
    INSERT INTO Fact_table
	SELECT YEAR(fact_fecha)
		,RIGHT('0' + convert(varchar(2),MONTH(fact_fecha)),2)
		,prod_familia
		,prod_rubro
		,depa_zona
		,fact_cliente
		,prod_codigo
		,SUM(item_cantidad)
		,sum(item_precio)
	FROM Factura F
		INNER JOIN Item_Factura IFACT
			ON IFACT.item_tipo =f.fact_tipo AND IFACT.item_sucursal = F.fact_sucursal AND IFACT.item_numero = F.fact_numero
		INNER JOIN Producto P
			ON P.prod_codigo = IFACT.item_producto
		INNER JOIN Empleado E
			ON E.empl_codigo = F.fact_vendedor
		INNER JOIN Departamento D
			ON D.depa_codigo = E.empl_departamento
	GROUP BY YEAR(fact_fecha)
		,RIGHT('0' + convert(varchar(2),MONTH(fact_fecha)),2)
		,prod_familia
		,prod_rubro
		,depa_zona
		,fact_cliente
		,prod_codigo
end
GO

exec completarFacts 