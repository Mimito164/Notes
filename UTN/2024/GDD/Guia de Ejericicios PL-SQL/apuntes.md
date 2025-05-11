# Apuntes T-SQL

# Funciones

Son como las funciones dadas por el motor de base de datos, solo que ahora definidas por nosotros

Se pueden usar en algun select.

A grandes rasgos hay dos tipos de funciones:
- Funciones escalares
- Funciones de valores de tabla

## Funciones escalares

```SQL
CREATE FUNCTION [ owner_name. ] nombre 
    ( [ @parameter_name [AS] tipo_dato [ = default ]  [ ,...n ] ] ) 
RETURNS tipo_dato
[ AS ] 
BEGIN 
     function_body 
      RETURN valor
END
```

- Retornan un unico valor de cualquier tipo, pero es un valor, no una tabla



## Funciones de valores de tabla en línea

```SQL
CREATE FUNCTION [ owner_name. ] nombre 
     ( [ @parameter_name [AS] tipo_dato [ =  default ] [ ,...n ] ] ) 
RETURNS TABLE 
[ AS ] 
RETURN [ ( ] select-statment [ ) ] 
```

- Retornan una tabla o matriz de datos
- Esta sintaxis es mas sintetica dado que en el cuerpo de la funcion va solamente un select

## Funciones de valores de tabla de múltiples instrucciones

```SQL
CREATE FUNCTION [ owner_name. ] nombre 
     ( [ @parameter_name [AS] tipo_dato [ = default ] [ ,...n ] ] ) 
RETURNS @return_variable TABLE  ( column_definition |  table_constraint  [ ,...n ] )
[ AS ] 
BEGIN 
      function_body 
     RETURN
END
```

- Retornan una tabla o matriz de datos
- Esta sintaxis es mas explicita a la hora de definir el tipo de retorno y el procedimiento a realizar cuando se ejecute la funcion.
- Hay que especificar el tipo de retorno
- Hay que especificar un procedimiento, lo que seria el "function body"

### Notas aparte mias

- para guardar variables fuera de un select se usa `set`

# Procedures

```sql
CREATE PROC[EDURE] nombre [ @parameter tipo_dato ] [ =  default ] [ OUTPUT ]  [ ,...n ] 
AS sql_statement [ ...n ] 
GO
```

- se puede modificar datos
- Son como funciones pero solamente retornan true o false cuando se pudo realizar o no el procedure
- Similar a lo que son los argumentos por referencia, los procedures pueden recibir argumentos por referencia permitiendoles guardad algun valor que se desee con el token `OUTPUT`.
- Para ejecutar un procedure se utiliza el token `EXECUTE nombreDelProcedure`

# Triggers

```sql
CREATE TRIGGER nombre  ON table | view  
FOR | AFTER | INSTEAD OF  [ INSERT ] [ , ] [ UPDATE ] [ , ] [ DELETE ]
AS 
sql_statement [ ...n ] 
```

- son similares a los procedures en el sentido de que pueden modificar datos
- no retornan valores, solamente true o false.
- Estan asociados a una tabla
- no son ejecutados perse, sino que se ejecutan al momento de ocurrir un evento (insert delete update) en una tabla. Luego podria afectar a otras tablas.

