CREATE TABLE Registros_Salidas(
	pk_id_reg_sal int not null primary key auto_increment,
    fecha date not null,
    cantidad int not null
);

CREATE TABLE Ventas(
	pk_id_ven int not null primary key auto_increment
);

CREATE TABLE Formas_De_Pago(
	pk_id_fdp int not null primary key auto_increment
);

CREATE TABLE Clientes(
	pk_id_cli int not null primary key auto_increment
);

ALTER TABLE Registros_Salidas ADD COLUMN fk_id_gon INT NULL;

ALTER TABLE Registros_Salidas ADD CONSTRAINT fk_id_gon
FOREIGN KEY (fk_id_gon) REFERENCES Gondolas(pk_id_gon);

ALTER TABLE Ventas ADD COLUMN fk_id_reg_sal INT NULL;

ALTER TABLE Ventas ADD COLUMN fk_id_fdp INT NULL;

ALTER TABLE Ventas ADD COLUMN fk_id_cli INT NULL;

ALTER TABLE Ventas ADD CONSTRAINT fk_id_reg_sal
FOREIGN KEY (fk_id_reg_sal) REFERENCES Registros_Salidas(pk_id_reg_sal);

ALTER TABLE Ventas ADD CONSTRAINT fk_id_fdp
FOREIGN KEY (fk_id_fdp) REFERENCES Formas_De_Pago(pk_id_fdp);

ALTER TABLE Ventas ADD CONSTRAINT fk_id_cli
FOREIGN KEY (fk_id_cli) REFERENCES Clientes(pk_id_cli);



