SELECT p.nombre AS nombre_paciente, COUNT(r.id_paciente) AS cantidad_recetas
FROM recetas r
RIGHT JOIN pacientes p ON r.id_paciente = p.id_paciente
GROUP BY p.nombre