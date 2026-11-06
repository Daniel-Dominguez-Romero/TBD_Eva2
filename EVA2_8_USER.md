**EVA2\_8\_USER**





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

Your MySQL connection id is 9

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS >

&#x20;MySQL  localhost:3306 ssl  JS > \\sql

Switching to SQL mode... Commands end with ;

Fetching global names for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  SQL > SET SESSION default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0004 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > set global default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0004 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > SHOW VARIABLES LIKE 'default\_storage\_engine';

+------------------------+--------+

| Variable\_name          | Value  |

+------------------------+--------+

| default\_storage\_engine | InnoDB |

+------------------------+--------+

1 row in set (0.0023 sec)

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

14 rows in set (0.0013 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > use mysql;

Default schema set to `mysql`.

Fetching global names, object names from `mysql` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > show tables;

+------------------------------------------------------+

| Tables\_in\_mysql                                      |

+------------------------------------------------------+

| columns\_priv                                         |

| component                                            |

| db                                                   |

| default\_roles                                        |

| engine\_cost                                          |

| func                                                 |

| general\_log                                          |

| global\_grants                                        |

| gtid\_executed                                        |

| help\_category                                        |

| help\_keyword                                         |

| help\_relation                                        |

| help\_topic                                           |

| innodb\_index\_stats                                   |

| innodb\_table\_stats                                   |

| ndb\_binlog\_index                                     |

| password\_history                                     |

| plugin                                               |

| procs\_priv                                           |

| proxies\_priv                                         |

| replication\_asynchronous\_connection\_failover         |

| replication\_asynchronous\_connection\_failover\_managed |

| replication\_group\_configuration\_version              |

| replication\_group\_member\_actions                     |

| role\_edges                                           |

| server\_cost                                          |

| servers                                              |

| slave\_master\_info                                    |

| slave\_relay\_log\_info                                 |

| slave\_worker\_info                                    |

| slow\_log                                             |

| tables\_priv                                          |

| time\_zone                                            |

| time\_zone\_leap\_second                                |

| time\_zone\_name                                       |

| time\_zone\_transition                                 |

| time\_zone\_transition\_type                            |

| user                                                 |

+------------------------------------------------------+

38 rows in set (0.0015 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > desc user;

+--------------------------+-----------------------------------+------+-----+-----------------------+-------+

| Field                    | Type                              | Null | Key | Default               | Extra |

+--------------------------+-----------------------------------+------+-----+-----------------------+-------+

| Host                     | char(255)                         | NO   | PRI |                       |       |

| User                     | char(32)                          | NO   | PRI |                       |       |

| Select\_priv              | enum('N','Y')                     | NO   |     | N                     |       |

| Insert\_priv              | enum('N','Y')                     | NO   |     | N                     |       |

| Update\_priv              | enum('N','Y')                     | NO   |     | N                     |       |

| Delete\_priv              | enum('N','Y')                     | NO   |     | N                     |       |

| Create\_priv              | enum('N','Y')                     | NO   |     | N                     |       |

| Drop\_priv                | enum('N','Y')                     | NO   |     | N                     |       |

| Reload\_priv              | enum('N','Y')                     | NO   |     | N                     |       |

| Shutdown\_priv            | enum('N','Y')                     | NO   |     | N                     |       |

| Process\_priv             | enum('N','Y')                     | NO   |     | N                     |       |

| File\_priv                | enum('N','Y')                     | NO   |     | N                     |       |

| Grant\_priv               | enum('N','Y')                     | NO   |     | N                     |       |

| References\_priv          | enum('N','Y')                     | NO   |     | N                     |       |

| Index\_priv               | enum('N','Y')                     | NO   |     | N                     |       |

| Alter\_priv               | enum('N','Y')                     | NO   |     | N                     |       |

| Show\_db\_priv             | enum('N','Y')                     | NO   |     | N                     |       |

| Super\_priv               | enum('N','Y')                     | NO   |     | N                     |       |

| Create\_tmp\_table\_priv    | enum('N','Y')                     | NO   |     | N                     |       |

| Lock\_tables\_priv         | enum('N','Y')                     | NO   |     | N                     |       |

| Execute\_priv             | enum('N','Y')                     | NO   |     | N                     |       |

| Repl\_slave\_priv          | enum('N','Y')                     | NO   |     | N                     |       |

| Repl\_client\_priv         | enum('N','Y')                     | NO   |     | N                     |       |

| Create\_view\_priv         | enum('N','Y')                     | NO   |     | N                     |       |

| Show\_view\_priv           | enum('N','Y')                     | NO   |     | N                     |       |

| Create\_routine\_priv      | enum('N','Y')                     | NO   |     | N                     |       |

| Alter\_routine\_priv       | enum('N','Y')                     | NO   |     | N                     |       |

| Create\_user\_priv         | enum('N','Y')                     | NO   |     | N                     |       |

| Event\_priv               | enum('N','Y')                     | NO   |     | N                     |       |

| Trigger\_priv             | enum('N','Y')                     | NO   |     | N                     |       |

| Create\_tablespace\_priv   | enum('N','Y')                     | NO   |     | N                     |       |

| ssl\_type                 | enum('','ANY','X509','SPECIFIED') | NO   |     |                       |       |

| ssl\_cipher               | blob                              | NO   |     | NULL                  |       |

| x509\_issuer              | blob                              | NO   |     | NULL                  |       |

| x509\_subject             | blob                              | NO   |     | NULL                  |       |

| max\_questions            | int unsigned                      | NO   |     | 0                     |       |

| max\_updates              | int unsigned                      | NO   |     | 0                     |       |

| max\_connections          | int unsigned                      | NO   |     | 0                     |       |

| max\_user\_connections     | int unsigned                      | NO   |     | 0                     |       |

| plugin                   | char(64)                          | NO   |     | caching\_sha2\_password |       |

| authentication\_string    | text                              | YES  |     | NULL                  |       |

| password\_expired         | enum('N','Y')                     | NO   |     | N                     |       |

| password\_last\_changed    | timestamp                         | YES  |     | NULL                  |       |

| password\_lifetime        | smallint unsigned                 | YES  |     | NULL                  |       |

| account\_locked           | enum('N','Y')                     | NO   |     | N                     |       |

| Create\_role\_priv         | enum('N','Y')                     | NO   |     | N                     |       |

| Drop\_role\_priv           | enum('N','Y')                     | NO   |     | N                     |       |

| Password\_reuse\_history   | smallint unsigned                 | YES  |     | NULL                  |       |

| Password\_reuse\_time      | smallint unsigned                 | YES  |     | NULL                  |       |

| Password\_require\_current | enum('N','Y')                     | YES  |     | NULL                  |       |

| User\_attributes          | json                              | YES  |     | NULL                  |       |

+--------------------------+-----------------------------------+------+-----+-----------------------+-------+

51 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > select \* from user;

+-----------+------------------+-------------+-------------+-------------+-------------+-------------+-----------+-------------+---------------+--------------+-----------+------------+-----------------+------------+------------+--------------+------------+-----------------------+------------------+--------------+-----------------+------------------+------------------+----------------+---------------------+--------------------+------------------+------------+--------------+------------------------+----------+------------+-------------+--------------+---------------+-------------+-----------------+----------------------+-----------------------+------------------------------------------------------------------------+------------------+-----------------------+-------------------+----------------+------------------+----------------+------------------------+---------------------+--------------------------+-----------------+

| Host      | User             | Select\_priv | Insert\_priv | Update\_priv | Delete\_priv | Create\_priv | Drop\_priv | Reload\_priv | Shutdown\_priv | Process\_priv | File\_priv | Grant\_priv | References\_priv | Index\_priv | Alter\_priv | Show\_db\_priv | Super\_priv | Create\_tmp\_table\_priv | Lock\_tables\_priv | Execute\_priv | Repl\_slave\_priv | Repl\_client\_priv | Create\_view\_priv | Show\_view\_priv | Create\_routine\_priv | Alter\_routine\_priv | Create\_user\_priv | Event\_priv | Trigger\_priv | Create\_tablespace\_priv | ssl\_type | ssl\_cipher | x509\_issuer | x509\_subject | max\_questions | max\_updates | max\_connections | max\_user\_connections | plugin                | authentication\_string                                                  | password\_expired | password\_last\_changed | password\_lifetime | account\_locked | Create\_role\_priv | Drop\_role\_priv | Password\_reuse\_history | Password\_reuse\_time | Password\_require\_current | User\_attributes |

+-----------+------------------+-------------+-------------+-------------+-------------+-------------+-----------+-------------+---------------+--------------+-----------+------------+-----------------+------------+------------+--------------+------------+-----------------------+------------------+--------------+-----------------+------------------+------------------+----------------+---------------------+--------------------+------------------+------------+--------------+------------------------+----------+------------+-------------+--------------+---------------+-------------+-----------------+----------------------+-----------------------+------------------------------------------------------------------------+------------------+-----------------------+-------------------+----------------+------------------+----------------+------------------------+---------------------+--------------------------+-----------------+

| %         | db\_admin         | Y           | Y           | Y           | Y           | Y           | Y         | Y           | Y             | Y            | Y         | Y          | Y               | Y          | Y          | Y            | Y          | Y                     | Y                | Y            | Y               | Y                | Y                | Y              | Y                   | Y                  | Y                | Y          | Y            | Y                      |          | 0x         | 0x          | 0x           |             0 |           0 |               0 |                    0 | caching\_sha2\_password |                                                                        | Y                | 2026-09-01 16:07:35   |              NULL | Y              | Y                | Y              |                   NULL |                NULL | NULL                     | NULL            |

| localhost | dba              | N           | N           | N           | N           | N           | N         | N           | N             | N            | N         | N          | N               | N          | N          | N            | N          | N                     | N                | N            | N               | N                | N                | N              | N                   | N                  | N                | N          | N            | N                      |          | 0x         | 0x          | 0x           |             0 |           0 |               0 |                    0 | caching\_sha2\_password | $A$005$N\\\~K9 6%7YVc`/NI3Y0.PsetLYJKIu7VBvPIpgbPtPcGq6ID0MKmaB/v3 | N                | 2026-09-01 16:43:43   |              NULL | N              | N                | N              |                   NULL |                NULL | NULL                     | NULL            |

| localhost | mysql.infoschema | Y           | N           | N           | N           | N           | N         | N           | N             | N            | N         | N          | N               | N          | N          | N            | N          | N                     | N                | N            | N               | N                | N                | N              | N                   | N                  | N                | N          | N            | N                      |          | 0x         | 0x          | 0x           |             0 |           0 |               0 |                    0 | caching\_sha2\_password | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | N                | 2026-02-25 11:22:19   |              NULL | Y              | N                | N              |                   NULL |                NULL | NULL                     | NULL            |

| localhost | mysql.session    | N           | N           | N           | N           | N           | N         | N           | Y             | N            | N         | N          | N               | N          | N          | N            | Y          | N                     | N                | N            | N               | N                | N                | N              | N                   | N                  | N                | N          | N            | N                      |          | 0x         | 0x          | 0x           |             0 |           0 |               0 |                    0 | caching\_sha2\_password | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | N                | 2026-02-25 11:22:18   |              NULL | Y              | N                | N              |                   NULL |                NULL | NULL                     | NULL            |

| localhost | mysql.sys        | N           | N           | N           | N           | N           | N         | N           | N             | N            | N         | N          | N               | N          | N          | N            | N          | N                     | N                | N            | N               | N                | N                | N              | N                   | N                  | N                | N          | N            | N                      |          | 0x         | 0x          | 0x           |             0 |           0 |               0 |                    0 | caching\_sha2\_password | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | N                | 2026-02-25 11:22:19   |              NULL | Y              | N                | N              |                   NULL |                NULL | NULL                     | NULL            |

| localhost | root             | Y           | Y           | Y           | Y           | Y           | Y         | Y           | Y             | Y            | Y         | Y          | Y               | Y          | Y          | Y            | Y          | Y                     | Y                | Y            | Y               | Y                | Y                | Y              | Y                   | Y                  | Y                | Y          | Y            | Y                      |          | 0x         | 0x          | 0x           |             0 |           0 |               0 |                    0 | caching\_sha2\_password |                                                                        | N                | 2026-02-25 11:22:18   |              NULL | N              | Y                | Y              |                   NULL |                NULL | NULL                     | NULL            |

+-----------+------------------+-------------+-------------+-------------+-------------+-------------+-----------+-------------+---------------+--------------+-----------+------------+-----------------+------------+------------+--------------+------------+-----------------------+------------------+--------------+-----------------+------------------+------------------+----------------+---------------------+--------------------+------------------+------------+--------------+------------------------+----------+------------+-------------+--------------+---------------+-------------+-----------------+----------------------+-----------------------+------------------------------------------------------------------------+------------------+-----------------------+-------------------+----------------+------------------+----------------+------------------------+---------------------+--------------------------+-----------------+

6 rows in set (0.0008 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > select host, user from user;

+-----------+------------------+

| host      | user             |

+-----------+------------------+

| %         | db\_admin         |

| localhost | dba              |

| localhost | mysql.infoschema |

| localhost | mysql.session    |

| localhost | mysql.sys        |

| localhost | root             |

+-----------+------------------+

6 rows in set (0.0006 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > create user 'prueba1'@'localhost' identified by "1234";

Query OK, 0 rows affected (0.0236 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > select host, user from user;

+-----------+------------------+

| host      | user             |

+-----------+------------------+

| %         | db\_admin         |

| localhost | dba              |

| localhost | mysql.infoschema |

| localhost | mysql.session    |

| localhost | mysql.sys        |

| localhost | prueba1          |

| localhost | root             |

+-----------+------------------+

7 rows in set (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > show databases;

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

14 rows in set (0.0012 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect prueba1@localhost

Creating a session to 'prueba1@localhost'

Please provide the password for 'prueba1@localhost': \*\*\*\*

Save password for 'prueba1@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No): n

Fetching global names for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

Your MySQL connection id is 12

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > show databases;

+--------------------+

| Database           |

+--------------------+

| information\_schema |

| performance\_schema |

+--------------------+

2 rows in set (0.0011 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > create databases mibasededatos;

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databases mibasededatos' at line 1

&#x20;MySQL  localhost:3306 ssl  SQL > create database mibasededatos;

ERROR: 1044 (42000): Access denied for user 'prueba1'@'localhost' to database 'mibasededatos'

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect root@localhost;

Creating a session to 'root@localhost;'

Please provide the password for 'root@localhost;':

MySQL Error 2005: No such host is known 'localhost;'

&#x20;MySQL  SQL >

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 13

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

14 rows in set (0.0009 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > grant all on eva1.\* to 'prueba'@'localhost';

ERROR: 1410 (42000): You are not allowed to create a user with GRANT

&#x20;MySQL  localhost:3306 ssl  SQL > grant all on eva1.\* to 'prueba1'@'localhost';

Query OK, 0 rows affected (0.0049 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > \\connect prueba1@localhost;

Creating a session to 'prueba1@localhost;'

Please provide the password for 'prueba1@localhost;':

MySQL Error 2005: No such host is known 'localhost;'

&#x20;MySQL  localhost:3306 ssl  SQL > \\connect prueba1@localhost;

Creating a session to 'prueba1@localhost;'

Please provide the password for 'prueba1@localhost;': \*\*\*\*

MySQL Error 2005: No such host is known 'localhost;'

&#x20;MySQL  localhost:3306 ssl  SQL > create user 'prueba2'@'localhost' identified by "1234";

Query OK, 0 rows affected (0.0065 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > grant all on eva1.actor to 'prueba2'@'localhost';

Query OK, 0 rows affected (0.0045 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect;

Unknown command: '\\disconnect;'

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL >

&#x20;MySQL  SQL > \\connect prueba2@localhost

Creating a session to 'prueba2@localhost'

Please provide the password for 'prueba2@localhost': \*\*\*\*

Save password for 'prueba2@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No): n

Fetching global names for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

Your MySQL connection id is 14

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > use eva1;

Default schema set to `eva1`.

Fetching global names, object names from `eva1` for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > show tables;

Empty set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > desc actor;

ERROR: 1146 (42S02): Table 'eva1.actor' doesn't exist

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 15

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > create user 'prueba3'@'localhost';

Query OK, 0 rows affected (0.0062 sec)

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

14 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > grant select(first\_name) on t1.actor to 'prueba3'@'localhost';

ERROR: 1049 (42000): Unknown database 't1'

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > grant select(first\_name) on eva1.actor to 'prueba3'@'localhost';

ERROR: 1146 (42S02): Table 'eva1.actor' doesn't exist

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > grant select(first\_name) on eva1.actor2 to 'prueba3'@'localhost';

Query OK, 0 rows affected (0.0055 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect prueba3@localhost

Creating a session to 'prueba3@localhost'

Please provide the password for 'prueba3@localhost':

Save password for 'prueba3@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

Your MySQL connection id is 16

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > show databases;

+--------------------+

| Database           |

+--------------------+

| eva1               |

| information\_schema |

| performance\_schema |

+--------------------+

3 rows in set (0.0011 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > use eva1;

Default schema set to `eva1`.

Fetching global names, object names from `eva1` for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > show tables;

+----------------+

| Tables\_in\_eva1 |

+----------------+

| actor2         |

+----------------+

1 row in set (0.0017 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > desc actor2;

+------------+-------------+------+-----+---------+-------+

| Field      | Type        | Null | Key | Default | Extra |

+------------+-------------+------+-----+---------+-------+

| first\_name | varchar(45) | NO   |     | NULL    |       |

+------------+-------------+------+-----+---------+-------+

1 row in set (0.0012 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > select \* from actor2;

ERROR: 1143 (42000): SELECT command denied to user 'prueba3'@'localhost' for column 'actor\_id' in table 'actor2'

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > select first\_name from actor2;

Empty set (0.0077 sec)

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > insert into actor(first\_name)

&#x20;                                    -> value("Juan");

ERROR: 1142 (42000): INSERT command denied to user 'prueba3'@'localhost' for table 'actor'

&#x20;MySQL  localhost:3306 ssl  eva1  SQL > \\disconnect

&#x20;MySQL  SQL > \\ connect root@localhost

Unknown command: '\\ connect root@localhost'

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 17

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > \\use mysql;

Default schema set to `mysql`.

Fetching global names, object names from `mysql` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > show databases;

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

14 rows in set (0.0016 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > show tables;

+------------------------------------------------------+

| Tables\_in\_mysql                                      |

+------------------------------------------------------+

| columns\_priv                                         |

| component                                            |

| db                                                   |

| default\_roles                                        |

| engine\_cost                                          |

| func                                                 |

| general\_log                                          |

| global\_grants                                        |

| gtid\_executed                                        |

| help\_category                                        |

| help\_keyword                                         |

| help\_relation                                        |

| help\_topic                                           |

| innodb\_index\_stats                                   |

| innodb\_table\_stats                                   |

| ndb\_binlog\_index                                     |

| password\_history                                     |

| plugin                                               |

| procs\_priv                                           |

| proxies\_priv                                         |

| replication\_asynchronous\_connection\_failover         |

| replication\_asynchronous\_connection\_failover\_managed |

| replication\_group\_configuration\_version              |

| replication\_group\_member\_actions                     |

| role\_edges                                           |

| server\_cost                                          |

| servers                                              |

| slave\_master\_info                                    |

| slave\_relay\_log\_info                                 |

| slave\_worker\_info                                    |

| slow\_log                                             |

| tables\_priv                                          |

| time\_zone                                            |

| time\_zone\_leap\_second                                |

| time\_zone\_name                                       |

| time\_zone\_transition                                 |

| time\_zone\_transition\_type                            |

| user                                                 |

+------------------------------------------------------+

38 rows in set (0.0020 sec)

&#x20;MySQL  localhost:3306 ssl  mysql  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect prueba3@localhost

Creating a session to 'prueba3@localhost'

Please provide the password for 'prueba3@localhost':

Save password for 'prueba3@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Error during auto-completion cache update: Access denied; you need (at least one of) the PROCESS privilege(s) for this operation

Your MySQL connection id is 22

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > \\disconnect

&#x20;MySQL  SQL > \\connect root@local

Creating a session to 'root@local'

Please provide the password for 'root@local':

MySQL Error 2005: No such host is known 'local'

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 23

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > ^C

&#x20;MySQL  localhost:3306 ssl  SQL >

