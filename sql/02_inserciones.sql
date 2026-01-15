/* CATEGORIAS */
INSERT INTO categoria (nombre, descripcion)
VALUES ('Electrónica', 'Productos electrónicos');

INSERT INTO categoria (nombre, descripcion)
VALUES ('Hogar', 'Productos para el hogar');

/* PRODUCTOS */
INSERT INTO producto (nombre, precio, stock, id_categoria, descripcion, estatus)
VALUES ('Laptop', 15000, 10, 1, 'Laptop de uso general', 'ACTIVO');

INSERT INTO producto (nombre, precio, stock, id_categoria, descripcion, estatus)
VALUES ('Microondas', 3200, 5, 2, 'Microondas doméstico', 'ACTIVO');

/* CLIENTES */
INSERT INTO cliente (nombre, apellidos, correo, telefono)
VALUES ('Juan', 'Pérez López', 'juan.perez@email.com', '5551234567');

INSERT INTO cliente (nombre, apellidos, correo, telefono)
VALUES ('Ana', 'García Ruiz', 'ana.garcia@email.com', '5559876543');

/* VERIFICACIÓN */
SELECT * FROM categoria;
SELECT * FROM producto;
SELECT * FROM cliente;
