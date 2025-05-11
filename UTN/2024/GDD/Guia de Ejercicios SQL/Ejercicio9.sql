-- Mostrar el código del jefe, código del empleado que lo tiene como jefe, nombre del
-- mismo y la cantidad de depósitos que ambos tienen asignados.

SELECT empl_jefe, empl_nombre, empl_apellido, COUNT(DE.depo_codigo) "Depositos empleado",COUNT(DJ.depo_codigo) "Depositos jefe"
FROM Empleado
LEFT JOIN DEPOSITO DE
    ON DE.depo_encargado = empl_codigo
LEFT JOIN DEPOSITO DJ
    ON DJ.depo_encargado = empl_jefe
GROUP BY empl_jefe, empl_nombre, empl_apellido