SELECT 
    m.nup_docente,
    m.nombre,
    m.correo,
    a.id_asistencia,
    a.fecha,
    a.estado
FROM maestros m
INNER JOIN asistencia_profesores a
    ON m.nup_docente = a.nup_docente;

	SELECT 
    m.nup_docente,
    m.nombre,
    h.id_horario,
    h.dia_semana,
    h.hora_inicio,
    h.hora_fin,
    ma.nombre_materia
FROM maestros m
INNER JOIN horarios h
    ON m.nup_docente = h.nup_docente
INNER JOIN materia ma
    ON h.id_materia = ma.id_materia;

	SELECT COUNT(*) AS total_registros_asistencia
FROM asistencia_profesores;

SELECT 
    estado,
    COUNT(*) AS cantidad
FROM asistencia_profesores
GROUP BY estado;

SELECT 
    m.nup_docente,
    m.nombre,
    COUNT(h.id_horario) AS cantidad_horarios
FROM maestros m
INNER JOIN horarios h
    ON m.nup_docente = h.nup_docente
GROUP BY m.nup_docente, m.nombre;

SELECT 
    m.nup_docente,
    m.nombre
FROM maestros m
LEFT JOIN asistencia_profesores a
    ON m.nup_docente = a.nup_docente
WHERE a.id_asistencia IS NULL;

SELECT 
    ma.id_materia,
    ma.nombre_materia
FROM materia ma
LEFT JOIN horarios h
    ON ma.id_materia = h.id_materia
WHERE h.id_horario IS NULL;

SELECT 
    tipo_contrato,
    COUNT(*) AS cantidad
FROM maestros
GROUP BY tipo_contrato;

UPDATE maestros
SET tipo_contrato = 'Tiempo completo'
WHERE LOWER(tipo_contrato) = 'tiempo completo';

SELECT 
    tipo_contrato,
    COUNT(*) AS cantidad
FROM maestros
GROUP BY tipo_contrato;

Consultas que hice en la semana 3 
