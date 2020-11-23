-- public.tenant definition

-- Drop table

-- DROP TABLE public.tenant;

CREATE TABLE public.tenant (
	id_tenant bigserial NOT NULL,
	llave varchar(50) NOT NULL,
	nombre varchar(50) NOT NULL,
	CONSTRAINT tenant_pkey PRIMARY KEY (id_tenant)
);