SELECT m.nombre AS nombre_medicamento, COUNT(r.id_medicamento) AS cantidad_recetas
FROM medicamentos m
JOIN recetas r ON r.id_medicamento = m.id_medicamento
GROUP BY m.nombre
ORDER BY COUNT(r.id_medicamento) DESC
LIMIT 1;
