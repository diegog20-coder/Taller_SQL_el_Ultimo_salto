--Ejercicio 9 ¿Cuál fue la venta con mayor monto en toda la historia?
--Pista: MAX(total_venta).
SELECT id_venta, MAX(total_venta)
FROM ventas;
-- La venta con mayor monto en toda la historia es: Venta ID 1124 con un total de $20.200