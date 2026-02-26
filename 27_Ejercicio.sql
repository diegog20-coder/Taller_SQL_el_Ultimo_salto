--Ejercicio 27 ¿Cuál es la diferencia en ingresos entre el mes con mayor venta y el mes con menor venta en 2025?
--Pista: CTE para calcular ingresos por mes, luego MAX() - MIN().
WWITH ingresos_por_mes AS (
    SELECT 
        strftime('%m', fecha_venta) AS mes,
        SUM(total_venta) AS ingresos
    FROM ventas
    WHERE strftime('%Y', fecha_venta) = '2025'
    GROUP BY mes
)
SELECT 
    MAX(ingresos) - MIN(ingresos) AS diferencia_ingresos
FROM ingresos_por_mes;
-- La diferencia en ingresos entre el mes con mayor venta y el mes con menor venta en 2025 es de aproximadamente $98593