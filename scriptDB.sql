DROP TABLE IF EXISTS usuario;

create table usuario(
    id_usuario serial, 
    nombre varchar(255) NOT NULL, 
    email varchar(100) NOT NULL, 
    apellido varchar(255) NOT NULL, 
    clave varchar(255) NOT NULL, 
    estado varchar(1) NOT NULL,
    roles json,
    tipo varchar(255), 
    constraint pk_usuario primary key(id_usuario)
    );