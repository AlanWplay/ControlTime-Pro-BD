-----------tabla asistencias_profesores--------------------------

CREATE TABLE IF NOT EXISTS public.asistencia_profesores
(
    id_asistencia serial NOT NULL,
    nup_docente character varying(20) COLLATE pg_catalog."default" NOT NULL,
    id_horario integer NOT NULL,
    fecha date NOT NULL,
    estado character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT asistencia_profesores_pkey PRIMARY KEY (id_asistencia),
    CONSTRAINT fk_asistencia_horario FOREIGN KEY (id_horario)
        REFERENCES public.horarios (id_horario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT fk_asistencia_maestro FOREIGN KEY (nup_docente)
        REFERENCES public.maestros (nup_docente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.asistencia_profesores
    OWNER to "Control_pro";


--------------------------- tabla horarios ------------------------------------------

CREATE TABLE IF NOT EXISTS public.horarios
(
    id_horario integer NOT NULL,
    nup_docente character varying(20) COLLATE pg_catalog."default" NOT NULL,
    id_materia integer NOT NULL,
    dia_semana character varying(15) COLLATE pg_catalog."default" NOT NULL,
    hora_inicio time without time zone NOT NULL,
    hora_fin time without time zone NOT NULL,
    CONSTRAINT horarios_pkey PRIMARY KEY (id_horario),
    CONSTRAINT fk_horario_maestro FOREIGN KEY (nup_docente)
        REFERENCES public.maestros (nup_docente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT fk_horario_materia FOREIGN KEY (id_materia)
        REFERENCES public.materia (id_materia) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.horarios
    OWNER to "Control_pro";

------------------------------tabla maestros ---------------------------------------

CREATE TABLE IF NOT EXISTS public.maestros
(
    nup_docente character varying(20) COLLATE pg_catalog."default" NOT NULL,
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    correo character varying(150) COLLATE pg_catalog."default" NOT NULL,
    contrasena_hash character varying(255) COLLATE pg_catalog."default" NOT NULL,
    rol character varying(20) COLLATE pg_catalog."default" NOT NULL,
    tipo_contrato character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT maestros_pkey PRIMARY KEY (nup_docente),
    CONSTRAINT maestros_correo_key UNIQUE (correo)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.maestros
    OWNER to "Control_pro";


--------------------------------- tabla materia ------------------------------------------

CREATE TABLE IF NOT EXISTS public.materia
(
    id_materia integer NOT NULL,
    nombre_materia character varying(100) COLLATE pg_catalog."default" NOT NULL,
    nivel_o_grado character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT materia_pkey PRIMARY KEY (id_materia)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.materia
    OWNER to "Control_pro";


------------------------------------- tabla permisos ----------------------------------------

CREATE TABLE IF NOT EXISTS public.permisos
(
    id_permiso serial NOT NULL,
    nup_docente character varying(20) COLLATE pg_catalog."default" NOT NULL,
    tipo character varying(50) COLLATE pg_catalog."default" NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    motivo text COLLATE pg_catalog."default" NOT NULL,
    estado character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT permisos_pkey PRIMARY KEY (id_permiso),
    CONSTRAINT fk_permiso_maestro FOREIGN KEY (nup_docente)
        REFERENCES public.maestros (nup_docente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.permisos
    OWNER to "Control_pro";


------------------------ tabla sustitutos ----------------------------------------------------

CREATE TABLE IF NOT EXISTS public.sustitutos
(
    id_reemplazo serial NOT NULL,
    id_horario integer NOT NULL,
    nup_docente_titular character varying(20) COLLATE pg_catalog."default" NOT NULL,
    nup_docente_suplente character varying(20) COLLATE pg_catalog."default" NOT NULL,
    fecha date NOT NULL,
    motivo text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT sustitutos_pkey PRIMARY KEY (id_reemplazo),
    CONSTRAINT fk_reemplazo_horario FOREIGN KEY (id_horario)
        REFERENCES public.horarios (id_horario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT fk_reemplazo_suplente FOREIGN KEY (nup_docente_suplente)
        REFERENCES public.maestros (nup_docente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT fk_reemplazo_titular FOREIGN KEY (nup_docente_titular)
        REFERENCES public.maestros (nup_docente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.sustitutos
    OWNER to "Control_pro";