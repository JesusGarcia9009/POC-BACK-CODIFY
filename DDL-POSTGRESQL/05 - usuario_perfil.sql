-- public.usuario_perfil definition

-- Drop table

-- DROP TABLE public.usuario_perfil;

CREATE TABLE public.usuario_perfil (
	id_usuario int8 NOT NULL,
	id_perfil int8 NOT NULL,
	CONSTRAINT usuario_perfil_pkey PRIMARY KEY (id_usuario, id_perfil)
);


-- public.usuario_perfil foreign keys

ALTER TABLE public.usuario_perfil ADD CONSTRAINT fk2qe6tjawyl6ojl32uhbwllldh FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
ALTER TABLE public.usuario_perfil ADD CONSTRAINT fk3cxlmf5q4y8mllkos025n9px8 FOREIGN KEY (id_perfil) REFERENCES perfil(id_perfil);