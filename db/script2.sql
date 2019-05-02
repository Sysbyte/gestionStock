CREATE TABLE Proveedores(
	pk_id_prov int not null primary key auto_increment,
    proveedor varchar(25) not null,
    telefono varchar(25) not null,
    celular varchar(25) not null,
    email varchar(25) not null,
    sitio varchar(25) not null
);

CREATE TABLE Categorias(
	pk_id_cat int not null primary key auto_increment,
    categoria varchar(25) not null
);

CREATE TABLE Productos(
	pk_id_prod int not null primary key auto_increment,
    producto varchar(25) not null,
    descripcion varchar(25) not null
);

CREATE TABLE Marcas(
	pk_id_mar int not null primary key auto_increment,
    marcha varchar(25) not null
);

-- Agregar Columnas

ALTER TABLE Productos ADD COLUMN fk_id_prov INT NULL;
ALTER TABLE Productos ADD COLUMN fk_id_cat INT NULL;
ALTER TABLE Productos ADD COLUMN fk_id_mar INT NULL;

-- Agregar Relaciones

ALTER TABLE Productos ADD CONSTRAINT fk_id_prov
FOREIGN KEY (fk_id_prov) REFERENCES Proveedores(pk_id_prov);

ALTER TABLE Productos ADD CONSTRAINT fk_id_cat
FOREIGN KEY (fk_id_cat) REFERENCES Categorias(pk_id_cat);

ALTER TABLE Productos ADD CONSTRAINT fk_id_mar
FOREIGN KEY (fk_id_mar) REFERENCES Marcas(pk_id_mar);