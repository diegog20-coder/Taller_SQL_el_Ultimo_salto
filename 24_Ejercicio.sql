--Ejercicio 24 Para cada mes en 2025, calcula: total de ventas, número de transacciones, y ticket promedio.
--Pista: strftime('%m', fecha_venta) + GROUP BY mes, AVG(total_venta).
SELECT 
  CASE strftime('%m', fecha_venta)
    WHEN '01' THEN 'Enero'
    WHEN '02' THEN 'Febrero'
    WHEN '03' THEN 'Marzo'
    WHEN '04' THEN 'Abril'
    WHEN '05' THEN 'Mes_Mayo'
    WHEN '06' THEN 'Junio'
    WHEN '07' THEN 'Julio'
    WHEN '08' THEN 'Agosto'
    WHEN '09' THEN 'Septiembre'
    WHEN '10' THEN 'Octubre'
    WHEN '11' THEN 'Noviembre'
    WHEN '12' THEN 'Diciembre'
  END AS mes,
  COUNT(*) AS numero_transacciones,
  SUM(total_venta) AS total_ventas,
  ROUND(AVG(total_venta), 2) AS ticket_promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY strftime('%Y-%m', fecha_venta)
ORDER BY strftime('%Y-%m', fecha_venta);