-- Ejercicio 5 Muestra el nombre, correo y fecha de nacimiento de todos los clientes, ordenados alfabéticamente por nombre.
-- Pista: SELECT simple con ORDER BY.
SELECT nombre, correo, fecha_nacimiento
FROM clientes
ORDER BY nombre ASC;