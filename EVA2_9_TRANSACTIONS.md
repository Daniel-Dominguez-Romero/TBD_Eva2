**EVA2\_9\_TRANSACTIONS**





MySQL Shell 8.0.46



Copyright (c) 2016, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its affiliates.

Other names may be trademarks of their respective owners.



Type '\\help' or '\\?' for help; '\\quit' to exit.

&#x20;MySQL  JS > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching schema names for auto-completion... Press ^C to stop.

Your MySQL connection id is 24

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS > \\sql

Switching to SQL mode... Commands end with ;

Fetching global names for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  SQL > SET SESSION default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > set global default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > SHOW VARIABLES LIKE 'default\_storage\_engine';

+------------------------+--------+

| Variable\_name          | Value  |

+------------------------+--------+

| default\_storage\_engine | InnoDB |

+------------------------+--------+

1 row in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > create role 'supervisores';

Query OK, 0 rows affected (0.0219 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > grant select on eva2.actor2 to 'supervisores';

ERROR: 1146 (42S02): Table 'eva2.actor2' doesn't exist

&#x20;MySQL  localhost:3306 ssl  SQL > grant select on eva1.actor2 to 'supervisores';

Query OK, 0 rows affected (0.0149 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > create user 'usuario\_rol'@'localhost' identified by '1234';

Query OK, 0 rows affected (0.0086 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > grant 'supervisores' to 'usuario\_rol'@'localhost';

Query OK, 0 rows affected (0.0036 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect usuario\_rol@localhost

Creating a session to 'usuario\_rol@localhost'

Please provide the password for 'usuario\_rol@localhost':

MySQL Error 1045 (28000): Access denied for user 'usuario\_rol'@'localhost' (using password: NO)

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL > \\connect usuario\_rol@localhost

Creating a session to 'usuario\_rol@localhost'

Please provide the password for 'usuario\_rol@localhost': \*\*\*\*

Save password for 'usuario\_rol@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

Your MySQL connection id is 26

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > show tables;

ERROR: 1046 (3D000): No database selected

&#x20;MySQL  localhost:3306 ssl  SQL > use eva1

MySQL Error 1044: Access denied for user 'usuario\_rol'@'localhost' to database 'eva1'

&#x20;MySQL  localhost:3306 ssl  SQL > use eva1;

MySQL Error 1044: Access denied for user 'usuario\_rol'@'localhost' to database 'eva1'

&#x20;MySQL  localhost:3306 ssl  SQL > show databases;

+--------------------+

| Database           |

+--------------------+

| information\_schema |

| performance\_schema |

+--------------------+

2 rows in set (0.0013 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 27

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > show databases;

+--------------------+

| Database           |

+--------------------+

| employees          |

| eva1               |

| eva1\_copia         |

| eva2               |

| hospital           |

| information\_schema |

| mysql              |

| performance\_schema |

| sakila             |

| sys                |

| tbd\_exa1           |

| tutorial           |

| world\_x            |

| wrpracti\_northwind |

+--------------------+

14 rows in set (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > create role 'administrativos'@'localhost';

Query OK, 0 rows affected (0.0087 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > use eva1;

Default schema set to `eva1`.

Fetching global names, object names from `eva1` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > show tables;

+--------------------+

| Tables\_in\_eva1     |

+--------------------+

| actor2             |

| copia\_persona      |

| customer2          |

| custumer           |

| empleado           |

| estudiante         |

| items              |

| order\_details      |

| orders             |

| persona            |

| persona\_modificada |

| playera            |

| vehiculo           |

| vehiculo2          |

+--------------------+

14 rows in set (0.0020 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > grant select on eva1.customer2 to 'administrativos'@'localhost';

Query OK, 0 rows affected (0.0079 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > create user 'usuario\_rol2'@'localhost';

Query OK, 0 rows affected (0.0145 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > grant 'administrativos'@'localhost' to 'usuario\_rol2'@'localhost';

Query OK, 0 rows affected (0.0130 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect usuario\_rol2@localhost

Creating a session to 'usuario\_rol2@localhost'

Please provide the password for 'usuario\_rol2@localhost':

Save password for 'usuario\_rol2@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

Your MySQL connection id is 28

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > show databases;

+--------------------+

| Database           |

+--------------------+

| information\_schema |

| performance\_schema |

+--------------------+

2 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > set global activate\_all\_roles\_on\_login = ON;

ERROR: 1227 (42000): Access denied; you need (at least one of) the SUPER or SYSTEM\_VARIABLES\_ADMIN privilege(s) for this operation

&#x20;MySQL  localhost:3306 ssl  SQL > show variables like 'activate\_all\_roles\_on\_login';

+-----------------------------+-------+

| Variable\_name               | Value |

+-----------------------------+-------+

| activate\_all\_roles\_on\_login | OFF   |

+-----------------------------+-------+

1 row in set (0.0021 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > \\desconnect

Unknown command: '\\desconnect'

&#x20;MySQL  localhost:3306 ssl  SQL > \\desconnect

Unknown command: '\\desconnect'

&#x20;MySQL  localhost:3306 ssl  SQL > \\diconnect

Unknown command: '\\diconnect'

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 29

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL >

&#x20;MySQL  localhost:3306 ssl  SQL > set global activate\_all\_roles\_on\_login = ON;

Query OK, 0 rows affected (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > show variables like 'activate\_all\_roles\_on\_login';

+-----------------------------+-------+

| Variable\_name               | Value |

+-----------------------------+-------+

| activate\_all\_roles\_on\_login | ON    |

+-----------------------------+-------+

1 row in set (0.0021 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect usuario\_rol2@localhost

Creating a session to 'usuario\_rol2@localhost'

Please provide the password for 'usuario\_rol2@localhost':

Save password for 'usuario\_rol2@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

Your MySQL connection id is 30

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL >

&#x20;MySQL  localhost:3306 ssl  SQL >

&#x20;MySQL  localhost:3306 ssl  SQL >

&#x20;MySQL  localhost:3306 ssl  SQL > show databases;

+--------------------+

| Database           |

+--------------------+

| eva1               |

| information\_schema |

| performance\_schema |

+--------------------+

3 rows in set (0.0013 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 31

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL >

&#x20;MySQL  localhost:3306 ssl  SQL > use eva2;

Default schema set to `eva2`.

Fetching global names, object names from `eva2` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show tables;

+----------------+

| Tables\_in\_eva2 |

+----------------+

| carrera        |

| cliente        |

| clienteresta   |

| comida         |

| estudiante     |

| producto       |

| tablaa         |

| tablab         |

| venta          |

| venta\_detalle  |

+----------------+

10 rows in set (0.0017 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc venta;

+-------------+------+------+-----+---------+----------------+

| Field       | Type | Null | Key | Default | Extra          |

+-------------+------+------+-----+---------+----------------+

| id\_venta    | int  | NO   | PRI | NULL    | auto\_increment |

| id\_cliente  | int  | NO   | MUL | NULL    |                |

| fecha\_venta | date | YES  |     | NULL    |                |

+-------------+------+------+-----+---------+----------------+

3 rows in set (0.0022 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0053 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          7 | Pedro  | Paramo    | 2005-12-12 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|         69 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

4 rows in set (0.0039 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from producto

&#x20;                                    -> ;

+-------------+----------+--------+--------+

| id\_producto | nombre   | precio | unidad |

+-------------+----------+--------+--------+

|           1 | Playera  |   5000 | pieza  |

|           2 | Pantalon |   2000 | pieza  |

|           3 | Short    |   1000 | pieza  |

+-------------+----------+--------+--------+

3 rows in set (0.0133 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta\_det;

ERROR: 1146 (42S02): Table 'eva2.venta\_det' doesn't exist

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta\_detalle;

+--------------+----------+-------------+----------+

| id\_venta\_det | id\_venta | id\_producto | cantidad |

+--------------+----------+-------------+----------+

|            1 |        4 |           1 |       10 |

|            2 |        4 |           2 |        3 |

|            3 |        4 |           3 |       20 |

|            4 |        5 |           1 |      100 |

|            5 |        6 |           2 |       50 |

|            6 |        6 |           3 |       10 |

|            7 |        4 |           1 |       10 |

|            8 |        4 |           2 |        3 |

|            9 |        4 |           3 |       20 |

|           10 |        5 |           1 |      100 |

|           11 |        6 |           2 |       50 |

|           12 |        9 |           3 |       10 |

+--------------+----------+-------------+----------+

12 rows in set (0.0134 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta)

&#x20;                                    -> value(5, "2026-11-05");

Query OK, 1 row affected (0.0024 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

|        5 |          5 | 2026-11-05  |

+----------+------------+-------------+

5 rows in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta\_detalle

&#x20;                                    -> where id\_venta = 5;

+--------------+----------+-------------+----------+

| id\_venta\_det | id\_venta | id\_producto | cantidad |

+--------------+----------+-------------+----------+

|            4 |        5 |           1 |      100 |

|           10 |        5 |           1 |      100 |

+--------------+----------+-------------+----------+

2 rows in set (0.0009 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta) value(10, "2027-11-05");

Query OK, 1 row affected (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

|        5 |          5 | 2026-11-05  |

|        6 |         10 | 2027-11-05  |

+----------+------------+-------------+

6 rows in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta\_detalle where id\_venta = 6;

+--------------+----------+-------------+----------+

| id\_venta\_det | id\_venta | id\_producto | cantidad |

+--------------+----------+-------------+----------+

|            5 |        6 |           2 |       50 |

|            6 |        6 |           3 |       10 |

|           11 |        6 |           2 |       50 |

+--------------+----------+-------------+----------+

3 rows in set (0.0012 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > start transaction;

Query OK, 0 rows affected (0.0113 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > instert into venta(id\_cliente, fecha\_venta)

&#x20;                                       -> value(99, "2028-11-05");

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'instert into venta(id\_cliente, fecha\_venta)

value(99, "2028-11-05")' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > insert into venta(id\_cliente, fecha\_venta) value(99, "2028-11-05");

Query OK, 1 row affected (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > insert into venta\_detalle(id\_venta, id\_producto, cantidad)

&#x20;                                       -> value(50,1,5);

Query OK, 1 row affected (0.0011 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > insert into venta\_detalle(id\_venta, id\_producto, cantidad)  value(9999,1,5);

Query OK, 1 row affected (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > rollback;

Query OK, 0 rows affected, 1 warning (0.0006 sec)

Warning (code 1196): Some non-transactional changed tables couldn't be rolled back

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

|        5 |          5 | 2026-11-05  |

|        6 |         10 | 2027-11-05  |

|        7 |         99 | 2028-11-05  |

+----------+------------+-------------+

7 rows in set (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > start transaction;

Query OK, 0 rows affected (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          7 | Pedro  | Paramo    | 2005-12-12 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|         69 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

4 rows in set (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > insert into cliente(nombre, apellidos, fecha\_nac)

&#x20;                                       -> value("xxxx","yyyy","1999-12-12");

Query OK, 1 row affected (0.0009 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|         70 | xxxx   | yyyy      | 1999-12-12 |

|          7 | Pedro  | Paramo    | 2005-12-12 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|         69 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

5 rows in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > commit;

Query OK, 0 rows affected (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|         70 | xxxx   | yyyy      | 1999-12-12 |

|          7 | Pedro  | Paramo    | 2005-12-12 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|         69 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

5 rows in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > start transaction;

Query OK, 0 rows affected (0.0004 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > insert into cliente(nombre, apellidos, fecha\_nac) value("xxxx","yyyy","1999-12-12");

Query OK, 1 row affected (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|         70 | xxxx   | yyyy      | 1999-12-12 |

|          7 | Pedro  | Paramo    | 2005-12-12 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|         69 | Jesus  | Rascon    | 2009-02-17 |

|         71 | xxxx   | yyyy      | 1999-12-12 |

+------------+--------+-----------+------------+

6 rows in set (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > ^C

&#x20;MySQL  localhost:3306 ssl  eva2  ★  SQL > rollback

&#x20;                                       -> ;

Query OK, 0 rows affected, 1 warning (0.0006 sec)

Warning (code 1196): Some non-transactional changed tables couldn't be rolled back

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > ^C

&#x20;MySQL  localhost:3306 ssl  eva2  SQL >

