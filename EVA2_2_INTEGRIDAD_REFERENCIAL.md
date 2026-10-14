**EVA2\_2\_INTEGRIDAD\_REFERENCIAL**



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

Your MySQL connection id is 8

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS > \\sql

Switching to SQL mode... Commands end with ;

Fetching global names for auto-completion... Press ^C to stop.

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

13 rows in set (0.0011 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > use eva2;

Default schema set to `eva2`.

Fetching global names, object names from `eva2` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show tables;

+----------------+

| Tables\_in\_eva2 |

+----------------+

| tablaa         |

| tablab         |

+----------------+

2 rows in set (0.0019 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table cliente(

&#x20;                                    -> id\_cliente int not null key auto\_increment,

&#x20;                                    -> nombre varchar(50) not null,

&#x20;                                    -> apellidos varchar(50) not null,

&#x20;                                    -> fecha\_nac date);

Query OK, 0 rows affected (0.0181 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente (

&#x20;                                    -> nombre, apellidos, fecha\_nac)

&#x20;                                    -> values ("Juan", "Perez", "05-05-1979"),

&#x20;                                    -> ("Pedro", "Paramo", "2005-09-12"),

&#x20;                                    -> ("Daniel", "Dominguez", "1999-03-01"));

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 5

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente ( nombre, apellidos, fecha\_nac) values ("Juan", "Perez", "2003-05-05"),  ("Pedro", "Paramo", "2005-09-12"), ("Daniel", "Dominguez", "1999-03-01"));

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente ( nombre, apellidos, fecha\_nac) values ("Juan", "Perez", "2003-05-05"),  ("Pedro", "Paramo", "2005-09-12"), ("Daniel", "Dominguez", "1999-03-01");

Query OK, 3 rows affected (0.0042 sec)



Records: 3  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          1 | Juan   | Perez     | 2003-05-05 |

|          2 | Pedro  | Paramo    | 2005-09-12 |

|          3 | Daniel | Dominguez | 1999-03-01 |

+------------+--------+-----------+------------+

3 rows in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente ( nombre, apellidos, fecha\_nac) values ("Luis", "Tapia", "2004-05-06"),  ("Jesus", "Rascon", "2009-02-17");

Query OK, 2 rows affected (0.0005 sec)



Records: 2  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          1 | Juan   | Perez     | 2003-05-05 |

|          2 | Pedro  | Paramo    | 2005-09-12 |

|          3 | Daniel | Dominguez | 1999-03-01 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|          5 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

5 rows in set (0.0009 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table venta(

&#x20;                                    -> id\_venta in not null key auto\_increment,

&#x20;                                    -> id\_cliente int not null,

&#x20;                                    -> fecha\_venta date);

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'in not null key auto\_increment,

id\_cliente int not null,

fecha\_venta date)' at line 2

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table venta( id\_venta int not null key auto\_increment, id\_cliente int not null, fecha\_venta date);

Query OK, 0 rows affected (0.0075 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(

&#x20;                                    -> id\_cliente, fecha\_vent)

&#x20;                                    -> values(1, "2026-10-16"),(1, "2026-12-06"),

&#x20;                                    -> (2, "2026-06-04"), (4, "2026-12-05"),

&#x20;                                    -> (7, "2026-01-02");

ERROR: 1054 (42S22): Unknown column 'fecha\_vent' in 'field list'

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta( id\_cliente, fecha\_venta) values(1, "2026-10-16"),(1, "2026-12-06"), (2, "2026-06-04"), (4, "2026-12-05"), (7, "2026-01-02");

Query OK, 5 rows affected (0.0011 sec)



Records: 5  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-10-16  |

|        2 |          1 | 2026-12-06  |

|        3 |          2 | 2026-06-04  |

|        4 |          4 | 2026-12-05  |

|        5 |          7 | 2026-01-02  |

+----------+------------+-------------+

5 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente

&#x20;                                    -> where id\_cliente IN (select distinct (id\_cliente)

&#x20;                                    -> from venta);

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          1 | Juan   | Perez     | 2003-05-05 |

|          2 | Pedro  | Paramo    | 2005-09-12 |

|          4 | Luis   | Tapia     | 2004-05-06 |

+------------+--------+-----------+------------+

3 rows in set (0.0104 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente where id\_cliente NOT IN (select distinct (id\_cliente) from venta);

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          3 | Daniel | Dominguez | 1999-03-01 |

|          5 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

2 rows in set (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc cliente;

+------------+-------------+------+-----+---------+----------------+

| Field      | Type        | Null | Key | Default | Extra          |

+------------+-------------+------+-----+---------+----------------+

| id\_cliente | int         | NO   | PRI | NULL    | auto\_increment |

| nombre     | varchar(50) | NO   |     | NULL    |                |

| apellidos  | varchar(50) | NO   |     | NULL    |                |

| fecha\_nac  | date        | YES  |     | NULL    |                |

+------------+-------------+------+-----+---------+----------------+

4 rows in set (0.0028 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc venta;

+-------------+------+------+-----+---------+----------------+

| Field       | Type | Null | Key | Default | Extra          |

+-------------+------+------+-----+---------+----------------+

| id\_venta    | int  | NO   | PRI | NULL    | auto\_increment |

| id\_cliente  | int  | NO   |     | NULL    |                |

| fecha\_venta | date | YES  |     | NULL    |                |

+-------------+------+------+-----+---------+----------------+

3 rows in set (0.0019 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta

&#x20;                                    -> where id\_cliente = 1;1

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-10-16  |

|        2 |          1 | 2026-12-06  |

+----------+------------+-------------+

2 rows in set (0.0006 sec)

&#x20;                                    -> ^C

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > delete from cliente

&#x20;                                    -> where id\_cliente =1;

Query OK, 1 row affected (0.0099 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

+----------+------------+-------------+

| id\_venta | id\_cliente | fecha\_venta |

+----------+------------+-------------+

|        1 |          1 | 2026-10-16  |

|        2 |          1 | 2026-12-06  |

|        3 |          2 | 2026-06-04  |

|        4 |          4 | 2026-12-05  |

|        5 |          7 | 2026-01-02  |

+----------+------------+-------------+

5 rows in set (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente(

&#x20;                                    -> nombre, apellidos, fecha\_nac)

&#x20;                                    -> ^C

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente( nombre, apellidos, fecha\_nac)

&#x20;                                    -> value("Juan", "Perez", "1979-05-05");

Query OK, 1 row affected (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          2 | Pedro  | Paramo    | 2005-09-12 |

|          3 | Daniel | Dominguez | 1999-03-01 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|          5 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

5 rows in set (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > drop table venta;

Query OK, 0 rows affected (0.0162 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table venta( id\_venta int not null key auto\_increment, id\_cliente int not null references cliente(id\_cliente), fecha\_venta date);

Query OK, 0 rows affected (0.0068 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from venta;

Empty set (0.0023 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta)

&#x20;                                    -> value(1, "2026-05-05");

Query OK, 1 row affected (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta) value(5, "2025-06-04");

Query OK, 1 row affected (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > drop table venta;

Query OK, 0 rows affected (0.0146 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table venta( id\_venta int not null key auto\_increment, id\_cliente int not null, fecha\_venta date, foreing key (id\_cliente) references clientes(id\_cliente));

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key (id\_cliente) references clientes(id\_cliente))' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table venta( id\_venta int not null key auto\_increment, id\_cliente int not null, fecha\_venta date, foreing key(id\_cliente) references cliente(id\_cliente));

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key(id\_cliente) references cliente(id\_cliente))' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table venta( id\_venta int not null key auto\_increment, id\_cliente int not null, fecha\_venta date, foreign key(id\_cliente) references cliente(id\_cliente));

Query OK, 0 rows affected (0.0182 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show create table venta;

+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Table | Create Table                                                                                                                                                                                                                                                      |

+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| venta | CREATE TABLE `venta` (

&#x20; `id\_venta` int NOT NULL AUTO\_INCREMENT,

&#x20; `id\_cliente` int NOT NULL,

&#x20; `fecha\_venta` date DEFAULT NULL,

&#x20; PRIMARY KEY (`id\_venta`),

&#x20; KEY `id\_cliente` (`id\_cliente`)

) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci |

+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

1 row in set (0.0020 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta) value(1, "2026-05-05");

Query OK, 1 row affected (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta) value(5, "2025-06-04");

Query OK, 1 row affected (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta) value(8, "2025-06-04");

Query OK, 1 row affected (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into venta(id\_cliente, fecha\_venta) value(10, "2025-06-04");

Query OK, 1 row affected (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from cliente;

+------------+--------+-----------+------------+

| id\_cliente | nombre | apellidos | fecha\_nac  |

+------------+--------+-----------+------------+

|          6 | Juan   | Perez     | 1979-05-05 |

|          2 | Pedro  | Paramo    | 2005-09-12 |

|          3 | Daniel | Dominguez | 1999-03-01 |

|          4 | Luis   | Tapia     | 2004-05-06 |

|          5 | Jesus  | Rascon    | 2009-02-17 |

+------------+--------+-----------+------------+

5 rows in set (0.0007 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente(id\_cliente, fecha\_venta) value(10, "2025-06-04");

ERROR: 1054 (42S22): Unknown column 'fecha\_venta' in 'field list'

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into cliente(id\_cliente, fecha\_venta) value(2, "2025-06-04");

ERROR: 1054 (42S22): Unknown column 'fecha\_venta' in 'field list'

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > delete from cliente

&#x20;                                    -> where id\_cliente = 2;

Query OK, 1 row affected (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > update cliente

&#x20;                                    -> set

&#x20;                                    -> id\_cliente = 5

&#x20;                                    -> where id\_cliente = 1;

Query OK, 0 rows affected (0.0101 sec)



Rows matched: 0  Changed: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL >

