--¿Cuál es el paracaídas más caro que tenemos?
-- Pista: MAX() + WHERE para filtrar categoría.
SELECT nombre, precio
FROM productos
WHERE precio = (SELECT MAX(precio) FROM productos WHERE categoria = 'Paracaídas');
--