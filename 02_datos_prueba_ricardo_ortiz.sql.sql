-------- Semana 2 ---------------------
--------------------------------------------|
---Insert permisos y sustituto--------------|
--------------------------------------------|	
INSERT INTO public.permisos
(id_permiso, nup_docente, tipo, fecha_inicio, fecha_fin, motivo, estado)
VALUES
(6, 'DOC006', 'Médico', '2026-09-10', '2026-09-12', 'Consulta médica especializada', 'Aprobado'),
(7, 'DOC007', 'Personal', '2026-09-15', '2026-09-15', 'Trámite bancario', 'Pendiente'),
(8, 'DOC008', 'Capacitación', '2026-09-20', '2026-09-22', 'Curso de actualización docente', 'Aprobado'),
(9, 'DOC009', 'Médico', '2026-09-25', '2026-09-26', 'Reposo por enfermedad común', 'Pendiente'),
(10, 'DOC0010', 'Personal', '2026-09-28', '2026-09-28', 'Asunto familiar urgente', 'Aprobado');


INSERT INTO public.sustitutos(
    id_reemplazo, id_horario, nup_docente_titular, nup_docente_suplente, fecha, motivo)
VALUES
(6, 1, 'DOC001', 'DOC002', '2026-09-25', 'Cubre por trámite personal'),
(7, 2, 'DOC002', 'DOC003', '2026-09-28', 'Cubre por incapacidad médica'),
(8, 3, 'DOC003', 'DOC004', '2026-10-05', 'Cubre por capacitación docente'),
(9, 4, 'DOC004', 'DOC005', '2026-10-08', 'Cubre por permiso personal'),
(10, 5, 'DOC005', 'DOC001', '2026-10-12', 'Cubre por incapacidad médica');



-------- Semana 3 ---------------------

UPDATE permisos
SET motivo = ''
WHERE id_permiso = 10;




UPDATE permisos
SET fecha_fin = '2026-09-05'
WHERE id_permiso = 8;