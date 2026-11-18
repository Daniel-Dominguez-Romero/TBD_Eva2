delimiter $$
create function insertar_ciudad(id_ciudad int, nombre_ciudad varchar(50))
returns int deterministic modifies sql data 

begin 
	insert into ciudad value(id_ciudad, nombre_ciudad);
    return 1;
end $$
delimiter ;