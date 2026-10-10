# ControlTime Pro Smart Access

## 1. Información general

- **Nombre del proyecto:** ControlTime Pro Smart Access
- **Repositorio:** ControlTime-Pro-BD
- **Institución:** Instituto Católico Karol Wojtyla
- **Nivel académico:** Tercer año de Bachillerato Vocacional en Desarrollo de Software
- **Módulo:** BTVDS 3.5 — Desarrollo de Componentes para Dispositivos Móviles
- **Asignatura relacionada:** Administración de Bases de Datos
- **Año:** 2026

## 2. Descripción del proyecto

ControlTime Pro Smart Access es un proyecto tecnológico orientado al control de acceso y asistencia del personal docente del Instituto Católico Karol Wojtyla. El sistema contempla una aplicación móvil desarrollada en MIT App Inventor, una base de datos diseñada en PostgreSQL y un componente electrónico basado en Arduino y tecnología RFID para identificar a los docentes y registrar sus entradas y salidas.

Este repositorio permite organizar los archivos relacionados con la base de datos, los scripts SQL, el diagrama entidad-relación, la documentación y las evidencias del desarrollo.

## 3. Problema identificado

El registro manual de entradas y salidas de los docentes puede generar errores al anotar horarios, pérdida de información y dificultades para consultar registros anteriores. Además, la revisión de la asistencia puede requerir tiempo cuando los datos no están organizados en un sistema centralizado.

## 4. Solución propuesta

Se propone desarrollar un sistema que permita identificar a los docentes mediante tarjetas RFID, registrar sus entradas y salidas mediante el componente electrónico y consultar la información desde una aplicación móvil destinada a los administradores.

La aplicación contempla el inicio de sesión, el menú principal y la consulta del historial de asistencia. PostgreSQL se utilizará para almacenar y organizar la información del sistema.

La integración futura entre MIT App Inventor y PostgreSQL se plantea mediante una API o servicio web. Google Sheets se utilizó como parte de las pruebas del prototipo, por lo que no debe confundirse con una integración definitiva con PostgreSQL.

## 5. Objetivos

### Objetivo general

Desarrollar un sistema de control de acceso y asistencia docente que permita organizar los registros y facilitar su consulta mediante herramientas tecnológicas.

### Objetivos específicos

- Diseñar una aplicación móvil para el acceso administrativo y la consulta de asistencia.
- Organizar la información del personal docente y los registros mediante una base de datos PostgreSQL.
- Diseñar la relación entre las funciones del sistema y las operaciones de la base de datos.
- Incorporar la identificación mediante RFID y el registro electrónico de entradas y salidas como parte del proyecto.
- Realizar pruebas para verificar las funciones desarrolladas y detectar errores.

## 6. Tecnologías y herramientas utilizadas

- **MIT App Inventor:** diseño y programación de la aplicación móvil.
- **PostgreSQL:** sistema gestor de base de datos.
- **pgAdmin 4:** administración y ejecución de consultas SQL.
- **Arduino:** componente electrónico para el registro de acceso y asistencia.
- **RFID RC522:** identificación de tarjetas de los docentes.
- **Bluetooth:** comunicación con dispositivos compatibles, según la configuración del prototipo.
- **Git:** control de versiones.
- **GitHub:** almacenamiento del código, documentación y evidencias.

## 7. Integrantes y responsabilidades

### Ricardo Alexander Aguillón Ortiz

- Desarrollo de interfaces y programación de bloques en MIT App Inventor.
- Creación y organización de la base de datos PostgreSQL.
- Elaboración de tablas y consultas SQL.
- Apoyo en la integración y documentación técnica.

### Leslie Stefany Ayala Flores

- Colaboración en el desarrollo de interfaces de MIT App Inventor.
- Apoyo en la elaboración de consultas SQL.
- Participación en la documentación y organización del proyecto.

### Flor Stefany Campos Palacios

- Colaboración en el diseño de interfaces de la aplicación móvil.
- Participación en la elaboración y revisión de la documentación.

## 8. Funcionalidades del sistema

### Funcionalidades desarrolladas o con avances

- Diseño de la pantalla de inicio de sesión para administradores.
- Diseño del menú principal de la aplicación.
- Diseño de la pantalla de historial de asistencia.
- Diseño de la pantalla de Bluetooth.
- Creación de tablas y ejecución de consultas SQL en PostgreSQL.
- Organización del proyecto mediante un repositorio de GitHub.

### Funcionalidades pendientes de completar o validar

- Verificación de la validación de credenciales y permisos administrativos.
- Comprobación de la consulta y actualización de los registros de asistencia.
- Validación de la comunicación Bluetooth con el dispositivo electrónico.
- Integración futura mediante una API o servicio web entre la aplicación y PostgreSQL.
- Realización y documentación de pruebas funcionales.

**Nota:** la presencia de una pantalla o de una tabla no significa que todas sus funciones estén terminadas. El estado debe actualizarse conforme se realicen las pruebas.

## 9. Base de datos

La base de datos del proyecto se denomina **Control Time Pro** y está diseñada en PostgreSQL.

Las tablas principales contempladas son:

| Tabla | Propósito |
|---|---|
| `maestros` | Almacenar la información del personal docente y sus datos de acceso. |
| `materia` | Organizar la información de las materias. |
| `horarios` | Registrar los horarios asignados a los docentes. |
| `asistencia_profesores` | Organizar los registros de entrada y salida. |
| `permisos` | Registrar los permisos del personal docente. |
| `sustitutos` | Registrar las sustituciones de docentes. |

Los nombres anteriores deben coincidir con los nombres reales de las tablas creadas en PostgreSQL.

### Operaciones SQL utilizadas

- `CREATE TABLE`: creación de tablas.
- `INSERT`: inserción de registros.
- `SELECT`: consulta de información.
- `UPDATE`: actualización de registros.
- `DELETE`: eliminación de registros.

### Relación entre la aplicación y la base de datos

Las funciones de consulta de docentes, consulta del historial y administración de la información se relacionan con las tablas correspondientes de PostgreSQL.

La arquitectura prevista para una integración futura es:

**MIT App Inventor → API o servicio web → PostgreSQL**

Esta arquitectura se documenta como propuesta y no como una integración terminada mientras no se haya implementado y probado.

## 10. Estructura del repositorio

Los archivos y carpetas principales del repositorio permiten organizar el trabajo del equipo. Entre ellos se encuentran:

- `app-inventor/`: archivos relacionados con la aplicación móvil.
- `integracion/`: documentación y recursos relacionados con la integración del sistema.
- `Aportes de ricardo/`: archivos y aportes correspondientes al trabajo de Ricardo.
- `Aportes_de_leslie/`: archivos y aportes correspondientes al trabajo de Leslie.
- `03_consultas.semana3.sql`: consultas SQL del proyecto.
- `bd_intime_base_sin_modificaciones.sql`: archivo SQL de la base de datos.
- `diagrama_entidad_relación.png`: diagrama de la estructura de la base de datos.
- `README.md`: descripción y documentación general del repositorio.

La estructura debe actualizarse si se agregan, eliminan o renombran archivos.

## 11. Instrucciones básicas de uso

1. Descargar o clonar el repositorio.
2. Abrir los archivos SQL con pgAdmin 4.
3. Crear o seleccionar la base de datos correspondiente antes de ejecutar los scripts.
4. Ejecutar los scripts en el orden adecuado, según sus dependencias.
5. Revisar los resultados de las consultas y comprobar que los datos coincidan con las tablas creadas.
6. Para trabajar con la aplicación móvil, abrir el proyecto correspondiente en MIT App Inventor.

**Importante:** realizar una copia de seguridad antes de ejecutar scripts que modifiquen o eliminen registros. No ejecutar archivos SQL sin revisar su contenido y las operaciones que contienen.

## 12. Evidencias del proyecto

Las evidencias del desarrollo pueden consultarse en los archivos y registros del repositorio:

- Capturas de las pantallas desarrolladas en MIT App Inventor.
- Evidencias de creación y consulta de tablas en PostgreSQL.
- Diagrama entidad-relación.
- Scripts SQL y resultados de consultas.
- Historial de commits.
- Ramas de trabajo y pull requests.

Las evidencias deben corresponder con las actividades realmente realizadas por el equipo.

## 13. Estado actual del proyecto

El proyecto se encuentra en etapa de desarrollo. Se cuenta con avances en el diseño de las pantallas móviles, la organización de la base de datos PostgreSQL, la elaboración de consultas SQL y el control de versiones mediante GitHub.

Queda pendiente completar o validar determinadas funciones, documentar los resultados de las pruebas e implementar la integración entre la aplicación y PostgreSQL mediante una API o servicio web.

## 14. Seguridad de la información

- No publicar contraseñas, tokens, claves privadas ni credenciales de conexión.
- No incluir contraseñas reales del personal docente en los archivos del repositorio.
- Utilizar datos ficticios en las pruebas y capturas de evidencia.
- Revisar los scripts SQL antes de ejecutarlos.
- Restringir los permisos de acceso a la base de datos según las necesidades del sistema.

## 15. Conclusión

El repositorio ControlTime-Pro-BD permite organizar los avances técnicos de ControlTime Pro Smart Access y mantener los archivos relacionados con la base de datos, las consultas SQL, los diagramas y la documentación. Su organización facilita el seguimiento del trabajo realizado por el equipo y la continuación del desarrollo de las funciones pendientes.
