CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarExportar`(IN fech1 VARCHAR(30), IN fech2 VARCHAR(30))
Begin 
		select inventario.idinventario,
		inventario.fec_ini,
        inventario.fec_fin,
        inventario.stk_ini,
        inventario.entradas,
        inventario.salidas,
        inventario.total,
        inventario.prod_idproducto,
        producto.descripcion
from inventario inner join producto on  inventario.prod_idproducto=producto.idproducto
where fec_ini >= fech1 and fec_ini <= fech2
into outfile "C:\\Users\\Emanuel de Ramirez\\Desktop\\BusquedaRegistrosporFecha.txt";

END