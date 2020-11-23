
-- PERFIL
INSERT INTO public.perfil (descripcion,nombre) VALUES ('Administrador Codify','Administrador');

-- FUNCIONALIDAD
INSERT INTO public.funcionalidad (descripcion,nombre) VALUES ('Modulo de seguridad de la aplicacion codify','Seguridad');

-- TENANT
INSERT INTO public.tenant (llave,nombre) VALUES ('codify','Codify App');

-- PERFIL_FUNCIONALIDAD
INSERT INTO public.perfil_funcionalidad (id_perfil_funcionalidad,escritura,lectura,id_funcionalidad,id_perfil)	VALUES (1,1,1,1,1);

-- USUARIO
INSERT INTO public.usuario (apellido_materno,apellido_paterno,email,nombre,pass,rut,id_tenant) VALUES ('Hernadez','Garcia','jesusmanuelgarcia9009@gmail.com','Jesus','$2a$04$nEZr2jGP4zZUt09XAKAGLezJzaTaDpIuylVgHOv2RNl9MrETKHiRq','26873611-5',1);

-- USUARIO_PERFIL
INSERT INTO public.usuario_perfil (id_usuario,id_perfil) VALUES (1,1);


COMMIT;