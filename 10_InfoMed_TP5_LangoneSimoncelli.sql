SELECT m.nombre, COUNT(DISTINCT r.id_paciente) AS total_pacientes
FROM recetas r
JOIN medicos m ON r.id_medico = m.id_medico
GROUP BY m.nombre
ORDER BY total_pacientes DESC;