--Ejercicio 8 ¿Cuántas ventas utilizaron el cupón "ULTIMO_SUSPIRO"?
--Pista: COUNT() con WHERE para el cupón específico.
SELECT COUNT(*) AS Ventas_Con_Cupon
FROM ventas
WHERE cupon = 'ULTIMO_SUSPIRO'; 
-- La respuesta es: 250 ventas utilizaron el cupón "ULTIMO_SUSPIRO".