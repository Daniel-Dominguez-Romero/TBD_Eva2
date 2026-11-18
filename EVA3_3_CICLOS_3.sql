delimiter $$
create function sumatoria_repeat(numero int) 
returns int deterministic 
begin 
	declare sumatoria int default 0; 
    declare cont int default 1;
    repeat
		set sumatoria = sumatoria + cont; 
        set cont = cont + 1;
	until cont > numero end repeat;
    return sumatoria; 
end $$
delimiter ;