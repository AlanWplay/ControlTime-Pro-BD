INSERT INTO public.maestros(
nup_docente, nombre, correo,contrasena_hash, rol, tipo_contrato)
VALUES 
('DOC006', 'Criseyda Guadalupe','Criss@clases.edu.sv','Crisi29_hash','docente','tiempo completo'),
('DOC007','Marlon Stanley','Marlon@clases.edu.sv','Marlito23_hash','Director','Medio tiempo'),
('DOC008','Elvin Saul','ElvinSi@clases.edu.sv','Sibrian4523_hash','Docente','Tiempo completo'),
('DOC009','Diana Marisol','Dianita@clases.edu.sv','Marisol83_hash','Docente','Tiempo compleo'),
('DOC0010','Delmy Melissa','Delmys@clases.edu.sv','Delmiris_hash','Directora','Tiempo completo');

SELECT * FROM maestros;

*Tabla materia*

INSERT INTO materia (id_materia, nombre_materia, nivel_o_grado)
VALUES
(6, 'Programación', '1° Bachillerato'),
(7, 'Diseño web', '3° Bachillerato'),
(8, 'Diseño de portales web ', '2° Bachillerato'),
(9, 'Arquitectura de Software', '2° Bachillerato'),
(10, 'Algoritmos', '1° Bachillerato');

SELECT * FROM materia;