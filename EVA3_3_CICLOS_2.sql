delimiter $$
create function sumatoria_while(numero int) 
returns int deterministic 
begin 
	declare sumatoria int default 0; 
    declare cont int default 1;
    while cont <= numero do
		set sumatoria = sumatoria + cont; 
        set cont = cont + 1;
	end while;
    return sumatoria; 
end $$
delimiter ;