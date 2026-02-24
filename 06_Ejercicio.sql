--Ejercicio 6 ¿Cuál fue el monto total de ventas en toda la historia?
--Pista: SUM(total_venta) desde la tabla ventas.
SELECT SUM(total_venta) AS Monto_Total_Ventas
FROM ventas;
-- El monto total de ventas en toda la historia es: $5.578.915