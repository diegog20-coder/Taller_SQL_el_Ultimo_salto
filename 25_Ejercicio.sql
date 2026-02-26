--Ejercicio 25 ¿Cuál es el cliente que compró la mayor variedad de productos diferentes (no cantidad, sino tipos distintos)?
--Pista: COUNT(DISTINCT id_producto), GROUP BY id_cliente, ORDER BY DESC, LIMIT 1.
SELECT 
    c.nombre AS cliente,
    COUNT(DISTINCT dv.id_producto) AS variedad_productos
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN detalle_ventas dv ON v.id_venta = dv.id_venta 
GROUP BY v.id_cliente, c.nombre
ORDER BY variedad_productos DESC
LIMIT 1;
-- El cliente que compró la mayor variedad de productos diferentes es "Dimas Ambrosio Hernando Bermudez" con 13 tipos distintos de productos.