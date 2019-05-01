CREATE TABLE Registros_Ingresos(
	pk_id_reg_ing int not null primary key auto_increment,
    fecha date not null,
    cantidad int not null
);

CREATE TABLE Gondolas(
	pk_id_gon int not null primary key auto_increment,
    disponibles int not null
);

ALTER TABLE Registros_Ingresos ADD COLUMN fk_id_prod INT NULL;

ALTER TABLE Gondolas ADD COLUMN fk_id_reg_ing INT NULL;

ALTER TABLE Registros_Ingresos ADD CONSTRAINT fk_id_prod
FOREIGN KEY (fk_id_prod) REFERENCES Productos(pk_id_prod);

ALTER TABLE Gondolas ADD CONSTRAINT fk_id_reg_ing
FOREIGN KEY (fk_id_reg_ing) REFERENCES Registros_Ingresos(pk_id_reg_ing);