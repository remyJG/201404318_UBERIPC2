CREATE DATABASE PracticaUber;
USE PracticaUber;

CREATE TABLE CONDUCTOR(
	idConductor int PRIMARY KEY,
	nombreConductor varchar(50) NOT NULL,
	emailConductor varchar(35) NOT NULL,
	telefono int NOT NULL
);

CREATE TABLE CLIENTE(
	idCliente int PRIMARY KEY,
	NombreCliente varchar(50) NOT NULL,
	emailCliente varchar(30) NOT NULL,
	telefonoCliente int NOT NULL
);

CREATE TABLE SERVICIO(
	idServicio int PRIMARY KEY,
	nombreServicio varchar(45) NOT NULL
);

CREATE TABLE TIPOTransporte(
	codTipoTransporte int NOT NULL,
	nombreTipoTransporte varchar(20)
);

CREATE TABLE TRANSPORTE(
	codTransporte int PRIMARY KEY,
	nombreTransporte VARCHAR(45) NOT NULL,
	placa varchar(6),
	codTipoTrans int NOT NULL
);

CREATE TABLE VIAJE(
	codViaje int NOT NULL,
	IDservicio int NOT NULL
);

CREATE TABLE DETALLEViaje(
	idDetalleViaje int NOT NULL,
	distanciaRecorrido int NOT NULL,
	IDCliente int NOT NULL,
	IDConductor int NOT NULL,
	CODviaje int NOT NULL
);

ALTER TABLE CONDUCTOR ADD numeroLicencia int NOT NULL;
ALTER TABLE CLIENTE ADD cantidadViajes int NOT NULL;
ALTER TABLE SERVICIO ADD descripcionServicio int;
ALTER TABLE TIPOTransporte ADD descripcionTransporte  varchar(45);
ALTER TABLE TRANSPORTE ADD cantidadPasajeros int;
ALTER TABLE VIAJE ADD CODtransporte int NOT NULL;
ALTER TABLE DETALLEViaje ADD costoRecorrido numeric(6) NOT NULL;
