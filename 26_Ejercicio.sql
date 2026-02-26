--Ejercicio 26 Identifica clientes que compraron SOLO paracaídas (nunca compraron accesorios). Muestra nombre y total gastado.
--Pista: Subconsulta o CTE para filtrar clientes cuyas compras contienen SOLO la categoría "Paracaídas".
WITH ClientesParacaidas AS (
    SELECT 
        c.id_cliente,
        c.nombre,
        SUM(v.total_venta) AS total_gastado
    FROM clientes c
    JOIN ventas v ON c.id_cliente = v.id_cliente
    JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
    JOIN productos p ON dv.id_producto = p.id_producto
    WHERE p.categoria = 'Paracaídas'
    GROUP BY c.id_cliente, c.nombre
), ClientesAccesorios AS (
    SELECT DISTINCT c.id_cliente
    FROM clientes c
    JOIN ventas v ON c.id_cliente = v.id_cliente
    JOIN detalle_ventas dv ON v.id_venta = dv.id_venta
    JOIN productos p ON dv.id_producto = p.id_producto
    WHERE p.categoria = 'Accesorios'
)
SELECT cp.nombre, cp.total_gastado
FROM ClientesParacaidas cp
WHERE cp.id_cliente NOT IN (SELECT id_cliente FROM ClientesAccesorios); 
-- Clientes que compraron SOLO paracaídas (nunca compraron accesorios) son  :   
-- Nombre: Leandra Benavent Baeza, Total Gastado: 12300