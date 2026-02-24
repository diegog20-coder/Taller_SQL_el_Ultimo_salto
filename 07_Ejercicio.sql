--Ejercicio 7 Enlista todos los productos de "Accesorios" con precio menor a $500.
--Pista: WHERE con múltiples condiciones.
SELECT nombre, precio
FROM productos
WHERE categoria = 'Accesorios' AND precio < 500
ORDER BY precio ASC;
-- La respuesta es: 5 productos de "Accesorios" tienen precio menor a $500.