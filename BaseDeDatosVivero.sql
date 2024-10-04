CREATE DATABASE vivero;

use vivero;

create table pago (
id_pago int,
id_cliente int,
forma_pago varchar(40),
id_transaccion varchar(50),
fecha_pago date,
total decimal(15,2)

);

create table oficina (
id_oficina int,
codigo_oficina varchar(10),
ciudad varchar(30),
pais varchar(50),
region varchar(50),
codigo_postal varchar(10),
telefono varchar(20)
);

create table empleado(
id_empleado int,
codigo_empleado int,
nombre varchar(50),
apellido varchar(50),
extension varchar(10),
email varchar(100),
id_oficina int,
id_jefe int,
puesto varchar(50)
);

create table detalle_pedido(
id_detalle_pedido int,
id_pedido int,
id_producto int,
cantidad int,
precio_unidad decimal(15,2),
numero_linea smallint
);

create table cliente(
id_cliente int,
codigo_cliente int,
nombre_cliente varchar(50),
nombre_contacto varchar(30),
apellido_contacto varchar(30),
telefono varchar(15),
fax varchar(15),
ciudad varchar(50),
region varchar(50),
pais varchar(50),
codigo_postal varchar(10),
id_empleado int,
limite_credito decimal(15,2)
);

create table gama_producto(
id_gama int,
gama varchar(50),
descripcion_texto text,
descripcion_html text,
imagen varchar(256)
);

create table producto(
int_producto int,
codigo_producto varchar(15),
nombre varchar(70),
id_gama int,
dimensiones varchar(25),
proveedor varchar(50),
descripcion text,
cantidad_en_stock smallint,
precio_venta decimal(15,2),
precio_proveedor decimal(15,2)
);

create table pedido(
id_pedido int,
codigo_pedido int,
fecha_pedido date,
fecha_esperada date,
fecha_entrega date,
estado varchar(15),
comentarios text,
id_cliente int
);