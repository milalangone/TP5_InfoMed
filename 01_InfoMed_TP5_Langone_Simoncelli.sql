CREATE EXTENSION IF NOT EXISTS pg_trgm;
SELECT nombre, calle, numero
FROM Pacientes
WHERE SIMILARITY(LOWER(TRIM(ciudad)), LOWER('Buenos Aires')) > 0.5;  
