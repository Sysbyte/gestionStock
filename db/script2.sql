CREATE TABLE Proveedores(
	pk_id_prov int not null primary key auto_increment,
    proveedor varchar(25)
);

CREATE TABLE Categorias(
	pk_id_cat int not null primary key auto_increment,
    categoria varchar(25)
);

CREATE TABLE Productos(
	pk_id_prod int not null primary key auto_increment,
    producto varchar(25)
);

ALTER TABLE Productos ADD COLUMN fk_id_prov INT NULL;
ALTER TABLE Productos ADD COLUMN fk_id_cat INT NULL;

ALTER TABLE Productos ADD CONSTRAINT fk_id_prov
FOREIGN KEY (fk_id_prov) REFERENCES Proveedores(pk_id_prov);

ALTER TABLE Productos ADD CONSTRAINT fk_id_cat
FOREIGN KEY (fk_id_cat) REFERENCES Categorias(pk_id_cat);