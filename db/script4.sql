CREATE TABLE Registros_Salidas(
	pk_id_reg_sal int not null primary key auto_increment,
    fecha date not null,
    cantidad int not null
);

CREATE TABLE Ventas(
	pk_id_ven int not null primary key auto_increment,
    monto double not null,
    descuento double not null,
    cantidad int not null
);

CREATE TABLE Detalles_Venta(
	pk_id_dv int not null primary key auto_increment,
    fecha date not null,
    hora datetime not null,
    comprobante varchar(25) not null,
    estado varchar(25) not null 
);

CREATE TABLE Reclamos(
	pk_id_rec int not null primary key auto_increment,
    fecha date not null,
    descripcion varchar(25) not null,
    estado varchar(25) not null
);

CREATE TABLE Formas_De_Pago(
	pk_id_fdp int not null primary key auto_increment,
    forma varchar(25) not null
);

CREATE TABLE Clientes(
	pk_id_cli int not null primary key auto_increment,
    cod_cliente int not null
);

-- Agregar Columnas

ALTER TABLE Registros_Salidas ADD COLUMN fk_id_gon INT NULL;
ALTER TABLE Ventas ADD COLUMN fk_id_reg_sal INT NULL;
ALTER TABLE Ventas ADD COLUMN fk_id_fdp INT NULL;
ALTER TABLE Detalles_Venta ADD COLUMN fk_id_cli INT NULL;
ALTER TABLE Detalles_Venta ADD COLUMN fk_id_vent INT NULL;
ALTER TABLE Reclamos ADD COLUMN fk_id_ven INT NULL;

-- Agregar Relaciones

ALTER TABLE Registros_Salidas ADD CONSTRAINT fk_id_gon
FOREIGN KEY (fk_id_gon) REFERENCES Gondolas(pk_id_gon);

ALTER TABLE Ventas ADD CONSTRAINT fk_id_reg_sal
FOREIGN KEY (fk_id_reg_sal) REFERENCES Registros_Salidas(pk_id_reg_sal);

ALTER TABLE Ventas ADD CONSTRAINT fk_id_fdp
FOREIGN KEY (fk_id_fdp) REFERENCES Formas_De_Pago(pk_id_fdp);

ALTER TABLE Detalles_Venta ADD CONSTRAINT fk_id_cli
FOREIGN KEY (fk_id_cli) REFERENCES Clientes(pk_id_cli);

ALTER TABLE Detalles_Venta ADD CONSTRAINT fk_id_vent
FOREIGN KEY (fk_id_vent) REFERENCES Ventas(pk_id_ven);

ALTER TABLE Reclamos ADD CONSTRAINT fk_id_ven
FOREIGN KEY (fk_id_ven) REFERENCES Ventas(pk_id_ven);



