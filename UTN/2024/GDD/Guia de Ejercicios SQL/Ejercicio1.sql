-- Mostrar el código, razón social de todos los clientes cuyo límite de crédito sea mayor o igual a $ 1000 ordenado por código de cliente.

select 
    clie_codigo,
    clie_razon_social,
    clie_limite_credito
from Cliente
where clie_limite_credito >= 1000
order by clie_codigo