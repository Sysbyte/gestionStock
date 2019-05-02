CREATE TABLE Registros_Ingresos(
	pk_id_reg_ing int not null primary key auto_increment,
    fecha date not null,
    cantidad int not null,
    perdidas int not null,
    monto_pagado double not null
);

CREATE TABLE Depositos(
	pk_id_dep int not null primary key auto_increment,
    descripcion varchar(25) not null
);

CREATE TABLE Productos_Exhibidos(
	pk_id_pro_ex int not null primary key auto_increment,
    fecha date not null,
    cantidad int not null,
    descripcion varchar(25) not null
);

CREATE TABLE Gondolas(
	pk_id_gon int not null primary key auto_increment,
    disponibles int not null,
    precio double not null
);

-- Agregar Columnas

ALTER TABLE Registros_Ingresos ADD COLUMN fk_id_prod INT NULL;
ALTER TABLE Depositos ADD COLUMN fk_id_reg_ing INT NULL;
ALTER TABLE Productos_Exhibidos ADD COLUMN fk_id_dep INT NULL;
ALTER TABLE Gondolas ADD COLUMN fk_id_pro_ex INT NULL;

-- Agregar Relaciones

ALTER TABLE Registros_Ingresos ADD CONSTRAINT fk_id_prod
FOREIGN KEY (fk_id_prod) REFERENCES Productos(pk_id_prod);

ALTER TABLE Depositos ADD CONSTRAINT fk_id_reg_ing
FOREIGN KEY (fk_id_reg_ing) REFERENCES Registros_Ingresos(pk_id_reg_ing);

ALTER TABLE Productos_Exhibidos ADD CONSTRAINT fk_id_dep
FOREIGN KEY (fk_id_dep) REFERENCES Depositos(pk_id_dep);

ALTER TABLE Gondolas ADD CONSTRAINT fk_id_pro_ex
FOREIGN KEY (fk_id_pro_ex) REFERENCES Productos_Exhibidos(pk_id_pro_ex);