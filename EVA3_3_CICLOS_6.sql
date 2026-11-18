delimiter $$
create function generar_id_ciudad()
returns int deterministic reads sql data 
begin 
	declare maxid int default 0; 
    select max(city_id) into maxid from ciudad; 
    return maxid;
    
end $$
delimiter ;