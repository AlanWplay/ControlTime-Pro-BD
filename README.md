ControlTime Pro Smart Access
Sistema inteligente de control de acceso y asistencia de docentes
1. Información general del proyecto
- Nombre del proyecto: ControlTime Pro Smart Access
- Repositorio: ControlTime-Pro-BD
- Institución: Instituto Católico Karol Wojtyla
- Nivel académico: Tercer año de Bachillerato Vocacional en Desarrollo de Software
- Módulo: BTVDS 3.5 — Desarrollo de Componentes para Dispositivos Móviles
- Asignatura relacionada: Administración de Bases de Datos
- Año: 2026
2. Descripción del proyecto
ControlTime Pro Smart Access es un proyecto tecnológico orientado a mejorar el control de acceso y la asistencia del personal docente del Instituto Católico Karol Wojtyla.

El proyecto contempla una aplicación móvil desarrollada en MIT App Inventor y una base de datos diseñada en PostgreSQL para organizar la información relacionada con los docentes, la asistencia, los horarios, las materias, los permisos y las sustituciones.

También se ha considerado el uso de Arduino y tecnología RFID para la identificación de los docentes, así como la comunicación Bluetooth dentro del prototipo.

Este repositorio reúne los archivos técnicos, scripts SQL, diagramas, documentación y evidencias relacionadas con el desarrollo del proyecto.
3. Problema identificado
El registro manual de las entradas y salidas de los docentes puede ocasionar errores al anotar los horarios, pérdida de información y dificultades para consultar registros anteriores. Además, cuando los datos no están organizados, revisar la asistencia puede requerir más tiempo.

Por esta razón, se propone una solución tecnológica que permita organizar la información y facilitar la consulta de los registros de asistencia del personal docente.
4. Solución propuesta
ControlTime Pro Smart Access propone utilizar una aplicación móvil y una base de datos para facilitar la administración y consulta de la información relacionada con el acceso y la asistencia de los docentes.

La aplicación cuenta con avances en las pantallas de inicio de sesión, menú principal, historial de asistencia y Bluetooth. La base de datos PostgreSQL permite estructurar la información mediante tablas relacionadas.

La integración entre MIT App Inventor y PostgreSQL se plantea mediante una API o servicio web. Actualmente, la aplicación no está conectada a PostgreSQL mediante esta integración; por ello, la conexión se considera una etapa pendiente de implementación y validación.
5. Objetivos
5.1. Objetivo general
Desarrollar un sistema tecnológico para organizar y facilitar el control de acceso y asistencia del personal docente mediante una aplicación móvil y una base de datos.
5.2. Objetivos específicos
- Diseñar una aplicación móvil para consultar y administrar información relacionada con la asistencia docente.
- Organizar la información mediante una base de datos PostgreSQL.
- Crear tablas, relaciones y consultas SQL para gestionar los datos del sistema.
- Documentar la correspondencia entre las funciones de la aplicación y la estructura de la base de datos.
- Considerar la identificación mediante RFID y la comunicación con dispositivos electrónicos.
- Realizar pruebas funcionales y documentar los resultados obtenidos.
- Organizar el código, la documentación y las evidencias en un repositorio GitHub.
6. Tecnologías y herramientas utilizadas
Tecnología o herramienta	Uso en el proyecto
MIT App Inventor	Diseño y programación de la aplicación móvil mediante bloques.
PostgreSQL	Diseño y organización de la base de datos.
pgAdmin 4	Administración de PostgreSQL y ejecución de consultas SQL.
Arduino	Plataforma considerada para el componente electrónico del prototipo.
RFID RC522	Módulo considerado para la identificación mediante tarjetas RFID.
Bluetooth	Comunicación con dispositivos compatibles, según la configuración del prototipo.
Google Sheets	Herramienta utilizada en pruebas y actividades del prototipo.
Git	Control de versiones de los archivos.
GitHub	Almacenamiento y organización del código, la documentación y las evidencias.


Nota: la inclusión de una tecnología en esta lista no significa que todas sus integraciones estén terminadas. El estado de cada función debe comprobarse mediante las pruebas realizadas.
7. Aplicación móvil
La aplicación móvil se desarrolla en MIT App Inventor y contiene avances en el diseño de las siguientes pantallas:
- Inicio de sesión: acceso a la aplicación.
- Menú principal: acceso a las secciones disponibles.
- Historial de asistencia: consulta de registros relacionados con la asistencia.
- Bluetooth: interfaz destinada a la comunicación con dispositivos compatibles.
7.1. Archivos de la aplicación
Los archivos de la aplicación se encuentran en la carpeta app-inventor/:
- app-inventor/INTIME.aia: archivo fuente del proyecto de MIT App Inventor.
- app-inventor/INTIME.apk: aplicación instalable para dispositivos Android.
Estos archivos deben mantenerse actualizados y comprobarse antes de la entrega.
7.2. Estado de las funcionalidades
Las pantallas diseñadas representan avances del proyecto, pero su presencia no garantiza que todas las operaciones estén terminadas. Las funciones deben describirse de acuerdo con los resultados de las pruebas realizadas.
8. Base de datos PostgreSQL
La base de datos del proyecto se denomina Control Time Pro y está diseñada en PostgreSQL.
8.1. Tablas principales
Tabla	Propósito
maestros	Almacenar la información relacionada con el personal docente.
materia	Organizar la información de las materias.
horarios	Registrar los horarios asignados a los docentes.
asistencia_profesores	Organizar los registros de asistencia, entradas y salidas.
permisos	Gestionar información relacionada con los permisos del personal docente.
sustitutos	Registrar información relacionada con las sustituciones de docentes.


Los campos, las claves primarias, las claves foráneas y las relaciones deben consultarse en los scripts SQL y en el diagrama entidad-relación del repositorio.
8.2. Operaciones SQL
Los scripts del proyecto contemplan operaciones para crear la estructura de la base de datos, insertar datos de prueba y administrar registros.
- CREATE TABLE: creación de tablas.
- INSERT: inserción de registros.
- SELECT: consulta de información.
- UPDATE: actualización de registros.
- DELETE: eliminación de registros.
Las operaciones deben ejecutarse después de revisar el contenido de los scripts y seleccionar la base de datos correcta.
8.3. Datos de prueba
Los datos de prueba permiten comprobar la estructura de las tablas y ejecutar consultas sin utilizar información real o sensible del personal docente.

Se deben utilizar datos ficticios para las pruebas y las capturas de pantalla que se publiquen en el repositorio.
9. Correspondencia entre la aplicación y la base de datos
La siguiente tabla describe la relación prevista entre las funciones de la aplicación y las tablas de PostgreSQL.
Función del sistema	Tabla relacionada	Operación prevista
Consulta de docentes	maestros	SELECT
Consulta del historial de asistencia	asistencia_profesores	SELECT
Registro de asistencia	asistencia_profesores	INSERT
Consulta de horarios	horarios	SELECT
Gestión de permisos	permisos	Consulta o actualización según la operación
Consulta de materias	materia	SELECT


Esta correspondencia representa el diseño previsto. No implica que todas estas operaciones estén conectadas actualmente con la aplicación móvil.
10. Integración y flujo de información
La arquitectura propuesta para integrar la aplicación móvil con la base de datos es:

MIT App Inventor → API o servicio web → PostgreSQL

Se ha trabajado en el diseño y la documentación de la integración propuesta, con la participación de los integrantes del equipo. Sin embargo, actualmente la aplicación móvil no está conectada a PostgreSQL mediante una API o servicio web.

La API o el servicio web serviría como intermediario entre la aplicación y la base de datos para procesar las solicitudes y devolver las respuestas correspondientes.

El proyecto también contempla un componente electrónico con Arduino y RFID. Su integración con la aplicación y la base de datos debe describirse de acuerdo con las funciones que realmente se hayan implementado y probado.

Estado de la integración: propuesta documentada, pendiente de implementación y validación como conexión operativa.
11. Estructura del repositorio
El repositorio organiza los archivos relacionados con la aplicación, la base de datos, los scripts SQL, los diagramas y la documentación técnica.
11.1. Aplicación móvil
La carpeta app-inventor/ contiene los archivos relacionados con la aplicación móvil desarrollada en MIT App Inventor:
- app-inventor/INTIME.aia: archivo fuente del proyecto.
- app-inventor/INTIME.apk: aplicación instalable para dispositivos Android.
11.2. Base de datos y documentación
El repositorio también incluye los recursos técnicos disponibles, como:
- Scripts SQL para la estructura de las tablas.
- Scripts SQL para insertar datos de prueba.
- Scripts SQL con consultas para administrar y consultar información.
- Scripts relacionados con las medidas de seguridad de la base de datos.
- diagrama_entidad_relación.png: diagrama de la estructura de la base de datos.
- integracion/: documentación de integración y correspondencia entre la aplicación y la base de datos.
- README.md: documentación general del proyecto.
Los nombres y las rutas indicados deben coincidir con los archivos que estén realmente disponibles en GitHub.
12. Instrucciones básicas de uso
12.1. Trabajar con la base de datos
1. Descargar o clonar el repositorio.
2. Instalar PostgreSQL y disponer de pgAdmin 4.
3. Abrir pgAdmin 4 y crear o seleccionar la base de datos correspondiente.
4. Revisar los scripts SQL disponibles en el repositorio.
5. Ejecutar primero el script de estructura y después el de datos de prueba, respetando las dependencias.
6. Ejecutar las consultas SQL para comprobar los resultados.
7. Revisar que las tablas, los campos y las relaciones coincidan con el modelo documentado.
12.2. Trabajar con la aplicación móvil
1. Abrir MIT App Inventor.
2. Importar el archivo app-inventor/INTIME.aia.
3. Revisar las pantallas y los bloques de programación.
4. Probar la navegación y las funciones disponibles.
5. Instalar app-inventor/INTIME.apk en un dispositivo Android compatible para realizar las pruebas correspondientes.
Importante: la aplicación no está conectada actualmente a PostgreSQL mediante una API o servicio web.
13. Evidencias y pruebas funcionales
Durante el desarrollo del proyecto se realizaron pruebas para revisar el comportamiento de la aplicación móvil y las operaciones de la base de datos.
13.1. Registro de pruebas
La siguiente tabla debe reflejar los resultados obtenidos en las pruebas realizadas. Se deben conservar los estados y resultados que correspondan a las evidencias reales del equipo.
Función evaluada	Resultado esperado	Resultado obtenido	Estado
Inicio de la aplicación	La aplicación abre correctamente.	Registrar el resultado comprobado.	Aprobado / No aprobado
Inicio de sesión	La aplicación procesa los datos de acceso según lo programado.	Registrar el resultado comprobado.	Aprobado / No aprobado
Navegación entre pantallas	Permite acceder a las pantallas disponibles.	Registrar el resultado comprobado.	Aprobado / No aprobado
Historial de asistencia	Permite consultar los registros según las funciones implementadas.	Registrar el resultado comprobado.	Aprobado / No aprobado
Comunicación Bluetooth	La comunicación responde según la configuración probada.	Registrar el resultado comprobado.	Aprobado / No aprobado
Consultas SQL	Las consultas ejecutadas devuelven los resultados esperados.	Registrar el resultado comprobado.	Aprobado / No aprobado
Validaciones	La aplicación responde ante entradas incorrectas cuando corresponde.	Registrar el resultado comprobado.	Aprobado / No aprobado


Nota: esta tabla es una plantilla de organización. Sustituye los textos de ejemplo por los resultados reales y conserva los estados que obtuvieron durante las pruebas. No marques una función como aprobada si no existe evidencia que lo respalde.
13.2. Evidencias que se deben conservar
- Capturas de las pantallas desarrolladas en MIT App Inventor.
- Capturas de la aplicación ejecutándose en un dispositivo Android.
- Capturas de las consultas SQL y sus resultados.
- Evidencias de las tablas y relaciones de PostgreSQL.
- Diagrama entidad-relación.
- Documentación de correspondencia entre la aplicación y la base de datos.
- Historial de commits y aportes de los integrantes.
- Fotografías reales del stand cuando esté preparado, si se incorporan como evidencia.
Las evidencias deben representar las actividades y los resultados que realmente obtuvo el equipo.
14. Seguridad de la información
Para proteger la información del proyecto y evitar la exposición de datos sensibles, se deben aplicar las siguientes medidas:
- No publicar contraseñas, tokens, claves privadas ni credenciales de conexión.
- Utilizar datos ficticios en las pruebas y en las capturas.
- Revisar los scripts SQL antes de ejecutarlos.
- Restringir los permisos de acceso a la base de datos según las necesidades del sistema.
- Realizar copias de seguridad antes de ejecutar operaciones que puedan modificar o eliminar registros.
- Comprobar que los archivos compartidos no contengan información sensible.
15. Material visual y preparación del stand
Para la presentación pública de ControlTime Pro Smart Access en ExpoTécnica 2026, el stand debe permitir que los visitantes comprendan el problema que aborda el proyecto y observen las funciones desarrolladas.

El material visual puede consistir en un cartel, una infografía o una presentación que incluya:
- Nombre y logotipo del proyecto, si dispone de él.
- Problema identificado y solución propuesta.
- Objetivo del sistema y usuarios destinatarios.
- Funcionalidades principales de la aplicación.
- Capturas de pantalla de la aplicación.
- Tecnologías utilizadas.
- Esquema de la solución y flujo de información.
- Diagrama o representación de las tablas y relaciones principales de PostgreSQL.
- Explicación de la innovación y utilidad del proyecto.
- Evidencias de pruebas y ejemplos reales de funcionamiento.
La presentación digital puede utilizarse como apoyo visual en el stand. El material debe estar preparado y los dispositivos deben revisarse antes de la exposición.
16. Integrantes y responsabilidades
Ricardo Alexander Aguillón Ortiz
- Desarrollo y organización de interfaces y bloques de MIT App Inventor.
- Trabajo con la estructura de la base de datos PostgreSQL.
- Elaboración y organización de scripts SQL.
- Apoyo en la documentación técnica y en la integración del proyecto.
Leslie Stefany Ayala Flores
- Colaboración en el desarrollo de la aplicación móvil.
- Apoyo en la elaboración de consultas SQL.
- Participación en la documentación y organización de los archivos del proyecto.
Flor Stefany Campos Palacios
- Colaboración en el diseño de interfaces de la aplicación móvil.
- Participación en la elaboración y revisión de la documentación.
- Apoyo en la preparación de las evidencias y del material de presentación, según la distribución del equipo.
Responsabilidad compartida
Los tres integrantes han participado en el desarrollo y la documentación del proyecto, incluyendo el trabajo relacionado con la aplicación móvil, la base de datos y la integración propuesta.

Cada integrante debe conocer las funciones desarrolladas, las tablas de PostgreSQL, la correspondencia entre la aplicación y la base de datos, las pruebas realizadas y las limitaciones actuales del sistema.

La distribución de responsabilidades permite organizar el trabajo, pero no excluye la colaboración de los demás integrantes.
17. Control de versiones y contribuciones
Git y GitHub se utilizan para organizar los archivos del proyecto y mantener un registro de los cambios realizados.

Para cumplir con la organización solicitada, el repositorio debe mantener:
- Archivos técnicos y documentación actualizados.
- Un README.md con la información general del proyecto.
- Evidencias relacionadas con el funcionamiento real.
- Commits identificables de los integrantes.
- Una estructura de carpetas clara.
- Scripts SQL organizados.
- Ausencia de credenciales o datos sensibles.
Los commits deben describir los cambios realizados, por ejemplo: Actualización de documentación de la base de datos o Organización de evidencias de pruebas.
18. Estado general del proyecto
El proyecto cuenta con avances en el diseño de la aplicación móvil, la organización de la base de datos PostgreSQL, la elaboración de scripts SQL, los diagramas y la documentación técnica. También se han realizado pruebas funcionales, cuyos resultados deben reflejarse en el registro de pruebas y sus evidencias.

La conexión de la aplicación móvil con PostgreSQL mediante una API o servicio web no se encuentra implementada actualmente. Por ello, esta integración se mantiene como una etapa pendiente de implementación y validación.
19. Conclusión
ControlTime Pro Smart Access busca mejorar la organización de la información relacionada con el control de acceso y la asistencia del personal docente mediante una aplicación móvil y una base de datos.

El repositorio ControlTime-Pro-BD reúne los recursos técnicos y la documentación del proyecto para facilitar su revisión, mantenimiento y continuación. La actualización de los archivos, el registro de pruebas reales, la protección de los datos y la participación de todos los integrantes son elementos importantes para presentar el trabajo de manera organizada durante la Entrega 2 y ExpoTécnica 2026.
