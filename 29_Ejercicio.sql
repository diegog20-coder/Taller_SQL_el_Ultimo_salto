--Ejercicio 29 ¿Cuál es el porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO"?
--Pista: SUM(total_venta) con y sin cupón, luego calcula (ventas_con_cupón / total) * 100.
WITH ventas_con_cupon AS (
    SELECT SUM(total_venta) AS total_con_cupon
    FROM ventas
    WHERE cupon_usado = 'ULTIMO_SUSPIRO'
),
ventas_totales AS (
    SELECT SUM(total_venta) AS total_ventas
    FROM ventas
)
SELECT 
    ROUND((ventas_con_cupon.total_con_cupon / ventas_totales.total_ventas), 2) * 100 AS porcentaje_ventas_con_cupon
FROM ventas_con_cupon, ventas_totales;
-- El porcentaje de ventas (por ingresos) que provienen del cupón "ULTIMO_SUSPIRO" es aproximadamente 15%.