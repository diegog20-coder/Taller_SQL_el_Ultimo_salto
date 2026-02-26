--Ejercicio 30 Genera un análisis demográfico: para cada rango de edad (18-29, 30-39, ..., 70+), cuenta clientes únicos, número de transacciones e ingresos totales. Ordena por rango de edad.
--Pista: CASE WHEN para rangos de edad, GROUP BY rango, múltiples agregaciones.
SELECT 
    CASE 
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 18 AND 29 THEN '18-29'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 30 AND 39 THEN '30-39'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 40 AND 49 THEN '40-49'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 50 AND 59 THEN '50-59'
        WHEN (strftime('%Y', 'now') - strftime('%Y', c.fecha_nacimiento)) BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS clientes_unicos,
    COUNT(v.id_venta) AS numero_transacciones,
    SUM(v.total_venta) AS ingresos_totales
FROM clientes c
JOIN ventas v ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY 
    CASE 
        WHEN rango_edad = '18-29' THEN 1
        WHEN rango_edad = '30-39' THEN 2
        WHEN rango_edad = '40-49' THEN 3
        WHEN rango_edad = '50-59' THEN 4
        WHEN rango_edad = '60-69' THEN 5
        ELSE 6
    END;
