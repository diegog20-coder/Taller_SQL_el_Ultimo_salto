--Ejercicio 16 Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.
--Pista: SUM(total_venta), GROUP BY id_cliente, JOIN con clientes, ORDER BY y LIMIT.
SELECT c.nombre, SUM(v.total_venta) AS total_gastado
FROM ventas
JOIN clientes c ON ventas.id_cliente = c.id_cliente
GROUP BY ventas.id_cliente