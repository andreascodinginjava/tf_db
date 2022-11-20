/* ---- Creación de las tablas ---- */

/* Tabla tipoMercancia */
create table tipoMercancia (
    idTipoMercancia int not null primary key,
    tipoMercancia varchar(45) not null
);

/* Tabla ciudad */
create table ciudad (
    idCiudad int not null primary key,
    ciudad varchar(45) not null
);

/* Tabla genero */
create table genero (
    idGenero int not null primary key,
    genero  varchar(45) not null
)

/* Tabla medioPago */
create table medioPago(
    idMedioPago int not null primary key,
    medioPago varchar(45) not null
);

/* Tabla tipoVehiculo */
create table tipoVehiculo (
	idTipoVehiculo int not null primary key,
	tipoVehiculo varchar(45) not null
);

/* Tabla color */
create table color (
    idColor int not null primary key,
    color varchar(45) not null
);

/* Tabla vehiculo */
create table vehiculo (
    idVehiculo varchar(6) primary key,
    capacidad varchar(45) not null,
    colorVehiculo_FK int not null,
    tipoVehiculo_FK int not null,
    foreign key (colorVehiculo_FK) references color(idColor),
    foreign key (tipoVehiculo_FK) references tipoVehiculo(idTipoVehiculo)
);

/* Tabla files */
create table files (
    idFile int not null IDENTITY(1,1) primary key,
    nombreFile varchar(50) not null,
    extensionFile varchar(5) not null,
    tamanioFile float not null,
    ubicacionFile varchar(255) not null,
    vehiculo_FK varchar(6) not null,
    foreign key (vehiculo_FK) references vehiculo (idVehiculo)
)

/* Tabla cliente */
create table cliente (
    idCliente int primary key,
    nombreCliente varchar(45) not null,
    apellidoCliente varchar(45) not null,
    emailCliente varchar(45) not null,
    pswCliente varchar(45) not null,
    estadoCliente varchar(45) not null,
    ciudadCliente_FK int not null,
    generoCliente_FK int not null,
    foreign key (ciudadCliente_FK) references ciudad(idCiudad),
    foreign key (generoCliente_FK) references genero(idGenero),
);

/* Tabla mercancia */
create table mercancia (
    idMercancia int primary key,
    pesoMercancia varchar(45) not null,
    nombreMercancia varchar(45) not null,
    tipoMercancia_FK int not null,
    cliente_FK int not null,
    foreign key (tipoMercancia_FK) references tipoMercancia(idTipoMercancia),
    foreign key (cliente_FK) references cliente(idCliente)
);

/* Tabla condcutor */
create table conductor (
    idConductor int primary key,
    nombreConductor varchar(45) not null,
    apellidoConductor varchar(45) not null,
    emailConductor varchar(45) not null,
    pswConductor varchar(45) not null,
    estadoConductor varchar(45) not null,
    ciudadConductor_FK int not null,
    generoConductor_FK int not null,
    vehiculo_FK varchar(6) not null,
    medioPago_FK int,
    foreign key (ciudadConductor_FK) references ciudad(idCiudad),
    foreign key (generoConductor_FK) references genero(idGenero),
    foreign key (vehiculo_FK) references vehiculo(idVehiculo),
    foreign key (medioPago_FK) references medioPago(idMedioPago)
)

/* Tabla calificacion */
create table calificacion (
    idCalificacion int primary key,
    recoPositiva int,
    recoNegativa int,
    canEstrellas int,
    comentario varchar(255),
    conductor_FK int not null,
    foreign key (conductor_FK) references conductor(idConductor)
);

/* Tabla servicio */
create table servicio (
    idServicio int primary key,
    fechaServicio date not null,
    valorServicio float not null,
    direccionOrigen varchar(255) not null,
    direccionDestino varchar(255) not null,
    mercancia_FK int not null,
    conductor_FK int not null,
    ciudad_FK int not null,
    foreign key (mercancia_FK) references mercancia(idMercancia),
    foreign key (conductor_FK) references conductor(idConductor),
    foreign key (ciudad_FK) references ciudad(idCiudad),
);
