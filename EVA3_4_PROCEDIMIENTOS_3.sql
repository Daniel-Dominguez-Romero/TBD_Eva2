delimiter $$
create procedure insertar_persona(
    in nombre varchar(50),
    in ap_paterno varchar(50),
    in ap_materno varchar(50),
    in fecha_nac date
)
begin
    declare rfc varchar(10);
    set rfc = generar_rfc(nombre, ap_paterno, ap_materno, fecha_nac);
    insert into persona value(rfc, nombre, ap_paterno, ap_materno, fecha_nac);
end $$
delimiter ;