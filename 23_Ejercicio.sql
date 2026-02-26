--Ejercicio 23 ¿Cuáles son los 5 productos con mayor ingresos acumulado?
--Pista: JOIN detalle_ventas con productos, SUM(cantidad * precio_unitario), GROUP BY, ORDER BY DESC, LIMIT 5.
SELECT 
    p.nombre AS producto,
    SUM(dv.cantidad * dv.precio_unitario) AS ingresos_acumulados
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto 
GROUP BY dv.id_producto, p.nombre
ORDER BY ingresos_acumulados DESC
LIMIT 5;
