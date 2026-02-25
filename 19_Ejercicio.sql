--Ejercicio 19 ¿Cuál es el producto más vendido en cantidad (en términos de unidades, no dinero)?
-- Pista: SUM(cantidad) sobre detalle_ventas, GROUP BY producto, JOIN con productos.
SELECT p.nombre, SUM(dv.cantidad) AS total_unidades_vendidas
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto  
GROUP BY dv.id_producto
ORDER BY total_unidades_vendidas DESC
LIMIT 1;
-- El producto más vendido en cantidad es el "Gafa de noche Infra Ventiladas" con 274 unidades vendidas.