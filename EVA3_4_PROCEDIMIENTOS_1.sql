delimiter $$
create procedure insertar_ciudad(in ciudad varchar(50)) 
begin 
	declare id_ciudad int; 
    set id_ciudad = generar_id_ciudad() +1;
    insert into ciudad value(id_ciudad, ciudad);
end $$
delimiter ;