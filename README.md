# ControlTime Pro Smart Access

**Sistema inteligente de control de acceso y asistencia de docentes**

---

## 1. Información general

- **Nombre del proyecto:** ControlTime Pro Smart Access
- **Nombre del repositorio:** ControlTime-Pro-BD
- **Institución:** Instituto Católico Karol Wojtyla
- **Integrantes:**
      - Ricardo Alexander Aguillón Ortiz
      - Leslie Stefany Ayala Flores
- **Nivel académico:** Tercer año de Bachillerato Vocacional en Desarrollo de Software
- **Módulo:** BTVDS 3.5 — Desarrollo de Componentes para Dispositivos Móviles
- **Asignatura relacionada:** Administración de Bases de Datos
- **Año:** 2026

## 2. Descripción del proyecto

ControlTime Pro Smart Access es un proyecto tecnológico orientado a mejorar la organización y el control de la asistencia del personal docente del Instituto Católico Karol Wojtyla.

El proyecto contempla una aplicación móvil desarrollada en MIT App Inventor y una base de datos diseñada en PostgreSQL para organizar la información relacionada con los docentes, la asistencia, los horarios, las materias, los permisos y las sustituciones.

También se ha considerado el uso de Arduino y tecnología RFID para la identificación de los docentes, así como la comunicación Bluetooth dentro del prototipo.

Este repositorio reúne los archivos de la aplicación móvil, los scripts SQL, el diagrama entidad-relación, la documentación técnica y las evidencias del desarrollo.

## 3. Problema identificado

El registro manual de las entradas y salidas de los docentes puede ocasionar errores al anotar los horarios, pérdida de información y dificultades para consultar registros anteriores.

Además, cuando los datos no están organizados adecuadamente, la revisión de la asistencia puede requerir más tiempo y dificultar la administración de la información.

Por esta razón, se propone una solución tecnológica que permita organizar los datos y facilitar la consulta de la información relacionada con el control de acceso y la asistencia docente.

## 4. Solución propuesta

ControlTime Pro Smart Access propone utilizar una aplicación móvil y una base de datos para facilitar la administración y consulta de la información del personal docente.

La aplicación cuenta con avances en las pantallas de inicio de sesión, menú principal, historial de asistencia y Bluetooth.

Por otra parte, PostgreSQL permite estructurar la información mediante tablas y relaciones que representan los datos necesarios para el sistema.

La integración entre MIT App Inventor y PostgreSQL se plantea mediante una API o servicio web. Actualmente, la aplicación no está conectada a PostgreSQL mediante esta integración, por lo que se considera una etapa pendiente de implementación y validación.

## 5. Objetivos

### 5.1. Objetivo general

Desarrollar un sistema tecnológico para organizar y facilitar el control de acceso y asistencia del personal docente mediante una aplicación móvil y una base de datos.

### 5.2. Objetivos específicos

- Diseñar una aplicación móvil para consultar y administrar información relacionada con la asistencia docente.
- Organizar la información mediante una base de datos PostgreSQL.
- Crear tablas, relaciones y consultas SQL para gestionar los datos del sistema.
- Documentar la correspondencia entre las funciones de la aplicación y la estructura de la base de datos.
- Considerar la identificación mediante RFID y la comunicación con dispositivos electrónicos.
- Realizar pruebas funcionales para verificar el comportamiento de las funciones desarrolladas.
- Organizar el código, la documentación y las evidencias en un repositorio de GitHub.

## 6. Tecnologías y herramientas utilizadas

| Tecnología o herramienta | Uso en el proyecto |
|---|---|
| MIT App Inventor | Diseño y programación de la aplicación móvil mediante bloques. |
| PostgreSQL | Diseño y organización de la base de datos. |
| pgAdmin 4 | Administración de PostgreSQL y ejecución de consultas SQL. |
| Arduino | Plataforma contemplada para el componente electrónico del prototipo. |
| RFID RC522 | Módulo considerado para la identificación mediante tarjetas RFID. |
| Bluetooth | Comunicación con dispositivos compatibles según la configuración del prototipo. |
| Google Sheets | Herramienta utilizada en actividades y pruebas del prototipo. |
| Git | Control de versiones de los archivos. |
| GitHub | Almacenamiento y organización del código, la documentación y las evidencias. |

**Nota:** La inclusión de una tecnología en esta lista no significa que todas sus integraciones estén terminadas. El estado de cada función depende de su implementación y de las pruebas realizadas.

## 7. Aplicación móvil

La aplicación móvil se desarrolla mediante MIT App Inventor y contiene pantallas destinadas a facilitar el acceso a las diferentes secciones del sistema.

### 7.1. Pantallas de la aplicación

- **Inicio de sesión:** pantalla destinada al acceso a la aplicación.
- **Menú principal:** permite acceder a las secciones disponibles.
- **Historial de asistencia:** pantalla destinada a consultar los registros de asistencia.
- **Bluetooth:** interfaz destinada a la comunicación con dispositivos compatibles.

### 7.2. Archivos de la aplicación

Los archivos de MIT App Inventor se encuentran dentro de la carpeta `app-inventor/`.

- `app-inventor/INTIME.aia`: archivo fuente del proyecto de MIT App Inventor.
- `app-inventor/INTIME.apk`: archivo instalable de la aplicación para dispositivos Android.

### 7.3. Estado de las funcionalidades

Durante el desarrollo se han diseñado las principales pantallas y se han realizado pruebas para revisar el comportamiento de las funciones de la aplicación.

La existencia de una pantalla no significa que todas las operaciones relacionadas estén conectadas con la base de datos PostgreSQL. La integración con esta base de datos mediante una API o servicio web continúa pendiente.

## 8. Base de datos PostgreSQL

La base de datos del proyecto se denomina **Control Time Pro** y está diseñada en PostgreSQL.

Su estructura permite organizar la información relacionada con los docentes, las materias, los horarios, la asistencia, los permisos y las sustituciones.

### 8.1. Tablas principales

| Tabla | Descripción |
|---|---|
| `maestros` | Almacena información relacionada con el personal docente. |
| `materia` | Organiza la información de las materias. |
| `horarios` | Contiene información sobre los horarios asignados a los docentes. |
| `asistencia_profesores` | Organiza los registros de asistencia, entradas y salidas. |
| `permisos` | Gestiona información relacionada con los permisos del personal docente. |
| `sustitutos` | Contiene información relacionada con las sustituciones de docentes. |

Los campos, las claves primarias, las claves foráneas y las relaciones deben consultarse en los scripts SQL y en el diagrama entidad-relación del repositorio.

### 8.2. Operaciones SQL utilizadas

En los scripts SQL se contemplan operaciones para crear la estructura de la base de datos, insertar datos de prueba y consultar o administrar registros.

- `CREATE TABLE`: creación de tablas.
- `INSERT`: inserción de registros.
- `SELECT`: consulta de información.
- `UPDATE`: actualización de registros.
- `DELETE`: eliminación de registros.

Estas operaciones deben ejecutarse después de revisar el contenido de los scripts y seleccionar la base de datos correspondiente.

### 8.3. Datos de prueba

Los datos de prueba permiten comprobar la estructura de las tablas y ejecutar consultas sin utilizar información real o sensible del personal docente.

Se deben utilizar datos ficticios en las pruebas y en las capturas que se publiquen en el repositorio.

## 9. Correspondencia entre la aplicación y la base de datos

La siguiente tabla describe la relación prevista entre las funciones de la aplicación móvil y las tablas de PostgreSQL.

| Función del sistema | Tabla relacionada | Operación prevista |
|---|---|---|
| Consulta de docentes | `maestros` | `SELECT` |
| Consulta del historial de asistencia | `asistencia_profesores` | `SELECT` |
| Registro de asistencia | `asistencia_profesores` | `INSERT` |
| Consulta de horarios | `horarios` | `SELECT` |
| Gestión de permisos | `permisos` | Consulta o actualización según la operación |
| Consulta de materias | `materia` | `SELECT` |

Esta correspondencia representa el diseño documentado del sistema. No significa que las operaciones estén conectadas actualmente con la aplicación móvil.

## 10. Integración y flujo de información

La integración entre la aplicación móvil y la base de datos se ha trabajado como parte de la documentación y el diseño técnico del proyecto, con la participación de los tres integrantes.

La arquitectura propuesta para la integración es:

**MIT App Inventor → API o servicio web → PostgreSQL**

La API o el servicio web serviría como intermediario para recibir las solicitudes de la aplicación, procesar las operaciones y comunicarse con la base de datos.

Actualmente, la aplicación móvil no está conectada a PostgreSQL mediante esta arquitectura. Por tanto, la integración se mantiene como una propuesta pendiente de implementación y validación.

El proyecto también contempla un componente electrónico basado en Arduino y tecnología RFID. Su integración debe describirse de acuerdo con las funciones que realmente se hayan implementado y probado.

## 11. Estructura del repositorio

El repositorio `ControlTime-Pro-BD` organiza los archivos de la aplicación móvil, la base de datos, los scripts SQL, los diagramas y la documentación técnica.

### 11.1. Aplicación móvil

La carpeta `app-inventor/` contiene los archivos relacionados con la aplicación desarrollada en MIT App Inventor.

- `app-inventor/INTIME.aia`: archivo fuente de la aplicación.
- `app-inventor/INTIME.apk`: archivo instalable para Android.

### 11.2. Base de datos y documentación

El repositorio incluye los siguientes tipos de recursos:

- Scripts SQL para crear las tablas.
- Scripts SQL para insertar datos de prueba.
- Scripts SQL con consultas para administrar y consultar información.
- Scripts relacionados con las medidas de seguridad.
- `diagrama_entidad_relación.png`: diagrama de la estructura de la base de datos.
- `integracion/`: documentación relacionada con la integración y la correspondencia entre la aplicación y la base de datos.
- `README.md`: documentación general del proyecto.

Los nombres y las rutas de los archivos deben coincidir con la estructura real del repositorio.

## 12. Instrucciones básicas de uso

### 12.1. Trabajar con la base de datos

1. Descargar o clonar el repositorio.
2. Instalar PostgreSQL y disponer de pgAdmin 4.
3. Abrir pgAdmin 4 y crear o seleccionar la base de datos correspondiente.
4. Revisar los scripts SQL disponibles en el repositorio.
5. Ejecutar primero el script de estructura y después el de datos de prueba, respetando las dependencias.
6. Ejecutar las consultas SQL para comprobar los resultados.
7. Verificar que las tablas, los campos y las relaciones coincidan con el modelo documentado.

### 12.2. Trabajar con la aplicación móvil

1. Abrir MIT App Inventor.
2. Importar el archivo `app-inventor/INTIME.aia`.
3. Revisar las pantallas y los bloques de programación.
4. Probar la navegación y las funciones disponibles.
5. Para instalar la aplicación, utilizar el archivo `app-inventor/INTIME.apk` en un dispositivo Android compatible.

**Importante:** La conexión con PostgreSQL mediante una API o servicio web no está implementada actualmente. Por ello, no debe considerarse una función operativa de la aplicación.

## 13. Evidencias y pruebas funcionales

Durante el desarrollo de ControlTime Pro Smart Access se realizaron pruebas para revisar el comportamiento de la aplicación móvil y las operaciones relacionadas con la base de datos.

Las evidencias permiten documentar los resultados obtenidos y comprobar el avance del proyecto.

### 13.1. Registro de pruebas

| Función evaluada | Resultado esperado | Resultado obtenido | Estado |
|---|---|---|---|
| Inicio de la aplicación | La aplicación abre correctamente. | Registrar el resultado obtenido en la prueba. | Según resultado real |
| Inicio de sesión | La aplicación procesa los datos de acceso según lo programado. | Registrar el resultado obtenido en la prueba. | Según resultado real |
| Navegación entre pantallas | Permite acceder a las pantallas disponibles. | Registrar el resultado obtenido en la prueba. | Según resultado real |
| Historial de asistencia | Permite consultar los registros según la función implementada. | Registrar el resultado obtenido en la prueba. | Según resultado real |
| Comunicación Bluetooth | La comunicación responde según la configuración probada. | Registrar el resultado obtenido en la prueba. | Según resultado real |
| Consultas SQL | Las consultas ejecutadas devuelven los resultados esperados. | Registrar el resultado obtenido en la prueba. | Según resultado real |
| Validaciones | La aplicación responde ante entradas incorrectas cuando corresponde. | Registrar el resultado obtenido en la prueba. | Según resultado real |

Los resultados específicos deben coincidir con el registro de pruebas realizado por el equipo. Las funciones no aprobadas deben identificarse como tales y las que no se hayan probado deben marcarse como pendientes de validación.

### 13.2. Evidencias del proyecto

Las evidencias pueden incluir:

- Capturas de las pantallas desarrolladas en MIT App Inventor.
- Capturas de la aplicación ejecutándose en un dispositivo Android.
- Capturas de las tablas de PostgreSQL.
- Capturas de las consultas SQL y sus resultados.
- Diagrama entidad-relación.
- Documentación de correspondencia entre la aplicación y la base de datos.
- Evidencias de las pruebas funcionales.
- Historial de commits de los integrantes.
- Fotografías reales del stand cuando esté preparado.

Las evidencias deben representar las actividades y los resultados reales del equipo.

## 14. Seguridad de la información

Para proteger la información del proyecto, se deben considerar las siguientes medidas:

- No publicar contraseñas, tokens, claves privadas ni credenciales de conexión.
- Utilizar datos ficticios en las pruebas y capturas.
- Revisar los scripts SQL antes de ejecutarlos.
- Restringir los permisos de acceso a la base de datos según las necesidades del sistema.
- Realizar copias de seguridad antes de ejecutar operaciones que puedan modificar o eliminar registros.
- Revisar los archivos antes de publicarlos para evitar exponer información sensible.

## 15. Material visual y preparación del stand

Para la presentación de ControlTime Pro Smart Access en ExpoTécnica 2026, el stand debe permitir que los visitantes comprendan el problema que aborda el proyecto y observen el funcionamiento de las funciones desarrolladas.

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

La presentación digital puede utilizarse como apoyo visual en el stand. Los dispositivos y materiales deben revisarse antes de la exposición.

## 16. Integrantes y responsabilidades

### Ricardo Alexander Aguillón Ortiz

- Participación en el desarrollo de la aplicación móvil y en la organización de sus interfaces.
- Trabajo con la estructura de la base de datos PostgreSQL.
- Elaboración y organización de scripts SQL.
- Participación en la documentación técnica y en el trabajo de integración.

### Leslie Stefany Ayala Flores

- Participación en el desarrollo de la aplicación móvil.
- Apoyo en la elaboración de consultas SQL.
- Participación en la documentación y organización de los archivos.
- Colaboración en el trabajo relacionado con la integración del proyecto.

### Flor Stefany Campos Palacios

- Participación en el diseño de interfaces de la aplicación móvil.
- Participación en la elaboración y revisión de la documentación.
- Colaboración en las actividades de integración y preparación de evidencias.

### Responsabilidad compartida

Los tres integrantes han participado en el trabajo del proyecto y en las actividades relacionadas con la integración y su documentación.

Cada integrante debe conocer el funcionamiento general del sistema, las tablas de PostgreSQL, la correspondencia entre la aplicación y la base de datos, las pruebas realizadas y las limitaciones actuales.

La distribución de responsabilidades permite organizar el trabajo, pero no excluye la colaboración de los demás integrantes.

## 17. Control de versiones y contribuciones

Git y GitHub se utilizan para organizar los archivos del proyecto y mantener un registro de los cambios realizados.

El repositorio debe conservar:

- Archivos técnicos y documentación actualizados.
- Un `README.md` con la información general del proyecto.
- Evidencias relacionadas con el funcionamiento real.
- Commits identificables de los integrantes.
- Una estructura de carpetas clara.
- Scripts SQL organizados.
- Ausencia de credenciales o datos sensibles.

Los commits deben describir los cambios realizados. Algunos ejemplos son:

- `Actualización de documentación de la base de datos`
- `Organización de evidencias de pruebas`
- `Actualización del README según la guía de Entrega 2`
- `Documentación de la integración entre la aplicación y PostgreSQL`

## 18. Estado general del proyecto

El proyecto cuenta con avances en el diseño de la aplicación móvil, la estructura de la base de datos PostgreSQL, los scripts SQL, los diagramas, las pruebas y la documentación técnica.

Se han realizado pruebas durante el desarrollo para revisar el comportamiento de las funciones implementadas. Sus resultados deben mantenerse documentados mediante las evidencias correspondientes.

La aplicación móvil todavía no está conectada a PostgreSQL mediante una API o servicio web. La integración se ha trabajado en el diseño y la documentación, pero su implementación y validación continúan pendientes.

## 19. Conclusión

ControlTime Pro Smart Access busca mejorar la organización de la información relacionada con el control de acceso y la asistencia del personal docente mediante una aplicación móvil y una base de datos.

El repositorio `ControlTime-Pro-BD` reúne los recursos técnicos y la documentación del proyecto para facilitar su revisión, mantenimiento y continuación.

La organización de los archivos, la documentación de las pruebas, la protección de la información y la colaboración de los tres integrantes son elementos importantes para presentar el proyecto de manera clara y ordenada durante la Entrega 2 y ExpoTécnica 2026.
