--Ejercicio 20 Para cada categoría de producto, calcula el ingreso total, cantidad de unidades vendidas y ticket promedio por venta.
--Pista: GROUP BY categoria, SUM(total_venta), COUNT(*), AVG().
SELECT 
    p.categoria,
    SUM(dv.cantidad * p.precio) AS ingreso_total,
    SUM(dv.cantidad) AS unidades_vendidas,
    ROUND(AVG(dv.cantidad * p.precio), 2) AS ticket_promedio
FROM detalle_ventas dv
JOIN productos p ON dv.id_producto = p.id_producto
GROUP BY p.categoria;
-- Para cada categoría de producto, el ingreso total, cantidad de unidades vendidas y ticket promedio por venta son:
-- Categoría: Paracaídas, Ingreso Total: 4218900, Unidades Vendidas: 1248, Ticket Promedio: 5083.01
-- Categoría: Accesorios, Ingreso Total: 1719400, Unidades Vendidas: 2548, Ticket Promedio: 1016.79
 