**EVA2\_4\_SET\_NULL**





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

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS > \\sql

Switching to SQL mode... Commands end with ;

Fetching global names for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  SQL > set global default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0011 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > SET SESSION default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > SHOW VARIABLES LIKE 'default\_storage\_engine';

+------------------------+--------+

| Variable\_name          | Value  |

+------------------------+--------+

| default\_storage\_engine | InnoDB |

+------------------------+--------+

1 row in set (0.0140 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > use eva2;

Default schema set to `eva2`.

Fetching global names, object names from `eva2` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table carrera(

&#x20;                                    -> id\_carrera int not null key auto\_increment,

&#x20;                                    -> nombre\_carrera varchar(50) not null,                              nombre\_carrera varchar(50) not null,                              nombre\_carrera varchar(50) not null                               nombre\_carrera varchar(50) not nul              nombre\_carrera varchar(50) not nul^C

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create tabla carrera(

&#x20;                                    -> id\_carrera in not null key auto\_increment,

&#x20;                                    -> nombre\_carrera vrachar (50) not null);

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tabla carrera(

id\_carrera in not null key auto\_increment,

nombre\_carrera vracha' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create tabla carrera( id\_carrera in not null key auto\_increment,  nombre\_carrera varchar (50) not null);

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tabla carrera( id\_carrera in not null key auto\_increment,  nombre\_carrera varcha' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table carrera(

&#x20;                                    ->     id\_carrera int not null key auto\_increment,

&#x20;                                    ->     nombre\_carrera varchar(50) not null

&#x20;                                    -> );

Query OK, 0 rows affected (0.0483 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table estudiante(

&#x20;                                    -> id\_estudiante int not null key auto\_increm                                      id\_estudiante int not null key auto\_incre                                       id\_estudiante int not null key auto\_i^C

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table estudiante(

&#x20;                                    -> id\_estudiante int not null key auto\_increment,

&#x20;                                    -> nombre varchar(50) not null,

&#x20;                                    -> id\_carrera int not null,

&#x20;                                    -> foreign key (id\_carrera) references

&#x20;                                    -> carrera(id\_carrera)

&#x20;                                    -> on update cascade

&#x20;                                    -> on delete restrict);

Query OK, 0 rows affected (0.0697 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into carrera(nombre\_carrera)

&#x20;                                    -> values("Sistemas"),("Industrial"),

&#x20;                                    -> ("Software");

Query OK, 3 rows affected (0.0126 sec)



Records: 3  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into estudiante (nombre,

&#x20;                                    -> id\_carrera)

&#x20;                                    -> values("Luis",1),

&#x20;                                    -> ("Daniel",1),

&#x20;                                    -> ("Jesus",2),

&#x20;                                    -> ("Mario",3);

Query OK, 4 rows affected (0.0160 sec)



Records: 4  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc \* from estudiante;

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '\* from estudiante' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc estudiante;

+---------------+-------------+------+-----+---------+----------------+

| Field         | Type        | Null | Key | Default | Extra          |

+---------------+-------------+------+-----+---------+----------------+

| id\_estudiante | int         | NO   | PRI | NULL    | auto\_increment |

| nombre        | varchar(50) | NO   |     | NULL    |                |

| id\_carrera    | int         | NO   | MUL | NULL    |                |

+---------------+-------------+------+-----+---------+----------------+

3 rows in set (0.0031 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc carrera;

+----------------+-------------+------+-----+---------+----------------+

| Field          | Type        | Null | Key | Default | Extra          |

+----------------+-------------+------+-----+---------+----------------+

| id\_carrera     | int         | NO   | PRI | NULL    | auto\_increment |

| nombre\_carrera | varchar(50) | NO   |     | NULL    |                |

+----------------+-------------+------+-----+---------+----------------+

2 rows in set (0.0024 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from estudiante;

+---------------+--------+------------+

| id\_estudiante | nombre | id\_carrera |

+---------------+--------+------------+

|             1 | Luis   |          1 |

|             2 | Daniel |          1 |

|             3 | Jesus  |          2 |

|             4 | Mario  |          3 |

+---------------+--------+------------+

4 rows in set (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from carrera;

+------------+----------------+

| id\_carrera | nombre\_carrera |

+------------+----------------+

|          1 | Sistemas       |

|          2 | Industrial     |

|          3 | Software       |

+------------+----------------+

3 rows in set (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show create table estudiante;

+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| Table      | Create Table                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

| estudiante | CREATE TABLE `estudiante` (

&#x20; `id\_estudiante` int NOT NULL AUTO\_INCREMENT,

&#x20; `nombre` varchar(50) COLLATE utf8mb4\_unicode\_ci NOT NULL,

&#x20; `id\_carrera` int NOT NULL,

&#x20; PRIMARY KEY (`id\_estudiante`),

&#x20; KEY `id\_carrera` (`id\_carrera`),

&#x20; CONSTRAINT `estudiante\_ibfk\_1` FOREIGN KEY (`id\_carrera`) REFERENCES `carrera` (`id\_carrera`) ON DELETE RESTRICT ON UPDATE CASCADE

) ENGINE=InnoDB AUTO\_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4\_unicode\_ci |

+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

1 row in set (0.0015 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table comida(

&#x20;                                    -> id\_comida int not null key

&#x20;                                    -> auto\_increment,

&#x20;                                    -> nombre\_comida varchar(50) not null);

Query OK, 0 rows affected (0.0497 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table cliente(

&#x20;                                    -> id\_cliente int not null key

&#x20;                                    -> auto\_increment,

&#x20;                                    -> nombre varchar(50) not null,

&#x20;                                    -> id\_comida int null,

&#x20;                                    -> foreign key (id\_comida)

&#x20;                                    -> references comida(id\_comida)

&#x20;                                    -> on update cascade

&#x20;                                    -> on delete set null);

ERROR: 1050 (42S01): Table 'cliente' already exists

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table clienteResta(  id\_cliente int not null key  auto\_increment, nombre varchar(50) not null, id\_comida int null,  foreign key (id\_comida) references comida(id\_comida) on update cascade on delete set null);

Query OK, 0 rows affected (0.0577 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into comida(nombre\_comida) values

&#x20;                                    -> ('Tacos'),

&#x20;                                    -> ('Pizza'),

&#x20;                                    -> ('Sushi');

Query OK, 3 rows affected (0.0042 sec)



Records: 3  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into clienteResta(nombre, id\_comida) values

&#x20;                                    -> ('Juan', 1),

&#x20;                                    -> ('Pedro', 2),

&#x20;                                    -> ('Ana', 3);

Query OK, 3 rows affected (0.0038 sec)



Records: 3  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from comidañ

&#x20;                                    -> ^C

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from comida;

+-----------+---------------+

| id\_comida | nombre\_comida |

+-----------+---------------+

|         1 | Tacos         |

|         2 | Pizza         |

|         3 | Sushi         |

+-----------+---------------+

3 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from clienteResta;

+------------+--------+-----------+

| id\_cliente | nombre | id\_comida |

+------------+--------+-----------+

|          1 | Juan   |         1 |

|          2 | Pedro  |         2 |

|          3 | Ana    |         3 |

+------------+--------+-----------+

3 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > delete from comida where id\_comida = 1;

Query OK, 1 row affected (0.0045 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from clienteResta;

+------------+--------+-----------+

| id\_cliente | nombre | id\_comida |

+------------+--------+-----------+

|          1 | Juan   |      NULL |

|          2 | Pedro  |         2 |

|          3 | Ana    |         3 |

+------------+--------+-----------+

3 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL >

