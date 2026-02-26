--Ejercicio 22 Crea una clasificación de clientes por nivel de gasto:
--o "Alto Valor" si gastó más de $5,000
--o "Medio Valor" si gastó entre $2,000 y $5,000
--o "Bajo Valor" si gastó menos de $2,000
--o Muestra nombre, categoría de gasto y total gastado.
--Pista: GROUP BY + CASE WHEN para clasificación.
SELECT 
    c.nombre,
    CASE 
        WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
        WHEN SUM(v.total_venta) >= 2000 AND SUM(v.total_venta) <= 5000 THEN 'Medio Valor'
        ELSE 'Bajo Valor'
    END AS categoria_gasto,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre;

