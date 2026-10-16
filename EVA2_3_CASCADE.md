**EVA2\_3\_CASCADE**



MySQL Shell 8.0.46



Copyright (c) 2016, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its affiliates.

Other names may be trademarks of their respective owners.



Type '\\help' or '\\?' for help; '\\quit' to exit.

&#x20;MySQL  JS > /sql

Expected an operand but found / (SyntaxError)

&#x20;MySQL  JS > \\sql

Switching to SQL mode... Commands end with ;

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 8

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL >

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

| world\_x            |

| wrpracti\_northwind |

+--------------------+

13 rows in set (0.0012 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > use eva2;

Default schema set to `eva2`.

Fetching global names, object names from `eva2` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show tables;

+----------------+

| Tables\_in\_eva2 |

+----------------+

| cliente        |

| tablaa         |

| tablab         |

| venta          |

+----------------+

4 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          3 | Daniel | Dominguez | 1999-03-01 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|          5 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

4 rows in set (0.0151 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show create table cliente;

+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Table   | Create Table                                                                                                                                                                                                                                                                                                                                      |

+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| cliente | CREATE TABLE `cliente` (

&#x20; `id\_cliente` int NOT NULL AUTO\_INCREMENT,

&#x20; `nombre` varchar(50) COLLATE utf8mb4\_unicode\_ci NOT NULL,

&#x20; `apellidos` varchar(50) COLLATE utf8mb4\_unicode\_ci NOT NULL,

&#x20; `fecha\_nac` date DEFAULT NULL,

&#x20; PRIMARY KEY (`id\_cliente`)

) ENGINE=MyISAM AUTO\_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci |

+---------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

1 row in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show create table venta;

+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Table | Create Table                                                                                                                                                                                                                                                                       |

+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| venta | CREATE TABLE `venta` (

&#x20; `id\_venta` int NOT NULL AUTO\_INCREMENT,

&#x20; `id\_cliente` int NOT NULL,

&#x20; `fecha\_venta` date DEFAULT NULL,

&#x20; PRIMARY KEY (`id\_venta`),

&#x20; KEY `id\_cliente` (`id\_cliente`)

) ENGINE=MyISAM AUTO\_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci |

+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

1 row in set (0.0031 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > alter table venta

&#x20;                                    -> add foreign key id\_cliente

&#x20;                                    -> references cliente(id\_cliente)

&#x20;                                    -> on delete cascade

&#x20;                                    -> on update cascade;

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'references cliente(id\_cliente)

on delete cascade

on update cascade' at line 3

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > alter table venta add foreign key (id\_cliente)  references cliente(id\_cliente) on delete cascade on update cascade;

Query OK, 4 rows affected (0.0271 sec)



Records: 4  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show create table venta;

+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Table | Create Table                                                                                                                                                                                                                                                                       |

+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| venta | CREATE TABLE `venta` (

&#x20; `id\_venta` int NOT NULL AUTO\_INCREMENT,

&#x20; `id\_cliente` int NOT NULL,

&#x20; `fecha\_venta` date DEFAULT NULL,

&#x20; PRIMARY KEY (`id\_venta`),

&#x20; KEY `id\_cliente` (`id\_cliente`)

) ENGINE=MyISAM AUTO\_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci |

+-------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

1 row in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          3 | Daniel | Dominguez | 1999-03-01 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|          5 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

4 rows in set (0.0025 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > delete from cliente

&#x20;                                    -> where id\_cliente = 3;

Query OK, 1 row affected (0.0009 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|          5 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

3 rows in set (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > update cliente

&#x20;                                    -> set

&#x20;                                    -> id\_cliente = 5

&#x20;                                    -> where id\_cliente = 4;^C

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > :

&#x20;                                    -> ;

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ':' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > update cliente

&#x20;                                    -> set

&#x20;                                    -> id\_cliente = 69

&#x20;                                    -> where id\_cliente = 5;

Query OK, 1 row affected (0.0008 sec)



Rows matched: 1  Changed: 1  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|         69 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

3 rows in set (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table producto(

&#x20;                                    -> id\_producto int not null key auto\_increment,

&#x20;                                    -> nombre varchar(50) not null,

&#x20;                                    -> precio double not null,

&#x20;                                    -> unidad varchar(10) not null);

Query OK, 0 rows affected (0.0163 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc producto;

+-------------+-------------+------+-----+---------+----------------+

| Field       | Type        | Null | Key | Default | Extra          |

+-------------+-------------+------+-----+---------+----------------+

| id\_producto | int         | NO   | PRI | NULL    | auto\_increment |

| nombre      | varchar(50) | NO   |     | NULL    |                |

| precio      | double      | NO   |     | NULL    |                |

| unidad      | varchar(10) | NO   |     | NULL    |                |

+-------------+-------------+------+-----+---------+----------------+

4 rows in set (0.0019 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into producto(nombre, precio, unidad)

&#x20;                                    -> values("Playera", 5000, "pieza"),

&#x20;                                    -> ("Pantalon", 2000, "pieza"),

&#x20;                                    -> ("Short", 1500, "pieza");

Query OK, 3 rows affected (0.0024 sec)



Records: 3  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from producto;

+-------------+----------+--------+--------+

| id\_producto | nombre   | precio | unidad |

+-------------+----------+--------+--------+

|           1 | Playera  |   5000 | pieza  |

|           2 | Pantalon |   2000 | pieza  |

|           3 | Short    |   1500 | pieza  |

+-------------+----------+--------+--------+

3 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table venta\_detalle(

&#x20;                                    -> id\_venta\_det int not null key auto\_increment,

&#x20;                                    -> id\_venta int not null,

&#x20;                                    -> id\_producto int not null,

&#x20;                                    -> cantidad int not null,

&#x20;                                    -> foreign key(id\_venta)

&#x20;                                    -> references venta (id\_venta)

&#x20;                                    -> on update cascade

&#x20;                                    -> on delete cascade,

&#x20;                                    -> foreign key(id\_producto)

&#x20;                                    -> references producto(id\_producto)

&#x20;                                    -> on update cascade

&#x20;                                    ->

&#x20;                                    -> on delete cascade);

Query OK, 0 rows affected (0.0073 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show create table producto;

+----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Table    | Create Table                                                                                                                                                                                                                                                                                                                                 |

+----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| producto | CREATE TABLE `producto` (

&#x20; `id\_producto` int NOT NULL AUTO\_INCREMENT,

&#x20; `nombre` varchar(50) COLLATE utf8mb4\_unicode\_ci NOT NULL,

&#x20; `precio` double NOT NULL,

&#x20; `unidad` varchar(10) COLLATE utf8mb4\_unicode\_ci NOT NULL,

&#x20; PRIMARY KEY (`id\_producto`)

) ENGINE=MyISAM AUTO\_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci |

+----------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

1 row in set (0.0004 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show create table venta\_detalle;

+---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Table         | Create Table                                                                                                                                                                                                                                                                                                                           |

+---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| venta\_detalle | CREATE TABLE `venta\_detalle` (

&#x20; `id\_venta\_det` int NOT NULL AUTO\_INCREMENT,

&#x20; `id\_venta` int NOT NULL,

&#x20; `id\_producto` int NOT NULL,

&#x20; `cantidad` int NOT NULL,

&#x20; PRIMARY KEY (`id\_venta\_det`),

&#x20; KEY `id\_venta` (`id\_venta`),

&#x20; KEY `id\_producto` (`id\_producto`)

) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci |

+---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

1 row in set (0.0018 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta\_detalle(

&#x20;                                    -> id\_venta, id\_producto, cantidad)

&#x20;                                    -> values(4, 1, 10), (4, 2, 3), (4, 3, 20),

&#x20;                                    -> (5, 1, 100), (6, 2, 50), (6, 3, 10);

Query OK, 6 rows affected (0.0007 sec)



Records: 6  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0007 sec)

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

+--------------+----------+-------------+----------+

6 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from producto;

+-------------+----------+--------+--------+

| id\_producto | nombre   | precio | unidad |

+-------------+----------+--------+--------+

|           1 | Playera  |   5000 | pieza  |

|           2 | Pantalon |   2000 | pieza  |

|           3 | Short    |   1500 | pieza  |

+-------------+----------+--------+--------+

3 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta\_detalle( id\_venta, id\_producto, cantidad)  values(4, 1, 10), (4, 2, 3), (4, 3, 20),  (5, 1, 100), (6, 2, 50), (9, 3, 10);

Query OK, 6 rows affected (0.0005 sec)



Records: 6  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > set global default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > set session  default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0003 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > set variables default\_storage\_engine = 'InnoDB';

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'default\_storage\_engine = 'InnoDB'' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > set variables like 'default\_storage\_engine';

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like 'default\_storage\_engine'' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show variables like 'default\_storage\_engine';

+------------------------+--------+

| Variable\_name          | Value  |

+------------------------+--------+

| default\_storage\_engine | InnoDB |

+------------------------+--------+

1 row in set (0.0018 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0005 sec)

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

12 rows in set (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|         69 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

3 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0004 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > update cliente

&#x20;                                    -> set

&#x20;                                    -> id\_cliente = 6

&#x20;                                    -> where id\_cliente =3;

Query OK, 0 rows affected (0.0006 sec)



Rows matched: 0  Changed: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-05-05  |

|        2 |          5 | 2025-06-04  |

|        3 |          8 | 2025-06-04  |

|        4 |         10 | 2025-06-04  |

+----------+------------+-------------+

4 rows in set (0.0009 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > delete from producto

&#x20;                                    -> where nombre = "short";

Query OK, 1 row affected (0.0006 sec)

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

12 rows in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL >

