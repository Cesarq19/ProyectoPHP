DROP TABLE IF EXISTS usuario CASCADE;
DROP TABLE IF EXISTS celda CASCADE;
DROP TABLE IF EXISTS prisionero CASCADE;
DROP TABLE IF EXISTS pabellon CASCADE;

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

create table celda(
    id_celda serial, 
    nombre varchar(50) NOT NULL, 
    id_guardia int, 
    capacidad int NOT NULL, 
    prisioneros JSON, 
    estado varchar(1) NOT NULL,
    constraint pk_celda primary key(id_celda),
    constraint fk_guardia foreign key (id_guardia) references usuario(id_usuario)
    );

create table prisionero(
    id_prisionero serial, 
    nombre varchar(50) NOT NULL, 
    apellido varchar(100) NOT NULL, 
    fecha_ingreso date NOT NULL, 
    delitos varchar(50) NOT NULL, 
    sentencia int NOT NULL,
    info_adicional varchar(255),
    respuesta varchar(255), 
    constraint pk_prisionero primary key(id_prisionero)
    );

create table pabellon(
    id_pabellon serial, 
    nombre varchar(50) NOT NULL, 
    celdas JSON,
    estado varchar(1) NOT NULL,
    constraint pk_pabellon primary key(id_pabellon)
    );