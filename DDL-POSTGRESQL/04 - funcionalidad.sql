-- public.funcionalidad definition

-- Drop table

-- DROP TABLE public.funcionalidad;

CREATE TABLE public.funcionalidad (
	id_funcionalidad bigserial NOT NULL,
	descripcion varchar(200) NOT NULL,
	nombre varchar(100) NOT NULL,
	CONSTRAINT funcionalidad_pkey PRIMARY KEY (id_funcionalidad)
);