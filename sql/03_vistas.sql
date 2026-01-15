/*VISTA: PRODUCTOS CON CATEGORIA*/
CREATE OR REPLACE VIEW vw_productos_categoria AS
SELECT
    p.id_producto,
    p.nombre AS producto,
    p.precio,
    p.stock,
    p.estatus,
    c.nombre AS categoria
FROM producto p
JOIN categoria c ON p.id_categoria = c.id_categoria;

/*VISTA: VENTAS CON CLIENTE Y PRODUCTO */
CREATE OR REPLACE VIEW vw_ventas_detalle AS
SELECT
    v.id_venta,
    v.fecha_venta,
    c.nombre || ' ' || c.apellidos AS cliente,
    p.nombre AS producto,
    v.cantidad,
    p.precio
FROM venta v
JOIN cliente c ON v.id_cliente = c.id_cliente
JOIN producto p ON v.id_producto = p.id_producto;

/* PRUEBAS */
SELECT * FROM vw_productos_categoria;
SELECT * FROM vw_ventas_detalle;
