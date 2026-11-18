delimiter $$
create procedure contar_ciudades(out cont int)
begin 
	select count(*) into cont from ciudad;
end $$
delimiter ; 