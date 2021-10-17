CREATE TABLE Periodo(
    idPeriodo int not null,
    nombre varchar(8) not null,
    CONSTRAINT Periodo_pk_idPeriodo PRIMARY KEY (idPeriodo)
);

CREATE TABLE Grupo(
    idGrupo int not null,
    nombre varchar(8) not null,
    CONSTRAINT Grupo_pk_idPeriodo PRIMARY KEY (idGrupo)
);

CREATE TABLE Categoria(
    idCategoria int not null,
    nombre varchar(8) not null, 
    CONSTRAINT Categoria_pk_idCategoria PRIMARY KEY (idCategoria)
);

CREATE TABLE Elemento (
    idElemento int not null,
    nombre varchar(8) not null,
    simbolo varchar(8) not null,
    numatom int not null,
    masaatom float not null,
    periodo int not null,
    categoria varchar(8) not null,
	idPeriodo int,
	idGrupo int,
	idCategoria int,
    CONSTRAINT Elemento_pk_idElemento PRIMARY KEY(idElemento)
);
ALTER TABLE Elemento ADD CONSTRAINT Elemento_fk_periodo FOREIGN KEY (idPeriodo) REFERENCES Periodo(idPeriodo);
ALTER TABLE Elemento ADD CONSTRAINT Elemento_fk_grupo FOREIGN KEY (idGrupo) REFERENCES Grupo(idGrupo);
ALTER TABLE Elemento ADD CONSTRAINT Elemento_fk_categoria FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria);

CREATE TABLE Perfil (
    idPerfil int not null,
    nombre varchar(45) not null,
	usuario_U int not null,
    CONSTRAINT Perfil_pk_idPerfil PRIMARY KEY(idPerfil)
);

CREATE TABLE Usuario(
    idUsuario int not null,
    nombre varchar(45) not null,
    apellido varchar(45) not null,
    email varchar(45) not null,
    usuario varchar(45) not null,
    passw varchar(45) not null,
	idPerfil int,
    CONSTRAINT Usuario_pk_idUsuario PRIMARY KEY(idUsuario)
);

ALTER TABLE Usuario ADD CONSTRAINT Usuario_fk_idPerfil FOREIGN KEY (idPerfil) REFERENCES Perfil(idPerfil);