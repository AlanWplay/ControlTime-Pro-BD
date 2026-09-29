SELECT * FROM maestros;

SELECT * FROM maestros
WHERE tipo_contrato = 'Medio tiempo';

SELECT * FROM maestros
ORDER BY nombre ASC;

UPDATE maestros
SET tipo_contrato = 'Medio Tiempo'
WHERE nup_docente = 'DOC009';

UPDATE maestros
SET rol = 'Directora'
WHERE nup_docente = 'DOC006';

SELECT *
FROM maestros
WHERE nup_docente IN ('DOC009', 'DOC006');

DELETE FROM maestros
WHERE nup_docente = 'DOC0010';

SELECT *
FROM maestros;

Consultas con las preguntas 

SELECT nup_docente, nombre, correo, rol, tipo_contrato
FROM maestros
ORDER BY nombre ASC;


SELECT m.nombre AS docente,
       ma.nombre_materia,
       h.dia_semana,
       h.hora_inicio,
       h.hora_fin
FROM horarios h
JOIN maestros m ON h.nup_docente = m.nup_docente
JOIN materia ma ON h.id_materia = ma.id_materia
ORDER BY h.dia_semana, h.hora_inicio;


SELECT m.nombre AS docente,
       ma.nombre_materia,
       a.fecha,
       a.estado
FROM asistencia_profesores a
JOIN maestros m ON a.nup_docente = m.nup_docente
JOIN horarios h ON a.id_horario = h.id_horario
JOIN materia ma ON h.id_materia = ma.id_materia
ORDER BY a.fecha DESC;

SELECT m.nombre AS docente,
       p.tipo,
       p.fecha_inicio,
       p.fecha_fin,
       p.motivo,
       p.estado
FROM permisos p
JOIN maestros m ON p.nup_docente = m.nup_docente
WHERE p.estado = 'Activo'
ORDER BY p.fecha_inicio DESC;

SELECT titular.nombre AS docente_titular,
       suplente.nombre AS docente_suplente,
       s.fecha,
       s.motivo
FROM sustitutos s
JOIN maestros titular
    ON s.nup_docente_titular = titular.nup_docente
JOIN maestros suplente
    ON s.nup_docente_suplente = suplente.nup_docente
ORDER BY s.fecha DESC;

*Tabla materia*

INSERT INTO materia (id_materia, nombre_materia, nivel_o_grado)
VALUES
(6, 'Programación', '1° Bachillerato'),
(7, 'Diseño web', '3° Bachillerato'),
(8, 'Diseño de portales web ', '2° Bachillerato'),
(9, 'Arquitectura de Software', '2° Bachillerato'),
(10, 'Algoritmos', '1° Bachillerato');

SELECT * FROM materia;

SELECT *
FROM materia;

SELECT nombre_materia, nivel_o_grado
FROM materia;

SELECT *
FROM materia
ORDER BY nombre_materia;

UPDATE materia
SET nivel_o_grado = '3°Bachillerato'
WHERE id_materia = 1;

UPDATE materia
SET nombre_materia = 'Diseño Web'
WHERE id_materia = 8;

SELECT *
FROM materia
ORDER BY id_materia;

DELETE FROM materia
WHERE id_materia = 8;


SELECT * FROM materia;

Consultas con preguntas

SELECT *
FROM materia
ORDER BY nombre_materia;

SELECT *
FROM materia
WHERE nivel_o_grado = '3° Bachillerato';

SELECT *
FROM materia
WHERE nombre_materia = 'Arquitectura de Software';

SELECT *
FROM materia
ORDER BY nivel_o_grado;

SELECT COUNT(*) AS total_materias
FROM materia;




