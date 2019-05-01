CREATE TABLE Ciudades(
	pk_id_ciu int not null primary key auto_increment,
    ciudad varchar(25)
);

CREATE TABLE Provincias(
	pk_id_prov int not null primary key auto_increment,
    provincia varchar(25)
);

ALTER TABLE Ciudades ADD COLUMN fk_id_provincia INT NULL;

ALTER TABLE Ciudades ADD CONSTRAINT fk_id_provincia
FOREIGN KEY (fk_id_provincia) REFERENCES Provincias(pk_id_prov);

ALTER TABLE Proveedores ADD COLUMN fk_id_ciu INT NULL;

ALTER TABLE Proveedores ADD CONSTRAINT fk_id_ciu
FOREIGN KEY (fk_id_ciu) REFERENCES Ciudades(pk_id_ciu);

ALTER TABLE Clientes ADD COLUMN fk_id_ciud INT NULL;

ALTER TABLE Clientes ADD CONSTRAINT fk_id_ciud
FOREIGN KEY (fk_id_ciud) REFERENCES Ciudades(pk_id_ciu);