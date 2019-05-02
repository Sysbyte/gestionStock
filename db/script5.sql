CREATE TABLE Personas(
	pk_id_per int not null primary key auto_increment,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    dni varchar(25) not null,
    telefono varchar(25) not null,
    celular varchar(25) not null,
    fecha_de_nacimiento date not null,
    email varchar(25) not null
);

CREATE TABLE Tipos_Documentos(
	pk_id_td int not null primary key auto_increment,
    tipo varchar(25) not null
);

CREATE TABLE Ciudades(
	pk_id_ciu int not null primary key auto_increment,
    ciudad varchar(25) not null,
    codigo_postal varchar(25) not null
);

CREATE TABLE Provincias(
	pk_id_prov int not null primary key auto_increment,
    provincia varchar(25) not null
);

-- Agregar Columnas

ALTER TABLE Ciudades ADD COLUMN fk_id_provincia INT NULL;
ALTER TABLE Proveedores ADD COLUMN fk_id_ciu INT NULL;
ALTER TABLE Clientes ADD COLUMN fk_id_per INT NULL;
ALTER TABLE Personas ADD COLUMN fk_id_ciud INT NULL;
ALTER TABLE Personas ADD COLUMN fk_id_td INT NULL;

-- Agregar Relaciones

ALTER TABLE Ciudades ADD CONSTRAINT fk_id_provincia
FOREIGN KEY (fk_id_provincia) REFERENCES Provincias(pk_id_prov);

ALTER TABLE Proveedores ADD CONSTRAINT fk_id_ciu
FOREIGN KEY (fk_id_ciu) REFERENCES Ciudades(pk_id_ciu);

ALTER TABLE Clientes ADD CONSTRAINT fk_id_per
FOREIGN KEY (fk_id_per) REFERENCES Personas(pk_id_per);

ALTER TABLE Personas ADD CONSTRAINT fk_id_ciud
FOREIGN KEY (fk_id_ciud) REFERENCES Ciudades(pk_id_ciu);

ALTER TABLE Personas ADD CONSTRAINT fk_id_td
FOREIGN KEY (fk_id_td) REFERENCES Tipos_Documentos(pk_id_td);