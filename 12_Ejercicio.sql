--Ejercicio 12 ¿Cuál es el precio promedio de los productos en stock?
--Pista: AVG(precio) desde productos.
SELECT ROUND(AVG(precio), 2) AS precio_promedio
FROM productos
WHERE precio > 0;
--el precio promedio de los productos en stock es 1591,33