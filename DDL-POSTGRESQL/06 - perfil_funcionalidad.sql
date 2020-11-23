-- public.perfil_funcionalidad definition

-- Drop table

-- DROP TABLE public.perfil_funcionalidad;

CREATE TABLE public.perfil_funcionalidad (
	id_perfil_funcionalidad bigserial NOT NULL,
	escritura int4 NOT NULL,
	lectura int4 NOT NULL,
	id_funcionalidad int8 NOT NULL,
	id_perfil int8 NOT NULL,
	CONSTRAINT perfil_funcionalidad_pkey PRIMARY KEY (id_perfil_funcionalidad)
);


-- public.perfil_funcionalidad foreign keys

ALTER TABLE public.perfil_funcionalidad ADD CONSTRAINT fk2mgp27b1if3dflyprckf3dvyc FOREIGN KEY (id_funcionalidad) REFERENCES funcionalidad(id_funcionalidad);
ALTER TABLE public.perfil_funcionalidad ADD CONSTRAINT fkiogwsqckc3ulwyu825ylmnr8h FOREIGN KEY (id_perfil) REFERENCES perfil(id_perfil);