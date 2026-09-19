-- 1. Crear el nuevo usuario de trabajo con su contraseña de prueba
CREATE USER control_time_pro_access WITH PASSWORD 'ricardo1234';

-- 2. Asegurar que el usuario pueda iniciar sesión
ALTER ROLE control_time_pro WITH LOGIN;

-- 3. Otorgar permiso para conectarse a la base de datos
-- (Reemplaza 'db_controltime' por el nombre exacto de tu base de datos)
GRANT CONNECT ON DATABASE db_controltime TO control_time_pro_access;

-- 4. Otorgar permisos de lectura y escritura en las tablas
GRANT USAGE ON SCHEMA public TO control_time_pro_access;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO control_time_pro_access;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO control_time_pro_access;