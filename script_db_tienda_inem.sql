create database db_comidad_rapidas_inem;
use db_comidad_rapidas_inem;

 create table empleado(
id_empleado int primary key not null,
nombre_empleado varchar(100) not null,
apellido_empleado varchar(100) not null,
roll_empleado varchar(100) not null 
);

create table cliente(
id_cliente int primary key not null,
nombre_cliente varchar(100) not null,
apellido_cliente varchar(100) not null,
edad_cliente smallint not null,
grado_cliente smallint not null
);
create table proveedor(
id_proveedor int primary key not null,
nombre_proveedor varchar(100),
contacto varchar(100),
tipo_de_producto varchar(100),
cod_proveedor int not null,
cod_tipo_producto int not null
);

create table producto(
id_producto int primary key not null,
nombre_producto varchar(100),
precio float not null,
tipo_producto varchar(100),
cod_proveedor int not null,
foreign key(cod_proveedor) references proveedor(id_proveedor)
);


create table venta(
id_venta int primary key not null,
fecha date not null,
hora time not null,
cantidad varchar(120),
cod_empleado int not null,
cod_cliente int not null,
cod_producto int not null,
foreign key(cod_producto) references producto(id_producto),
foreign key(cod_empleado) references empleado (id_empleado),
foreign key (cod_cliente) references cliente (id_cliente) 
);
select* from cliente;
show tables;

