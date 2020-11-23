-- public.perfil definition

-- Drop table

-- DROP TABLE public.perfil;

CREATE TABLE public.perfil (
	id_perfil bigserial NOT NULL,
	descripcion varchar(200) NOT NULL,
	nombre varchar(100) NOT NULL,
	CONSTRAINT perfil_pkey PRIMARY KEY (id_perfil)
);