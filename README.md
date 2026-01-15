Instrucciones para ejecutar y probar el código:
En la carpeta /sql encontrarás los archivos a utilizar con oracle.

El 01_creacion_tablas.sql incluye el script para la creacion de tablas así como los comentarios que se le agregan tanto a las tablas como a las columnas

El 02_inserciones.sql Incluye tanto la inserción de registros en cada tabla como los SELECT para verificar lo que hay registrado en cada una de las tablas, exceptuando ventas cuyos registros se generarán a partir de una funcion sp

En este orden ejecuta ahora el 04_funciones_sp.sql para crear las funciones de calcular total por cantidad, calcular iva y registrar ventas de productos a clientes.

Las vistas de 03_vistas.sql pueden ejecutarse ahora que ya estan creado el sp de ventas, sin las funciones no se mostrarían las vistas de las ventas. Puedes probarlas con el select de la vista que se encuentra hasta abajo del archivo

Una vez ejecutados todos los 4, el 05_pruebas.sql incluye las pruebas unitarias de consulta a tablas, ejecucion del registro de una venta con BEGIN, consultas de la vista de ventas, la prueba de las funciones del total de la venta y el calculo del iva. Tambien incluye un caso de error en el que si se quisieran vender más cantidad de lo que hay en el stock ocurriría un error.