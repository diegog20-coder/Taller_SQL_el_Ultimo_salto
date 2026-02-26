--Ejercicio 16 Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto total.
--Pista: SUM(total_venta), GROUP BY id_cliente, JOIN con clientes, ORDER BY y LIMIT.
SELECT 
    c.nombre, 
    SUM(v.total_venta) AS monto_total
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY monto_total DESC
LIMIT 1;
