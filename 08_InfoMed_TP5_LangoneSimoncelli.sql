SELECT m.nombre as nombre_medico, p.nombre AS nombre_paciente, COUNT(c.id_consulta) AS total_consultas
FROM consultas c
JOIN medicos m ON c.id_medico = m.id_medico
JOIN pacientes p ON c.id_paciente = p.id_paciente
GROUP BY m.nombre, p.nombre
ORDER BY nombre_medico, nombre_paciente;