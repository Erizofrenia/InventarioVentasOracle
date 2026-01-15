/*TABLA: CATEGORIA*/
CREATE TABLE categoria (
    id_categoria        NUMBER GENERATED ALWAYS AS IDENTITY
                        CONSTRAINT pk_categoria PRIMARY KEY,
    nombre               VARCHAR2(100) NOT NULL,
    descripcion          VARCHAR2(255),
    fecha_creacion       DATE DEFAULT SYSDATE NOT NULL,
    fecha_modificacion   DATE
);

/*TABLA: PRODUCTO*/
CREATE TABLE producto (
    id_producto          NUMBER GENERATED ALWAYS AS IDENTITY
                        CONSTRAINT pk_producto PRIMARY KEY,
    nombre               VARCHAR2(150) NOT NULL,
    precio               NUMBER(10,2) NOT NULL,
    stock                NUMBER NOT NULL,
    id_categoria          NUMBER NOT NULL,
    descripcion          VARCHAR2(255),
    estatus              VARCHAR2(20) NOT NULL,
    fecha_creacion       DATE DEFAULT SYSDATE NOT NULL,
    fecha_modificacion   DATE,
    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (id_categoria)
        REFERENCES categoria(id_categoria)
);

/*TABLA: CLIENTE*/
CREATE TABLE cliente (
    id_cliente            NUMBER GENERATED ALWAYS AS IDENTITY
                         CONSTRAINT pk_cliente PRIMARY KEY,
    nombre                VARCHAR2(100) NOT NULL,
    apellidos             VARCHAR2(150) NOT NULL,
    correo                VARCHAR2(150) NOT NULL,
    telefono              VARCHAR2(20),
    fecha_registro        DATE DEFAULT SYSDATE NOT NULL,
    fecha_creacion        DATE DEFAULT SYSDATE NOT NULL,
    fecha_modificacion    DATE
);

/*TABLA: VENTA*/
CREATE TABLE venta (
    id_venta              NUMBER GENERATED ALWAYS AS IDENTITY
                         CONSTRAINT pk_venta PRIMARY KEY,
    id_cliente            NUMBER NOT NULL,
    id_producto           NUMBER NOT NULL,
    cantidad              NUMBER NOT NULL,
    fecha_venta           DATE DEFAULT SYSDATE NOT NULL,
    usuario_registro      VARCHAR2(100) NOT NULL,
    fecha_creacion        DATE DEFAULT SYSDATE NOT NULL,
    fecha_modificacion    DATE,
    CONSTRAINT fk_venta_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    CONSTRAINT fk_venta_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
);



/**********************************************************/

/*COMENTARIOS DE TABLAS*/
COMMENT ON TABLE categoria IS 'Tabla que almacena las categorías de los productos.';
COMMENT ON TABLE producto IS 'Tabla que almacena la información de los productos.';
COMMENT ON TABLE cliente IS 'Tabla que almacena la información de los clientes.';
COMMENT ON TABLE venta IS 'Tabla que registra las ventas realizadas.';

/* Comment on*/

/* CATEGORIA */
COMMENT ON COLUMN categoria.id_categoria IS 'Identificador único de la categoría.';
COMMENT ON COLUMN categoria.nombre IS 'Nombre de la categoría.';
COMMENT ON COLUMN categoria.descripcion IS 'Descripción de la categoría.';
COMMENT ON COLUMN categoria.fecha_creacion IS 'Fecha de creación del registro.';
COMMENT ON COLUMN categoria.fecha_modificacion IS 'Fecha de última modificación del registro.';

/* PRODUCTO */
COMMENT ON COLUMN producto.id_producto IS 'Identificador único del producto.';
COMMENT ON COLUMN producto.nombre IS 'Nombre del producto.';
COMMENT ON COLUMN producto.precio IS 'Precio unitario del producto.';
COMMENT ON COLUMN producto.stock IS 'Cantidad disponible en inventario.';
COMMENT ON COLUMN producto.id_categoria IS 'Categoría a la que pertenece el producto.';
COMMENT ON COLUMN producto.descripcion IS 'Descripción del producto.';
COMMENT ON COLUMN producto.estatus IS 'Estado del producto (activo/inactivo).';
COMMENT ON COLUMN producto.fecha_creacion IS 'Fecha de creación del registro.';
COMMENT ON COLUMN producto.fecha_modificacion IS 'Fecha de última modificación del registro.';

/* CLIENTE */
COMMENT ON COLUMN cliente.id_cliente IS 'Identificador único del cliente.';
COMMENT ON COLUMN cliente.nombre IS 'Nombre del cliente.';
COMMENT ON COLUMN cliente.apellidos IS 'Apellidos del cliente.';
COMMENT ON COLUMN cliente.correo IS 'Correo electrónico del cliente.';
COMMENT ON COLUMN cliente.telefono IS 'Teléfono de contacto del cliente.';
COMMENT ON COLUMN cliente.fecha_registro IS 'Fecha de registro del cliente.';
COMMENT ON COLUMN cliente.fecha_creacion IS 'Fecha de creación del registro.';
COMMENT ON COLUMN cliente.fecha_modificacion IS 'Fecha de última modificación del registro.';

/* VENTA */
COMMENT ON COLUMN venta.id_venta IS 'Identificador único de la venta.';
COMMENT ON COLUMN venta.id_cliente IS 'Cliente que realiza la compra.';
COMMENT ON COLUMN venta.id_producto IS 'Producto vendido.';
COMMENT ON COLUMN venta.cantidad IS 'Cantidad de productos vendidos.';
COMMENT ON COLUMN venta.fecha_venta IS 'Fecha en que se realizó la venta.';
COMMENT ON COLUMN venta.usuario_registro IS 'Usuario que registró la venta.';
COMMENT ON COLUMN venta.fecha_creacion IS 'Fecha de creación del registro.';
COMMENT ON COLUMN venta.fecha_modificacion IS 'Fecha de última modificación del registro.';
