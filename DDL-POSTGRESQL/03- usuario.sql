-- public.usuario definition

-- Drop table

-- DROP TABLE public.usuario;

CREATE TABLE public.usuario (
	id_usuario bigserial NOT NULL,
	apellido_materno varchar(50) NOT NULL,
	apellido_paterno varchar(50) NOT NULL,
	email varchar(200) NOT NULL,
	nombre varchar(50) NOT NULL,
	pass varchar(500) NOT NULL,
	rut varchar(50) NOT NULL,
	id_tenant int8 NOT NULL,
	CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario)
);


-- public.usuario foreign keys

ALTER TABLE public.usuario ADD CONSTRAINT fkmsxlet5dv4rmhrn4cy3bt3vy4 FOREIGN KEY (id_tenant) REFERENCES tenant(id_tenant);