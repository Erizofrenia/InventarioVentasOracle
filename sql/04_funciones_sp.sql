/*FUNCIÓN: TOTAL DE VENTA*/
CREATE OR REPLACE FUNCTION fn_total_venta (
    p_cantidad NUMBER,
    p_precio   NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN p_cantidad * p_precio;
END;
/

/*FUNCIÓN: CALCULAR IVa (16%)*/
CREATE OR REPLACE FUNCTION fn_calcular_iva (
    p_monto NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN p_monto * 0.16;
END;
/

/*STORED PROCEDURE: REGISTRAR VENTA*/
CREATE OR REPLACE PROCEDURE sp_registrar_venta (
    p_id_cliente       IN NUMBER,
    p_id_producto      IN NUMBER,
    p_cantidad         IN NUMBER,
    p_usuario_registro IN VARCHAR2
) IS
    v_stock_actual producto.stock%TYPE;
BEGIN
    SELECT stock INTO v_stock_actual
    FROM producto
    WHERE id_producto = p_id_producto;

    IF v_stock_actual < p_cantidad THEN
        RAISE_APPLICATION_ERROR(-20001, 'Stock insuficiente');
    END IF;

    INSERT INTO venta (
        id_cliente,
        id_producto,
        cantidad,
        usuario_registro
    ) VALUES (
        p_id_cliente,
        p_id_producto,
        p_cantidad,
        p_usuario_registro
    );

    UPDATE producto
    SET stock = stock - p_cantidad
    WHERE id_producto = p_id_producto;

END;
/
