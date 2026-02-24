--Ejercicio 10 Muestra todos los clientes de género "F" (femenino) ordenados por fecha de nacimiento (más viejitas primero).
-- Pista: WHERE genero = 'F' y ORDER BY fecha_nacimiento ASC.
SELECT nombre, genero, fecha_nacimiento
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;
