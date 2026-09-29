-- Semana 2, consultas realizadas

-------------------------------------------------------------------
Consultas
-------------------------------------------------------------------
-SELECT * FROM permisos;

-SELECT * FROM permisos
 order by fecha_inicio ASC;

-SELECT * FROM permisos
where estado = 'Aprobado';

-Select * from sustitutos;

-Select * from sustitutos
 where nup_docente_titular = 'DOC001';

-select * from sustitutos
 order by fecha asc;


--------------------------------------------------------------------
update
-------------------------------------------------------------------
--update sustitutos--
UPDATE sustitutos
SET
    nup_docente_titular = 'DOC004',
    nup_docente_suplente = 'DOC005'
WHERE id_reemplazo = 3;


-- update permisos ----


UPDATE permisos
SET motivo = 'Reunión familiar urgente'
WHERE id_permiso = 2;	




-----------------------------------------------------------------
Delete
-----------------------------------------------------------------

DELETE FROM permisos
WHERE id_permiso = 10;
SELECT * 
FROM permisos
WHERE id_permiso = 10;



DELETE FROM sustitutos
WHERE id_reemplazo = 10;
SELECT *
FROM sustitutos
WHERE id_reemplazo = 10;


----------------------------------------------------------
5 consultas básicas
----------------------------------------------------------

SELECT COUNT(*) AS total_permisos
FROM permisos;


SELECT *
FROM permisos
WHERE fecha_fin > fecha_inicio;


SELECT estado, COUNT(*) AS cantidad
FROM permisos
GROUP BY estado;


SELECT *
FROM permisos
ORDER BY fecha_inicio DESC;


SELECT *
FROM permisos
WHERE motivo ILIKE '%médica%';



SELECT nup_docente, COUNT(*) AS cantidad_permisos
FROM permisos
GROUP BY nup_docente
ORDER BY cantidad_permisos DESC;



-----------------------------------------------
-- Semana 3 --
-----------------------------------------------
-------------- Clase 1 --------------------
SELECT
    p.id_permiso,
    p.nup_docente,
    p.tipo,
    p.fecha_inicio,
    p.fecha_fin,
    s.nup_docente_suplente,
    s.fecha
FROM permisos p
INNER JOIN sustitutos s
ON p.nup_docente = s.nup_docente_titular;


SELECT
    p.nup_docente,
    p.tipo,
    p.estado,
    s.nup_docente_suplente
FROM permisos p
INNER JOIN sustitutos s
ON p.nup_docente = s.nup_docente_titular
WHERE p.estado = 'Aprobado';

------------- Clase 2 ---------------------
SELECT COUNT(*) AS total_permisos
FROM permisos;


SELECT
    estado,
    COUNT(*) AS cantidad
FROM permisos
GROUP BY estado;


SELECT
    nup_docente_titular,
    COUNT(*) AS total_sustituciones
FROM sustitutos2
GROUP BY nup_docente_titular;

	

---------------- Clase 3 ---------------------

SELECT *
FROM permisos
WHERE motivo IS NULL OR motivo = '';

SELECT *
FROM permisos
WHERE fecha_fin < fecha_inicio;


SELECT *
FROM sustitutos
WHERE nup_docente_suplente IS NULL
   OR nup_docente_suplente = '';






---- correcion ---------

UPDATE permisos
SET motivo = 'Motivo no especificado'
WHERE motivo IS NULL OR motivo = '';

UPDATE permisos
SET fecha_fin = fecha_inicio
WHERE fecha_fin < fecha_inicio;

