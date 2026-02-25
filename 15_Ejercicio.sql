--Ejercicio 15 ¿Cuál es el accesorio más barato disponible?
--Pista: MIN(precio) + WHERE categoria = 'Accesorios'.
SELECT nombre, MIN(precio) AS Precio
FROM productos
WHERE categoria = 'Accesorios';
--el accesorio más barato disponible es el "Altímetro Analógico Confiable" con un precio de 150.    