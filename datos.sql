insert into tipoMercancia values 
    (1, 'GRANEL'),
    (2, 'LIQUIDO'),
    (3, 'FRAGIL'),
    (4, 'PELIGROSO'),
    (5, 'MATERIA PRIMA');

insert into ciudad values (1, 'BOGOTA');

insert into genero values 
    (1, 'FEMENINO'),
    (2, 'MASCULINO'),
    (3, 'OTRO');

insert into medioPago values
    (1, 'CONTRAENTREGA'),
    (2, 'PSE'),
    (3, 'NEQUI'),
    (4, 'DAVIPLATA'),
    (5, 'CREDITO');

insert into tipoVehiculo values 
    (1, 'ESTACAS'),
    (2, 'RIGIDO'),
    (3, 'ARTICULADO'),
    (4, 'FRIGORIFICO'),
    (5, 'NIÑERA');

insert into color values 
    (1, 'ROJO'),
    (2, 'AMARILLO'),
    (3, 'AZUL'),
    (4, 'BLANCO'),
    (5, 'NEGRO');

insert into vehiculo values 
    ('ABC123', '1 TONELADA',  1, 1),
    ('DEF456', '2 TONELADA', 2, 2 ),
    ('GHI789', '3 TONELADA',  3, 3 ),
    ('JKL123', '4 TONELADA', 4, 4 ),
    ('MNO456', '5 TONELADA',  5, 5 );

insert into cliente values 
    (1001329488, 'Andrea', 'Gomez', 'andrea@gmail.com', '1234', 'ACTIVO', 1, 1),
    (1234567897, 'Claudia', 'Gomez', 'claudia@gmail.com', '1234', 'ACTIVO', 1, 1),
    (51878701, 'Liliana', 'Agudelo', 'liliana@gmail.com', '1234', 'ACTIVO', 1, 1),
    (147852369, 'Andres', 'Rocha', 'andres@gmail.com', '1234', 'ACTIVO', 1, 2),
    (963258741, 'Jordan', 'Manrique', 'jordan@gmail.com', '1234', 'ACTIVO', 1, 2);

insert into mercancia values
    (1, '1 TONELADA', 'SILLA RIMAX', 5, 1001329488),
    (2, '2 TONELADA', 'MESAS RIMAX', 5, 1234567897),
    (3, '3 TONELADA', 'TRASTEO', 5, 51878701),
    (4, '4 TONELADA', 'VITRINA', 5, 147852369),
    (5, '5 TONELADA', 'COMPUTADOR', 5, 963258741);

insert into conductor values
    (123456789, 'Juan', 'Toro', 'juan@gmail.com',  '1234', 'ACTIVO', 1, 2, 'ABC123', 2),
    (258369147, 'Andres', 'Plaza', 'andresp@gmail.com', '1234', 'ACTIVO', 1, 2, 'DEF456', 2),
    (369147258, 'Camilo', 'Benavidez', 'camilo@gmail.com', '1234', 'ACTIVO', 1, 2, 'GHI789', 2),
    (456123789, 'Jessica', 'Cepeda', 'jessica@gmail.com', '1234', 'ACTIVO', 1, 1, 'JKL123', 2),
    (789456123, 'Ana', 'Garza', 'ana@gmail.com', '1234', 'ACTIVO', 1, 1, 'MNO456', 2);

insert into calificacion values 
    (1, 0, 1, 2, 'MAL CONDUCTOR', 123456789),
    (2, 1, 0, 4, 'BUEN CONDUCTOR', 123456789),
    (3, 1, 0, 3, 'REGULAR CONDUCTOR', 123456789),
    (4, 1, 0, 5, 'MUY BUEN CONDUCTOR', 123456789),
    (5, 0, 1, 1, 'MUY MAL CONDUCTOR', 123456789);

insert into servicio values 
    (1, '2022-08-07T05:23:00', 12.3, 'Carrera 1', 'Carrera 10', 1, 123456789, 1),
    (2, '2022-08-07T05:23:00', 12.3, 'Carrera 2', 'Carrera 10', 2, 258369147, 1),
    (3, '2022-08-07T05:23:00', 12.3, 'Carrera 3', 'Carrera 10', 3, 369147258, 1),
    (4, '2022-08-07T05:23:00', 12.3, 'Carrera 4', 'Carrera 10', 4, 456123789, 1),
    (5, '2022-08-07T05:23:00', 12.3, 'Carrera 5', 'Carrera 10', 5, 789456123, 1);
    
