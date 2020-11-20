CREATE TABLE usuario (
  id_usuario int auto_increment,
  rut varchar(50) NOT NULL,
  nombre varchar(50) NOT NULL,
  apellido_paterno varchar(50) NOT NULL,
  apellido_materno varchar(50) NOT NULL,
  usuario varchar(200) NOT NULL,
  pass varchar(200) null,
  primary key(id_usuario)
);

CREATE TABLE perfil (
  id_perfil int auto_increment,
  nombre varchar(100) NOT NULL,
  descripcion varchar(200) null,
  primary key(id_perfil)
) ;

CREATE TABLE usuario_perfil (
  id_usuario_perfil int auto_increment,
  id_usuario int NOT NULL,
  id_perfil int NOT null,
  primary key(id_usuario_perfil),
  constraint fk_perfil foreign key(id_perfil) references codifydb.perfil(id_perfil),
  constraint fk_usuario foreign key(id_usuario) references codifydb.usuario(id_usuario)
);




INSERT INTO codifydb.perfil (nombre,descripcion) VALUES 
('Administrador','Administrador Codify')
;


INSERT INTO codifydb.usuario (rut,nombre,apellido_paterno,apellido_materno,usuario,pass) VALUES 
('26873611-5','Jesus','Garcia','Hernandez','jesus','$2a$04$nEZr2jGP4zZUt09XAKAGLezJzaTaDpIuylVgHOv2RNl9MrETKHiRq')
;


INSERT INTO codifydb.usuario_perfil (id_usuario,id_perfil) VALUES 
(1,1)
;