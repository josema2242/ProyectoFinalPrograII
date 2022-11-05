CREATE DEFINER=`root`@`localhost` PROCEDURE `Mostrar`()
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
from inventario inner join producto on  inventario.prod_idproducto=producto.idproducto;


END