--Ejercicio 13 ¿Cuántos productos tenemos en la categoría "Paracaídas"?
-- Pista: COUNT() + WHERE categoria.
SELECT COUNT(*) AS total_paracaidas
FROM productos
WHERE categoria = 'Paracaídas';
--tenemos 5 productos en la categoría "Paracaídas".