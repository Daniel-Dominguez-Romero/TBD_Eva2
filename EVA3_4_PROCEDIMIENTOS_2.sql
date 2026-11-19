delimiter $$
create function generar_rfc (
    nombre varchar(50),
    ap_paterno varchar(50),
    ap_materno varchar(50),
    fecha_nac date
) returns varchar(10)
deterministic
begin
    declare l1 char(1);
    declare l2 char(1);
    declare l3 char(1);
    declare l4 char(1);
    declare fecha varchar(6);
    declare resto varchar(50);

    set l1 = left(ap_paterno, 1);
    set resto = substring(ap_paterno, 2);
    set l2 = coalesce(regexp_substr(resto, '[aeiouAEIOU]'), 'X');

    if ap_materno is null or trim(ap_materno) = '' then
        set l3 = 'X';
    else
        set l3 = left(ap_materno, 1);
    end if;

    set l4 = left(nombre, 1);
    set fecha = date_format(fecha_nac, '%y%m%d');

    return upper(concat(l1, l2, l3, l4, fecha));
end $$
delimiter ;