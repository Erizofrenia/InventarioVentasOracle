/*CONSULTAS A TABLAS*/
SELECT * FROM producto;
SELECT * FROM cliente;

/*EJECUCIÓN DEL SP (CASO CORRECTO)*/
BEGIN
    sp_registrar_venta(
        p_id_cliente => 1,
        p_id_producto => 1,
        p_cantidad => 2,
        p_usuario_registro => 'admin'
    );
END;
/

/*CONSULTA A VISTA DE VENTAS*/
SELECT * FROM vw_ventas_detalle;

/*PRUEBA DE FUNCIONES*/
SELECT fn_total_venta(2, 15000) AS total FROM dual;
SELECT fn_calcular_iva(30000) AS iva FROM dual;

/*CASO DE ERROR (STOCK INSUFICIENTE)*/
BEGIN
    sp_registrar_venta(
        p_id_cliente => 1,
        p_id_producto => 1,
        p_cantidad => 100,
        p_usuario_registro => 'admin'
    );
END;
/
