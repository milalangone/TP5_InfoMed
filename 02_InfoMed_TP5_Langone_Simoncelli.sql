SELECT m.nombre AS nombre_medico, COUNT(r.id_medico) AS cantidad_recetas
FROM recetas r
RIGHT JOIN medicos m ON r.id_medico = m.id_medico
GROUP BY m.nombre
ORDER BY cantidad_recetas DESC;
