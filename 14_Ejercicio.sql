--Ejercicio 14 Muestra todas las ventas realizadas en el año 2025, ordenadas por fecha (más recientes primero).
--Pista: WHERE + YEAR(), ORDER BY DESC.
SELECT *
FROM ventas
WHERE fecha_venta BETWEEN '2025-01-01' AND '2025-12-31'
ORDER BY fecha_venta DESC;
