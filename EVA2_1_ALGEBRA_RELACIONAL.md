**EVA2\_1\_ALGEBRA\_RELACIONAL**



MySQL Shell 8.0.46



Copyright (c) 2016, 2026, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its affiliates.

Other names may be trademarks of their respective owners.



Type '\\help' or '\\?' for help; '\\quit' to exit.

&#x20;MySQL  JS >   \\sql

Switching to SQL mode... Commands end with ;

&#x20;MySQL  SQL > connect root@localhost

ERROR: Not connected.

&#x20;          -> \\connect root@localhost

&#x20;          -> ;

ERROR: Not connected.

ERROR: Unknown command '\\c'

&#x20;          -> \\connect roo^C

&#x20;MySQL  SQL > \\connect root@localhost;

Creating a session to 'root@localhost;'

Please provide the password for 'root@localhost;':

MySQL Error 2005: No such host is known 'localhost;'

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL >

&#x20;MySQL  SQL > ^C

&#x20;MySQL  SQL > ^C

&#x20;MySQL  SQL > ^C

&#x20;MySQL  SQL > ^C

&#x20;MySQL  SQL > ^C

&#x20;MySQL  SQL > \\connect root@localhost

Creating a session to 'root@localhost'

Please provide the password for 'root@localhost':

Save password for 'root@localhost'? \[Y]es/\[N]o/Ne\[v]er (default No):

Fetching global names for auto-completion... Press ^C to stop.

Your MySQL connection id is 8

Server version: 8.4.7 MySQL Community Server - GPL

No default schema selected; type \\use <schema> to set one.

&#x20;MySQL  localhost:3306 ssl  SQL > create data base t2;

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'data base t2' at line 1

&#x20;MySQL  localhost:3306 ssl  SQL > create database eva2;

Query OK, 1 row affected (0.0143 sec)

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

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table tablaA(

&#x20;                                    -> id int,

&#x20;                                    -> nombre varchar(1));

Query OK, 0 rows affected (0.0111 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > create table tablaB( id int,  nombre varchar(1));

Query OK, 0 rows affected (0.0212 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > show tables;

+----------------+

| Tables\_in\_eva2 |

+----------------+

| tablaa         |

| tablab         |

+----------------+

2 rows in set (0.0044 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc tablaa;

+--------+------------+------+-----+---------+-------+

| Field  | Type       | Null | Key | Default | Extra |

+--------+------------+------+-----+---------+-------+

| id     | int        | YES  |     | NULL    |       |

| nombre | varchar(1) | YES  |     | NULL    |       |

+--------+------------+------+-----+---------+-------+

2 rows in set (0.0035 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > desc tablab;

+--------+------------+------+-----+---------+-------+

| Field  | Type       | Null | Key | Default | Extra |

+--------+------------+------+-----+---------+-------+

| id     | int        | YES  |     | NULL    |       |

| nombre | varchar(1) | YES  |     | NULL    |       |

+--------+------------+------+-----+---------+-------+

2 rows in set (0.0023 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into tablaa

&#x20;                                    -> values(1,'A'), (2, 'B'), (3,'C'), (4,'D');

Query OK, 4 rows affected (0.0059 sec)



Records: 4  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa;

+----+--------+

| id | nombre |

+----+--------+

|  1 | A      |

|  2 | B      |

|  3 | C      |

|  4 | D      |

+----+--------+

4 rows in set (0.0012 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into tablab

&#x20;                                    -> values(1,'X'),(2,'Y'),(3,'Z'),(4,'A'),(5,'B');

Query OK, 5 rows affected (0.0034 sec)



Records: 5  Duplicates: 0  Warnings: 0

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablab;

+----+--------+

| id | nombre |

+----+--------+

|  1 | X      |

|  2 | Y      |

|  3 | Z      |

|  4 | A      |

|  5 | B      |

+----+--------+

5 rows in set (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa;

+----+--------+

| id | nombre |

+----+--------+

|  1 | A      |

|  2 | B      |

|  3 | C      |

|  4 | D      |

+----+--------+

4 rows in set (0.0018 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablab;

+----+--------+

| id | nombre |

+----+--------+

|  1 | X      |

|  2 | Y      |

|  3 | Z      |

|  4 | A      |

|  5 | B      |

+----+--------+

5 rows in set (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa

&#x20;                                    -> union

&#x20;                                    -> select \* from tablab;

+----+--------+

| id | nombre |

+----+--------+

|  1 | A      |

|  2 | B      |

|  3 | C      |

|  4 | D      |

|  1 | X      |

|  2 | Y      |

|  3 | Z      |

|  4 | A      |

|  5 | B      |

+----+--------+

9 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa

&#x20;                                    -> where nombre in (select \* from tablab);

ERROR: 1241 (21000): Operand should contain 1 column(s)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa where nombre in (select from tablab);

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from tablab)' at line 1

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa where nombre in (select nombre from tablab);

+----+--------+

| id | nombre |

+----+--------+

|  1 | A      |

|  2 | B      |

+----+--------+

2 rows in set (0.0015 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > insert into tablab

&#x20;                                    -> value(6,'A');

Query OK, 1 row affected (0.0012 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablab;

+----+--------+

| id | nombre |

+----+--------+

|  1 | X      |

|  2 | Y      |

|  3 | Z      |

|  4 | A      |

|  5 | B      |

|  6 | A      |

+----+--------+

6 rows in set (0.0011 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa where nombre in (select nombre from tablab);

+----+--------+

| id | nombre |

+----+--------+

|  1 | A      |

|  2 | B      |

+----+--------+

2 rows in set (0.0015 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select nombre from tablab;

+--------+

| nombre |

+--------+

| X      |

| Y      |

| Z      |

| A      |

| B      |

| A      |

+--------+

6 rows in set (0.0010 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select distinct nombre from tablab;

+--------+

| nombre |

+--------+

| X      |

| Y      |

| Z      |

| A      |

| B      |

+--------+

5 rows in set (0.0013 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa

&#x20;                                    -> where nombre in (select distinct nombre from tablab);

+----+--------+

| id | nombre |

+----+--------+

|  1 | A      |

|  2 | B      |

+----+--------+

2 rows in set (0.0015 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa

&#x20;                                    -> where nombre not in (

&#x20;                                    -> select distinct nombre from tablab);

+----+--------+

| id | nombre |

+----+--------+

|  3 | C      |

|  4 | D      |

+----+--------+

2 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select \* from tablaa, tablab;

+----+--------+----+--------+

| id | nombre | id | nombre |

+----+--------+----+--------+

|  4 | D      |  1 | X      |

|  3 | C      |  1 | X      |

|  2 | B      |  1 | X      |

|  1 | A      |  1 | X      |

|  4 | D      |  2 | Y      |

|  3 | C      |  2 | Y      |

|  2 | B      |  2 | Y      |

|  1 | A      |  2 | Y      |

|  4 | D      |  3 | Z      |

|  3 | C      |  3 | Z      |

|  2 | B      |  3 | Z      |

|  1 | A      |  3 | Z      |

|  4 | D      |  4 | A      |

|  3 | C      |  4 | A      |

|  2 | B      |  4 | A      |

|  1 | A      |  4 | A      |

|  4 | D      |  5 | B      |

|  3 | C      |  5 | B      |

|  2 | B      |  5 | B      |

|  1 | A      |  5 | B      |

|  4 | D      |  6 | A      |

|  3 | C      |  6 | A      |

|  2 | B      |  6 | A      |

|  1 | A      |  6 | A      |

+----+--------+----+--------+

24 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select count(\*) from tablab;

+----------+

| count(\*) |

+----------+

|        6 |

+----------+

1 row in set (0.0012 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select count(\*) from tablaa;

+----------+

| count(\*) |

+----------+

|        4 |

+----------+

1 row in set (0.0009 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select nombre, nombre from tablaa, tablab;

ERROR: 1052 (23000): Column 'nombre' in field list is ambiguous

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select tablaa.nombre, tablab.nombre from tablaa, tablab;

+--------+--------+

| nombre | nombre |

+--------+--------+

| D      | X      |

| C      | X      |

| B      | X      |

| A      | X      |

| D      | Y      |

| C      | Y      |

| B      | Y      |

| A      | Y      |

| D      | Z      |

| C      | Z      |

| B      | Z      |

| A      | Z      |

| D      | A      |

| C      | A      |

| B      | A      |

| A      | A      |

| D      | B      |

| C      | B      |

| B      | B      |

| A      | B      |

| D      | A      |

| C      | A      |

| B      | A      |

| A      | A      |

+--------+--------+

24 rows in set (0.0014 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select a.nombre, b.nombre

&#x20;                                    -> from tabla a, tabla b;

ERROR: 1146 (42S02): Table 'eva2.tabla' doesn't exist

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > select a.nombre, b.nombre from tablaa a, tablab b;

+--------+--------+

| nombre | nombre |

+--------+--------+

| D      | X      |

| C      | X      |

| B      | X      |

| A      | X      |

| D      | Y      |

| C      | Y      |

| B      | Y      |

| A      | Y      |

| D      | Z      |

| C      | Z      |

| B      | Z      |

| A      | Z      |

| D      | A      |

| C      | A      |

| B      | A      |

| A      | A      |

| D      | B      |

| C      | B      |

| B      | B      |

| A      | B      |

| D      | A      |

| C      | A      |

| B      | A      |

| A      | A      |

+--------+--------+

24 rows in set (0.0013 sec)

&#x20;MySQL  localhost:3306 ssl  eva2  SQL > use sakila;

Default schema set to `sakila`.

Fetching global names, object names from `sakila` for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > show tables;

+----------------------------+

| Tables\_in\_sakila           |

+----------------------------+

| actor                      |

| actor\_info                 |

| address                    |

| category                   |

| city                       |

| country                    |

| customer                   |

| customer\_list              |

| film                       |

| film\_actor                 |

| film\_category              |

| film\_list                  |

| film\_text                  |

| inventory                  |

| language                   |

| nicer\_but\_slower\_film\_list |

| payment                    |

| rental                     |

| sales\_by\_film\_category     |

| sales\_by\_store             |

| staff                      |

| staff\_list                 |

| store                      |

+----------------------------+

23 rows in set (0.0027 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > desc costumer;

ERROR: 1146 (42S02): Table 'sakila.costumer' doesn't exist

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > desc custumer;

ERROR: 1146 (42S02): Table 'sakila.custumer' doesn't exist

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > desc customer;

+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+

| Field       | Type              | Null | Key | Default           | Extra                                         |

+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+

| customer\_id | smallint unsigned | NO   | PRI | NULL              | auto\_increment                                |

| store\_id    | tinyint unsigned  | NO   | MUL | NULL              |                                               |

| first\_name  | varchar(45)       | NO   |     | NULL              |                                               |

| last\_name   | varchar(45)       | NO   | MUL | NULL              |                                               |

| email       | varchar(50)       | YES  |     | NULL              |                                               |

| address\_id  | smallint unsigned | NO   | MUL | NULL              |                                               |

| active      | tinyint(1)        | NO   |     | 1                 |                                               |

| create\_date | datetime          | NO   |     | NULL              |                                               |

| last\_update | timestamp         | YES  |     | CURRENT\_TIMESTAMP | DEFAULT\_GENERATED on update CURRENT\_TIMESTAMP |

+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+

9 rows in set (0.0038 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > desc payment;

+--------------+-------------------+------+-----+-------------------+-----------------------------------------------+

| Field        | Type              | Null | Key | Default           | Extra                                         |

+--------------+-------------------+------+-----+-------------------+-----------------------------------------------+

| payment\_id   | smallint unsigned | NO   | PRI | NULL              | auto\_increment                                |

| customer\_id  | smallint unsigned | NO   | MUL | NULL              |                                               |

| staff\_id     | tinyint unsigned  | NO   | MUL | NULL              |                                               |

| rental\_id    | int               | YES  | MUL | NULL              |                                               |

| amount       | decimal(5,2)      | NO   |     | NULL              |                                               |

| payment\_date | datetime          | NO   |     | NULL              |                                               |

| last\_update  | timestamp         | YES  |     | CURRENT\_TIMESTAMP | DEFAULT\_GENERATED on update CURRENT\_TIMESTAMP |

+--------------+-------------------+------+-----+-------------------+-----------------------------------------------+

7 rows in set (0.0032 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select customer\_id, first\_name, last\_name

&#x20;                                      -> from customer;

+-------------+-------------+--------------+

| customer\_id | first\_name  | last\_name    |

+-------------+-------------+--------------+

|           1 | MARY        | SMITH        |

|           2 | PATRICIA    | JOHNSON      |

|           3 | LINDA       | WILLIAMS     |

|           4 | BARBARA     | JONES        |

|           5 | ELIZABETH   | BROWN        |

|           6 | JENNIFER    | DAVIS        |

|           7 | MARIA       | MILLER       |

|           8 | SUSAN       | WILSON       |

|           9 | MARGARET    | MOORE        |

|          10 | DOROTHY     | TAYLOR       |

|          11 | LISA        | ANDERSON     |

|          12 | NANCY       | THOMAS       |

|          13 | KAREN       | JACKSON      |

|          14 | BETTY       | WHITE        |

|          15 | HELEN       | HARRIS       |

|          16 | SANDRA      | MARTIN       |

|          17 | DONNA       | THOMPSON     |

|          18 | CAROL       | GARCIA       |

|          19 | RUTH        | MARTINEZ     |

|          20 | SHARON      | ROBINSON     |

|          21 | MICHELLE    | CLARK        |

|          22 | LAURA       | RODRIGUEZ    |

|          23 | SARAH       | LEWIS        |

|          24 | KIMBERLY    | LEE          |

|          25 | DEBORAH     | WALKER       |

|          26 | JESSICA     | HALL         |

|          27 | SHIRLEY     | ALLEN        |

|          28 | CYNTHIA     | YOUNG        |

|          29 | ANGELA      | HERNANDEZ    |

|          30 | MELISSA     | KING         |

|          31 | BRENDA      | WRIGHT       |

|          32 | AMY         | LOPEZ        |

|          33 | ANNA        | HILL         |

|          34 | REBECCA     | SCOTT        |

|          35 | VIRGINIA    | GREEN        |

|          36 | KATHLEEN    | ADAMS        |

|          37 | PAMELA      | BAKER        |

|          38 | MARTHA      | GONZALEZ     |

|          39 | DEBRA       | NELSON       |

|          40 | AMANDA      | CARTER       |

|          41 | STEPHANIE   | MITCHELL     |

|          42 | CAROLYN     | PEREZ        |

|          43 | CHRISTINE   | ROBERTS      |

|          44 | MARIE       | TURNER       |

|          45 | JANET       | PHILLIPS     |

|          46 | CATHERINE   | CAMPBELL     |

|          47 | FRANCES     | PARKER       |

|          48 | ANN         | EVANS        |

|          49 | JOYCE       | EDWARDS      |

|          50 | DIANE       | COLLINS      |

|          51 | ALICE       | STEWART      |

|          52 | JULIE       | SANCHEZ      |

|          53 | HEATHER     | MORRIS       |

|          54 | TERESA      | ROGERS       |

|          55 | DORIS       | REED         |

|          56 | GLORIA      | COOK         |

|          57 | EVELYN      | MORGAN       |

|          58 | JEAN        | BELL         |

|          59 | CHERYL      | MURPHY       |

|          60 | MILDRED     | BAILEY       |

|          61 | KATHERINE   | RIVERA       |

|          62 | JOAN        | COOPER       |

|          63 | ASHLEY      | RICHARDSON   |

|          64 | JUDITH      | COX          |

|          65 | ROSE        | HOWARD       |

|          66 | JANICE      | WARD         |

|          67 | KELLY       | TORRES       |

|          68 | NICOLE      | PETERSON     |

|          69 | JUDY        | GRAY         |

|          70 | CHRISTINA   | RAMIREZ      |

|          71 | KATHY       | JAMES        |

|          72 | THERESA     | WATSON       |

|          73 | BEVERLY     | BROOKS       |

|          74 | DENISE      | KELLY        |

|          75 | TAMMY       | SANDERS      |

|          76 | IRENE       | PRICE        |

|          77 | JANE        | BENNETT      |

|          78 | LORI        | WOOD         |

|          79 | RACHEL      | BARNES       |

|          80 | MARILYN     | ROSS         |

|          81 | ANDREA      | HENDERSON    |

|          82 | KATHRYN     | COLEMAN      |

|          83 | LOUISE      | JENKINS      |

|          84 | SARA        | PERRY        |

|          85 | ANNE        | POWELL       |

|          86 | JACQUELINE  | LONG         |

|          87 | WANDA       | PATTERSON    |

|          88 | BONNIE      | HUGHES       |

|          89 | JULIA       | FLORES       |

|          90 | RUBY        | WASHINGTON   |

|          91 | LOIS        | BUTLER       |

|          92 | TINA        | SIMMONS      |

|          93 | PHYLLIS     | FOSTER       |

|          94 | NORMA       | GONZALES     |

|          95 | PAULA       | BRYANT       |

|          96 | DIANA       | ALEXANDER    |

|          97 | ANNIE       | RUSSELL      |

|          98 | LILLIAN     | GRIFFIN      |

|          99 | EMILY       | DIAZ         |

|         100 | ROBIN       | HAYES        |

|         101 | PEGGY       | MYERS        |

|         102 | CRYSTAL     | FORD         |

|         103 | GLADYS      | HAMILTON     |

|         104 | RITA        | GRAHAM       |

|         105 | DAWN        | SULLIVAN     |

|         106 | CONNIE      | WALLACE      |

|         107 | FLORENCE    | WOODS        |

|         108 | TRACY       | COLE         |

|         109 | EDNA        | WEST         |

|         110 | TIFFANY     | JORDAN       |

|         111 | CARMEN      | OWENS        |

|         112 | ROSA        | REYNOLDS     |

|         113 | CINDY       | FISHER       |

|         114 | GRACE       | ELLIS        |

|         115 | WENDY       | HARRISON     |

|         116 | VICTORIA    | GIBSON       |

|         117 | EDITH       | MCDONALD     |

|         118 | KIM         | CRUZ         |

|         119 | SHERRY      | MARSHALL     |

|         120 | SYLVIA      | ORTIZ        |

|         121 | JOSEPHINE   | GOMEZ        |

|         122 | THELMA      | MURRAY       |

|         123 | SHANNON     | FREEMAN      |

|         124 | SHEILA      | WELLS        |

|         125 | ETHEL       | WEBB         |

|         126 | ELLEN       | SIMPSON      |

|         127 | ELAINE      | STEVENS      |

|         128 | MARJORIE    | TUCKER       |

|         129 | CARRIE      | PORTER       |

|         130 | CHARLOTTE   | HUNTER       |

|         131 | MONICA      | HICKS        |

|         132 | ESTHER      | CRAWFORD     |

|         133 | PAULINE     | HENRY        |

|         134 | EMMA        | BOYD         |

|         135 | JUANITA     | MASON        |

|         136 | ANITA       | MORALES      |

|         137 | RHONDA      | KENNEDY      |

|         138 | HAZEL       | WARREN       |

|         139 | AMBER       | DIXON        |

|         140 | EVA         | RAMOS        |

|         141 | DEBBIE      | REYES        |

|         142 | APRIL       | BURNS        |

|         143 | LESLIE      | GORDON       |

|         144 | CLARA       | SHAW         |

|         145 | LUCILLE     | HOLMES       |

|         146 | JAMIE       | RICE         |

|         147 | JOANNE      | ROBERTSON    |

|         148 | ELEANOR     | HUNT         |

|         149 | VALERIE     | BLACK        |

|         150 | DANIELLE    | DANIELS      |

|         151 | MEGAN       | PALMER       |

|         152 | ALICIA      | MILLS        |

|         153 | SUZANNE     | NICHOLS      |

|         154 | MICHELE     | GRANT        |

|         155 | GAIL        | KNIGHT       |

|         156 | BERTHA      | FERGUSON     |

|         157 | DARLENE     | ROSE         |

|         158 | VERONICA    | STONE        |

|         159 | JILL        | HAWKINS      |

|         160 | ERIN        | DUNN         |

|         161 | GERALDINE   | PERKINS      |

|         162 | LAUREN      | HUDSON       |

|         163 | CATHY       | SPENCER      |

|         164 | JOANN       | GARDNER      |

|         165 | LORRAINE    | STEPHENS     |

|         166 | LYNN        | PAYNE        |

|         167 | SALLY       | PIERCE       |

|         168 | REGINA      | BERRY        |

|         169 | ERICA       | MATTHEWS     |

|         170 | BEATRICE    | ARNOLD       |

|         171 | DOLORES     | WAGNER       |

|         172 | BERNICE     | WILLIS       |

|         173 | AUDREY      | RAY          |

|         174 | YVONNE      | WATKINS      |

|         175 | ANNETTE     | OLSON        |

|         176 | JUNE        | CARROLL      |

|         177 | SAMANTHA    | DUNCAN       |

|         178 | MARION      | SNYDER       |

|         179 | DANA        | HART         |

|         180 | STACY       | CUNNINGHAM   |

|         181 | ANA         | BRADLEY      |

|         182 | RENEE       | LANE         |

|         183 | IDA         | ANDREWS      |

|         184 | VIVIAN      | RUIZ         |

|         185 | ROBERTA     | HARPER       |

|         186 | HOLLY       | FOX          |

|         187 | BRITTANY    | RILEY        |

|         188 | MELANIE     | ARMSTRONG    |

|         189 | LORETTA     | CARPENTER    |

|         190 | YOLANDA     | WEAVER       |

|         191 | JEANETTE    | GREENE       |

|         192 | LAURIE      | LAWRENCE     |

|         193 | KATIE       | ELLIOTT      |

|         194 | KRISTEN     | CHAVEZ       |

|         195 | VANESSA     | SIMS         |

|         196 | ALMA        | AUSTIN       |

|         197 | SUE         | PETERS       |

|         198 | ELSIE       | KELLEY       |

|         199 | BETH        | FRANKLIN     |

|         200 | JEANNE      | LAWSON       |

|         201 | VICKI       | FIELDS       |

|         202 | CARLA       | GUTIERREZ    |

|         203 | TARA        | RYAN         |

|         204 | ROSEMARY    | SCHMIDT      |

|         205 | EILEEN      | CARR         |

|         206 | TERRI       | VASQUEZ      |

|         207 | GERTRUDE    | CASTILLO     |

|         208 | LUCY        | WHEELER      |

|         209 | TONYA       | CHAPMAN      |

|         210 | ELLA        | OLIVER       |

|         211 | STACEY      | MONTGOMERY   |

|         212 | WILMA       | RICHARDS     |

|         213 | GINA        | WILLIAMSON   |

|         214 | KRISTIN     | JOHNSTON     |

|         215 | JESSIE      | BANKS        |

|         216 | NATALIE     | MEYER        |

|         217 | AGNES       | BISHOP       |

|         218 | VERA        | MCCOY        |

|         219 | WILLIE      | HOWELL       |

|         220 | CHARLENE    | ALVAREZ      |

|         221 | BESSIE      | MORRISON     |

|         222 | DELORES     | HANSEN       |

|         223 | MELINDA     | FERNANDEZ    |

|         224 | PEARL       | GARZA        |

|         225 | ARLENE      | HARVEY       |

|         226 | MAUREEN     | LITTLE       |

|         227 | COLLEEN     | BURTON       |

|         228 | ALLISON     | STANLEY      |

|         229 | TAMARA      | NGUYEN       |

|         230 | JOY         | GEORGE       |

|         231 | GEORGIA     | JACOBS       |

|         232 | CONSTANCE   | REID         |

|         233 | LILLIE      | KIM          |

|         234 | CLAUDIA     | FULLER       |

|         235 | JACKIE      | LYNCH        |

|         236 | MARCIA      | DEAN         |

|         237 | TANYA       | GILBERT      |

|         238 | NELLIE      | GARRETT      |

|         239 | MINNIE      | ROMERO       |

|         240 | MARLENE     | WELCH        |

|         241 | HEIDI       | LARSON       |

|         242 | GLENDA      | FRAZIER      |

|         243 | LYDIA       | BURKE        |

|         244 | VIOLA       | HANSON       |

|         245 | COURTNEY    | DAY          |

|         246 | MARIAN      | MENDOZA      |

|         247 | STELLA      | MORENO       |

|         248 | CAROLINE    | BOWMAN       |

|         249 | DORA        | MEDINA       |

|         250 | JO          | FOWLER       |

|         251 | VICKIE      | BREWER       |

|         252 | MATTIE      | HOFFMAN      |

|         253 | TERRY       | CARLSON      |

|         254 | MAXINE      | SILVA        |

|         255 | IRMA        | PEARSON      |

|         256 | MABEL       | HOLLAND      |

|         257 | MARSHA      | DOUGLAS      |

|         258 | MYRTLE      | FLEMING      |

|         259 | LENA        | JENSEN       |

|         260 | CHRISTY     | VARGAS       |

|         261 | DEANNA      | BYRD         |

|         262 | PATSY       | DAVIDSON     |

|         263 | HILDA       | HOPKINS      |

|         264 | GWENDOLYN   | MAY          |

|         265 | JENNIE      | TERRY        |

|         266 | NORA        | HERRERA      |

|         267 | MARGIE      | WADE         |

|         268 | NINA        | SOTO         |

|         269 | CASSANDRA   | WALTERS      |

|         270 | LEAH        | CURTIS       |

|         271 | PENNY       | NEAL         |

|         272 | KAY         | CALDWELL     |

|         273 | PRISCILLA   | LOWE         |

|         274 | NAOMI       | JENNINGS     |

|         275 | CAROLE      | BARNETT      |

|         276 | BRANDY      | GRAVES       |

|         277 | OLGA        | JIMENEZ      |

|         278 | BILLIE      | HORTON       |

|         279 | DIANNE      | SHELTON      |

|         280 | TRACEY      | BARRETT      |

|         281 | LEONA       | OBRIEN       |

|         282 | JENNY       | CASTRO       |

|         283 | FELICIA     | SUTTON       |

|         284 | SONIA       | GREGORY      |

|         285 | MIRIAM      | MCKINNEY     |

|         286 | VELMA       | LUCAS        |

|         287 | BECKY       | MILES        |

|         288 | BOBBIE      | CRAIG        |

|         289 | VIOLET      | RODRIQUEZ    |

|         290 | KRISTINA    | CHAMBERS     |

|         291 | TONI        | HOLT         |

|         292 | MISTY       | LAMBERT      |

|         293 | MAE         | FLETCHER     |

|         294 | SHELLY      | WATTS        |

|         295 | DAISY       | BATES        |

|         296 | RAMONA      | HALE         |

|         297 | SHERRI      | RHODES       |

|         298 | ERIKA       | PENA         |

|         299 | JAMES       | GANNON       |

|         300 | JOHN        | FARNSWORTH   |

|         301 | ROBERT      | BAUGHMAN     |

|         302 | MICHAEL     | SILVERMAN    |

|         303 | WILLIAM     | SATTERFIELD  |

|         304 | DAVID       | ROYAL        |

|         305 | RICHARD     | MCCRARY      |

|         306 | CHARLES     | KOWALSKI     |

|         307 | JOSEPH      | JOY          |

|         308 | THOMAS      | GRIGSBY      |

|         309 | CHRISTOPHER | GRECO        |

|         310 | DANIEL      | CABRAL       |

|         311 | PAUL        | TROUT        |

|         312 | MARK        | RINEHART     |

|         313 | DONALD      | MAHON        |

|         314 | GEORGE      | LINTON       |

|         315 | KENNETH     | GOODEN       |

|         316 | STEVEN      | CURLEY       |

|         317 | EDWARD      | BAUGH        |

|         318 | BRIAN       | WYMAN        |

|         319 | RONALD      | WEINER       |

|         320 | ANTHONY     | SCHWAB       |

|         321 | KEVIN       | SCHULER      |

|         322 | JASON       | MORRISSEY    |

|         323 | MATTHEW     | MAHAN        |

|         324 | GARY        | COY          |

|         325 | TIMOTHY     | BUNN         |

|         326 | JOSE        | ANDREW       |

|         327 | LARRY       | THRASHER     |

|         328 | JEFFREY     | SPEAR        |

|         329 | FRANK       | WAGGONER     |

|         330 | SCOTT       | SHELLEY      |

|         331 | ERIC        | ROBERT       |

|         332 | STEPHEN     | QUALLS       |

|         333 | ANDREW      | PURDY        |

|         334 | RAYMOND     | MCWHORTER    |

|         335 | GREGORY     | MAULDIN      |

|         336 | JOSHUA      | MARK         |

|         337 | JERRY       | JORDON       |

|         338 | DENNIS      | GILMAN       |

|         339 | WALTER      | PERRYMAN     |

|         340 | PATRICK     | NEWSOM       |

|         341 | PETER       | MENARD       |

|         342 | HAROLD      | MARTINO      |

|         343 | DOUGLAS     | GRAF         |

|         344 | HENRY       | BILLINGSLEY  |

|         345 | CARL        | ARTIS        |

|         346 | ARTHUR      | SIMPKINS     |

|         347 | RYAN        | SALISBURY    |

|         348 | ROGER       | QUINTANILLA  |

|         349 | JOE         | GILLILAND    |

|         350 | JUAN        | FRALEY       |

|         351 | JACK        | FOUST        |

|         352 | ALBERT      | CROUSE       |

|         353 | JONATHAN    | SCARBOROUGH  |

|         354 | JUSTIN      | NGO          |

|         355 | TERRY       | GRISSOM      |

|         356 | GERALD      | FULTZ        |

|         357 | KEITH       | RICO         |

|         358 | SAMUEL      | MARLOW       |

|         359 | WILLIE      | MARKHAM      |

|         360 | RALPH       | MADRIGAL     |

|         361 | LAWRENCE    | LAWTON       |

|         362 | NICHOLAS    | BARFIELD     |

|         363 | ROY         | WHITING      |

|         364 | BENJAMIN    | VARNEY       |

|         365 | BRUCE       | SCHWARZ      |

|         366 | BRANDON     | HUEY         |

|         367 | ADAM        | GOOCH        |

|         368 | HARRY       | ARCE         |

|         369 | FRED        | WHEAT        |

|         370 | WAYNE       | TRUONG       |

|         371 | BILLY       | POULIN       |

|         372 | STEVE       | MACKENZIE    |

|         373 | LOUIS       | LEONE        |

|         374 | JEREMY      | HURTADO      |

|         375 | AARON       | SELBY        |

|         376 | RANDY       | GAITHER      |

|         377 | HOWARD      | FORTNER      |

|         378 | EUGENE      | CULPEPPER    |

|         379 | CARLOS      | COUGHLIN     |

|         380 | RUSSELL     | BRINSON      |

|         381 | BOBBY       | BOUDREAU     |

|         382 | VICTOR      | BARKLEY      |

|         383 | MARTIN      | BALES        |

|         384 | ERNEST      | STEPP        |

|         385 | PHILLIP     | HOLM         |

|         386 | TODD        | TAN          |

|         387 | JESSE       | SCHILLING    |

|         388 | CRAIG       | MORRELL      |

|         389 | ALAN        | KAHN         |

|         390 | SHAWN       | HEATON       |

|         391 | CLARENCE    | GAMEZ        |

|         392 | SEAN        | DOUGLASS     |

|         393 | PHILIP      | CAUSEY       |

|         394 | CHRIS       | BROTHERS     |

|         395 | JOHNNY      | TURPIN       |

|         396 | EARL        | SHANKS       |

|         397 | JIMMY       | SCHRADER     |

|         398 | ANTONIO     | MEEK         |

|         399 | DANNY       | ISOM         |

|         400 | BRYAN       | HARDISON     |

|         401 | TONY        | CARRANZA     |

|         402 | LUIS        | YANEZ        |

|         403 | MIKE        | WAY          |

|         404 | STANLEY     | SCROGGINS    |

|         405 | LEONARD     | SCHOFIELD    |

|         406 | NATHAN      | RUNYON       |

|         407 | DALE        | RATCLIFF     |

|         408 | MANUEL      | MURRELL      |

|         409 | RODNEY      | MOELLER      |

|         410 | CURTIS      | IRBY         |

|         411 | NORMAN      | CURRIER      |

|         412 | ALLEN       | BUTTERFIELD  |

|         413 | MARVIN      | YEE          |

|         414 | VINCENT     | RALSTON      |

|         415 | GLENN       | PULLEN       |

|         416 | JEFFERY     | PINSON       |

|         417 | TRAVIS      | ESTEP        |

|         418 | JEFF        | EAST         |

|         419 | CHAD        | CARBONE      |

|         420 | JACOB       | LANCE        |

|         421 | LEE         | HAWKS        |

|         422 | MELVIN      | ELLINGTON    |

|         423 | ALFRED      | CASILLAS     |

|         424 | KYLE        | SPURLOCK     |

|         425 | FRANCIS     | SIKES        |

|         426 | BRADLEY     | MOTLEY       |

|         427 | JESUS       | MCCARTNEY    |

|         428 | HERBERT     | KRUGER       |

|         429 | FREDERICK   | ISBELL       |

|         430 | RAY         | HOULE        |

|         431 | JOEL        | FRANCISCO    |

|         432 | EDWIN       | BURK         |

|         433 | DON         | BONE         |

|         434 | EDDIE       | TOMLIN       |

|         435 | RICKY       | SHELBY       |

|         436 | TROY        | QUIGLEY      |

|         437 | RANDALL     | NEUMANN      |

|         438 | BARRY       | LOVELACE     |

|         439 | ALEXANDER   | FENNELL      |

|         440 | BERNARD     | COLBY        |

|         441 | MARIO       | CHEATHAM     |

|         442 | LEROY       | BUSTAMANTE   |

|         443 | FRANCISCO   | SKIDMORE     |

|         444 | MARCUS      | HIDALGO      |

|         445 | MICHEAL     | FORMAN       |

|         446 | THEODORE    | CULP         |

|         447 | CLIFFORD    | BOWENS       |

|         448 | MIGUEL      | BETANCOURT   |

|         449 | OSCAR       | AQUINO       |

|         450 | JAY         | ROBB         |

|         451 | JIM         | REA          |

|         452 | TOM         | MILNER       |

|         453 | CALVIN      | MARTEL       |

|         454 | ALEX        | GRESHAM      |

|         455 | JON         | WILES        |

|         456 | RONNIE      | RICKETTS     |

|         457 | BILL        | GAVIN        |

|         458 | LLOYD       | DOWD         |

|         459 | TOMMY       | COLLAZO      |

|         460 | LEON        | BOSTIC       |

|         461 | DEREK       | BLAKELY      |

|         462 | WARREN      | SHERROD      |

|         463 | DARRELL     | POWER        |

|         464 | JEROME      | KENYON       |

|         465 | FLOYD       | GANDY        |

|         466 | LEO         | EBERT        |

|         467 | ALVIN       | DELOACH      |

|         468 | TIM         | CARY         |

|         469 | WESLEY      | BULL         |

|         470 | GORDON      | ALLARD       |

|         471 | DEAN        | SAUER        |

|         472 | GREG        | ROBINS       |

|         473 | JORGE       | OLIVARES     |

|         474 | DUSTIN      | GILLETTE     |

|         475 | PEDRO       | CHESTNUT     |

|         476 | DERRICK     | BOURQUE      |

|         477 | DAN         | PAINE        |

|         478 | LEWIS       | LYMAN        |

|         479 | ZACHARY     | HITE         |

|         480 | COREY       | HAUSER       |

|         481 | HERMAN      | DEVORE       |

|         482 | MAURICE     | CRAWLEY      |

|         483 | VERNON      | CHAPA        |

|         484 | ROBERTO     | VU           |

|         485 | CLYDE       | TOBIAS       |

|         486 | GLEN        | TALBERT      |

|         487 | HECTOR      | POINDEXTER   |

|         488 | SHANE       | MILLARD      |

|         489 | RICARDO     | MEADOR       |

|         490 | SAM         | MCDUFFIE     |

|         491 | RICK        | MATTOX       |

|         492 | LESTER      | KRAUS        |

|         493 | BRENT       | HARKINS      |

|         494 | RAMON       | CHOATE       |

|         495 | CHARLIE     | BESS         |

|         496 | TYLER       | WREN         |

|         497 | GILBERT     | SLEDGE       |

|         498 | GENE        | SANBORN      |

|         499 | MARC        | OUTLAW       |

|         500 | REGINALD    | KINDER       |

|         501 | RUBEN       | GEARY        |

|         502 | BRETT       | CORNWELL     |

|         503 | ANGEL       | BARCLAY      |

|         504 | NATHANIEL   | ADAM         |

|         505 | RAFAEL      | ABNEY        |

|         506 | LESLIE      | SEWARD       |

|         507 | EDGAR       | RHOADS       |

|         508 | MILTON      | HOWLAND      |

|         509 | RAUL        | FORTIER      |

|         510 | BEN         | EASTER       |

|         511 | CHESTER     | BENNER       |

|         512 | CECIL       | VINES        |

|         513 | DUANE       | TUBBS        |

|         514 | FRANKLIN    | TROUTMAN     |

|         515 | ANDRE       | RAPP         |

|         516 | ELMER       | NOE          |

|         517 | BRAD        | MCCURDY      |

|         518 | GABRIEL     | HARDER       |

|         519 | RON         | DELUCA       |

|         520 | MITCHELL    | WESTMORELAND |

|         521 | ROLAND      | SOUTH        |

|         522 | ARNOLD      | HAVENS       |

|         523 | HARVEY      | GUAJARDO     |

|         524 | JARED       | ELY          |

|         525 | ADRIAN      | CLARY        |

|         526 | KARL        | SEAL         |

|         527 | CORY        | MEEHAN       |

|         528 | CLAUDE      | HERZOG       |

|         529 | ERIK        | GUILLEN      |

|         530 | DARRYL      | ASHCRAFT     |

|         531 | JAMIE       | WAUGH        |

|         532 | NEIL        | RENNER       |

|         533 | JESSIE      | MILAM        |

|         534 | CHRISTIAN   | JUNG         |

|         535 | JAVIER      | ELROD        |

|         536 | FERNANDO    | CHURCHILL    |

|         537 | CLINTON     | BUFORD       |

|         538 | TED         | BREAUX       |

|         539 | MATHEW      | BOLIN        |

|         540 | TYRONE      | ASHER        |

|         541 | DARREN      | WINDHAM      |

|         542 | LONNIE      | TIRADO       |

|         543 | LANCE       | PEMBERTON    |

|         544 | CODY        | NOLEN        |

|         545 | JULIO       | NOLAND       |

|         546 | KELLY       | KNOTT        |

|         547 | KURT        | EMMONS       |

|         548 | ALLAN       | CORNISH      |

|         549 | NELSON      | CHRISTENSON  |

|         550 | GUY         | BROWNLEE     |

|         551 | CLAYTON     | BARBEE       |

|         552 | HUGH        | WALDROP      |

|         553 | MAX         | PITT         |

|         554 | DWAYNE      | OLVERA       |

|         555 | DWIGHT      | LOMBARDI     |

|         556 | ARMANDO     | GRUBER       |

|         557 | FELIX       | GAFFNEY      |

|         558 | JIMMIE      | EGGLESTON    |

|         559 | EVERETT     | BANDA        |

|         560 | JORDAN      | ARCHULETA    |

|         561 | IAN         | STILL        |

|         562 | WALLACE     | SLONE        |

|         563 | KEN         | PREWITT      |

|         564 | BOB         | PFEIFFER     |

|         565 | JAIME       | NETTLES      |

|         566 | CASEY       | MENA         |

|         567 | ALFREDO     | MCADAMS      |

|         568 | ALBERTO     | HENNING      |

|         569 | DAVE        | GARDINER     |

|         570 | IVAN        | CROMWELL     |

|         571 | JOHNNIE     | CHISHOLM     |

|         572 | SIDNEY      | BURLESON     |

|         573 | BYRON       | BOX          |

|         574 | JULIAN      | VEST         |

|         575 | ISAAC       | OGLESBY      |

|         576 | MORRIS      | MCCARTER     |

|         577 | CLIFTON     | MALCOLM      |

|         578 | WILLARD     | LUMPKIN      |

|         579 | DARYL       | LARUE        |

|         580 | ROSS        | GREY         |

|         581 | VIRGIL      | WOFFORD      |

|         582 | ANDY        | VANHORN      |

|         583 | MARSHALL    | THORN        |

|         584 | SALVADOR    | TEEL         |

|         585 | PERRY       | SWAFFORD     |

|         586 | KIRK        | STCLAIR      |

|         587 | SERGIO      | STANFIELD    |

|         588 | MARION      | OCAMPO       |

|         589 | TRACY       | HERRMANN     |

|         590 | SETH        | HANNON       |

|         591 | KENT        | ARSENAULT    |

|         592 | TERRANCE    | ROUSH        |

|         593 | RENE        | MCALISTER    |

|         594 | EDUARDO     | HIATT        |

|         595 | TERRENCE    | GUNDERSON    |

|         596 | ENRIQUE     | FORSYTHE     |

|         597 | FREDDIE     | DUGGAN       |

|         598 | WADE        | DELVALLE     |

|         599 | AUSTIN      | CINTRON      |

+-------------+-------------+--------------+

599 rows in set (0.0231 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > desc customer;

+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+

| Field       | Type              | Null | Key | Default           | Extra                                         |

+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+

| customer\_id | smallint unsigned | NO   | PRI | NULL              | auto\_increment                                |

| store\_id    | tinyint unsigned  | NO   | MUL | NULL              |                                               |

| first\_name  | varchar(45)       | NO   |     | NULL              |                                               |

| last\_name   | varchar(45)       | NO   | MUL | NULL              |                                               |

| email       | varchar(50)       | YES  |     | NULL              |                                               |

| address\_id  | smallint unsigned | NO   | MUL | NULL              |                                               |

| active      | tinyint(1)        | NO   |     | 1                 |                                               |

| create\_date | datetime          | NO   |     | NULL              |                                               |

| last\_update | timestamp         | YES  |     | CURRENT\_TIMESTAMP | DEFAULT\_GENERATED on update CURRENT\_TIMESTAMP |

+-------------+-------------------+------+-----+-------------------+-----------------------------------------------+

9 rows in set (0.0028 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > insert into customer (

&#x20;                                      -> store\_id, first\_name, last\_name, address\_id, create\_date)

&#x20;                                      -> value (1, Larry, cabirria, 1, '10-2026'));

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 3

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > insert into customer ( store\_id, first\_name, last\_name, address\_id, create\_date)  value (1, 'Larry', 'Cabirria', 1, '10-2026'));

ERROR: 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > insert into customer ( store\_id, first\_name, last\_name, address\_id, create\_date)  value (1, 'Larry', 'Cabirria', 1, '10-2026');

Query OK, 1 row affected, 1 warning (0.0547 sec)

Warning (code 1265): Data truncated for column 'create\_date' at row 1

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > insert into customer ( store\_id, first\_name, last\_name, address\_id, create\_date)  value (1, 'Daniel', 'Rascon', 1, '11-2026');

Query OK, 1 row affected, 1 warning (0.0164 sec)

Warning (code 1265): Data truncated for column 'create\_date' at row 1

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > insert into customer ( store\_id, first\_name, last\_name, address\_id, create\_date)  value (1, 'Luis', 'Meza', 1, '12-2026');

Query OK, 1 row affected, 1 warning (0.0151 sec)

Warning (code 1265): Data truncated for column 'create\_date' at row 1

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select customer\_id, first\_name, last\_name;

ERROR: 1054 (42S22): Unknown column 'customer\_id' in 'field list'

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select customer\_id, first\_name, last\_name from customer;

+-------------+-------------+--------------+

| customer\_id | first\_name  | last\_name    |

+-------------+-------------+--------------+

|           1 | MARY        | SMITH        |

|           2 | PATRICIA    | JOHNSON      |

|           3 | LINDA       | WILLIAMS     |

|           4 | BARBARA     | JONES        |

|           5 | ELIZABETH   | BROWN        |

|           6 | JENNIFER    | DAVIS        |

|           7 | MARIA       | MILLER       |

|           8 | SUSAN       | WILSON       |

|           9 | MARGARET    | MOORE        |

|          10 | DOROTHY     | TAYLOR       |

|          11 | LISA        | ANDERSON     |

|          12 | NANCY       | THOMAS       |

|          13 | KAREN       | JACKSON      |

|          14 | BETTY       | WHITE        |

|          15 | HELEN       | HARRIS       |

|          16 | SANDRA      | MARTIN       |

|          17 | DONNA       | THOMPSON     |

|          18 | CAROL       | GARCIA       |

|          19 | RUTH        | MARTINEZ     |

|          20 | SHARON      | ROBINSON     |

|          21 | MICHELLE    | CLARK        |

|          22 | LAURA       | RODRIGUEZ    |

|          23 | SARAH       | LEWIS        |

|          24 | KIMBERLY    | LEE          |

|          25 | DEBORAH     | WALKER       |

|          26 | JESSICA     | HALL         |

|          27 | SHIRLEY     | ALLEN        |

|          28 | CYNTHIA     | YOUNG        |

|          29 | ANGELA      | HERNANDEZ    |

|          30 | MELISSA     | KING         |

|          31 | BRENDA      | WRIGHT       |

|          32 | AMY         | LOPEZ        |

|          33 | ANNA        | HILL         |

|          34 | REBECCA     | SCOTT        |

|          35 | VIRGINIA    | GREEN        |

|          36 | KATHLEEN    | ADAMS        |

|          37 | PAMELA      | BAKER        |

|          38 | MARTHA      | GONZALEZ     |

|          39 | DEBRA       | NELSON       |

|          40 | AMANDA      | CARTER       |

|          41 | STEPHANIE   | MITCHELL     |

|          42 | CAROLYN     | PEREZ        |

|          43 | CHRISTINE   | ROBERTS      |

|          44 | MARIE       | TURNER       |

|          45 | JANET       | PHILLIPS     |

|          46 | CATHERINE   | CAMPBELL     |

|          47 | FRANCES     | PARKER       |

|          48 | ANN         | EVANS        |

|          49 | JOYCE       | EDWARDS      |

|          50 | DIANE       | COLLINS      |

|          51 | ALICE       | STEWART      |

|          52 | JULIE       | SANCHEZ      |

|          53 | HEATHER     | MORRIS       |

|          54 | TERESA      | ROGERS       |

|          55 | DORIS       | REED         |

|          56 | GLORIA      | COOK         |

|          57 | EVELYN      | MORGAN       |

|          58 | JEAN        | BELL         |

|          59 | CHERYL      | MURPHY       |

|          60 | MILDRED     | BAILEY       |

|          61 | KATHERINE   | RIVERA       |

|          62 | JOAN        | COOPER       |

|          63 | ASHLEY      | RICHARDSON   |

|          64 | JUDITH      | COX          |

|          65 | ROSE        | HOWARD       |

|          66 | JANICE      | WARD         |

|          67 | KELLY       | TORRES       |

|          68 | NICOLE      | PETERSON     |

|          69 | JUDY        | GRAY         |

|          70 | CHRISTINA   | RAMIREZ      |

|          71 | KATHY       | JAMES        |

|          72 | THERESA     | WATSON       |

|          73 | BEVERLY     | BROOKS       |

|          74 | DENISE      | KELLY        |

|          75 | TAMMY       | SANDERS      |

|          76 | IRENE       | PRICE        |

|          77 | JANE        | BENNETT      |

|          78 | LORI        | WOOD         |

|          79 | RACHEL      | BARNES       |

|          80 | MARILYN     | ROSS         |

|          81 | ANDREA      | HENDERSON    |

|          82 | KATHRYN     | COLEMAN      |

|          83 | LOUISE      | JENKINS      |

|          84 | SARA        | PERRY        |

|          85 | ANNE        | POWELL       |

|          86 | JACQUELINE  | LONG         |

|          87 | WANDA       | PATTERSON    |

|          88 | BONNIE      | HUGHES       |

|          89 | JULIA       | FLORES       |

|          90 | RUBY        | WASHINGTON   |

|          91 | LOIS        | BUTLER       |

|          92 | TINA        | SIMMONS      |

|          93 | PHYLLIS     | FOSTER       |

|          94 | NORMA       | GONZALES     |

|          95 | PAULA       | BRYANT       |

|          96 | DIANA       | ALEXANDER    |

|          97 | ANNIE       | RUSSELL      |

|          98 | LILLIAN     | GRIFFIN      |

|          99 | EMILY       | DIAZ         |

|         100 | ROBIN       | HAYES        |

|         101 | PEGGY       | MYERS        |

|         102 | CRYSTAL     | FORD         |

|         103 | GLADYS      | HAMILTON     |

|         104 | RITA        | GRAHAM       |

|         105 | DAWN        | SULLIVAN     |

|         106 | CONNIE      | WALLACE      |

|         107 | FLORENCE    | WOODS        |

|         108 | TRACY       | COLE         |

|         109 | EDNA        | WEST         |

|         110 | TIFFANY     | JORDAN       |

|         111 | CARMEN      | OWENS        |

|         112 | ROSA        | REYNOLDS     |

|         113 | CINDY       | FISHER       |

|         114 | GRACE       | ELLIS        |

|         115 | WENDY       | HARRISON     |

|         116 | VICTORIA    | GIBSON       |

|         117 | EDITH       | MCDONALD     |

|         118 | KIM         | CRUZ         |

|         119 | SHERRY      | MARSHALL     |

|         120 | SYLVIA      | ORTIZ        |

|         121 | JOSEPHINE   | GOMEZ        |

|         122 | THELMA      | MURRAY       |

|         123 | SHANNON     | FREEMAN      |

|         124 | SHEILA      | WELLS        |

|         125 | ETHEL       | WEBB         |

|         126 | ELLEN       | SIMPSON      |

|         127 | ELAINE      | STEVENS      |

|         128 | MARJORIE    | TUCKER       |

|         129 | CARRIE      | PORTER       |

|         130 | CHARLOTTE   | HUNTER       |

|         131 | MONICA      | HICKS        |

|         132 | ESTHER      | CRAWFORD     |

|         133 | PAULINE     | HENRY        |

|         134 | EMMA        | BOYD         |

|         135 | JUANITA     | MASON        |

|         136 | ANITA       | MORALES      |

|         137 | RHONDA      | KENNEDY      |

|         138 | HAZEL       | WARREN       |

|         139 | AMBER       | DIXON        |

|         140 | EVA         | RAMOS        |

|         141 | DEBBIE      | REYES        |

|         142 | APRIL       | BURNS        |

|         143 | LESLIE      | GORDON       |

|         144 | CLARA       | SHAW         |

|         145 | LUCILLE     | HOLMES       |

|         146 | JAMIE       | RICE         |

|         147 | JOANNE      | ROBERTSON    |

|         148 | ELEANOR     | HUNT         |

|         149 | VALERIE     | BLACK        |

|         150 | DANIELLE    | DANIELS      |

|         151 | MEGAN       | PALMER       |

|         152 | ALICIA      | MILLS        |

|         153 | SUZANNE     | NICHOLS      |

|         154 | MICHELE     | GRANT        |

|         155 | GAIL        | KNIGHT       |

|         156 | BERTHA      | FERGUSON     |

|         157 | DARLENE     | ROSE         |

|         158 | VERONICA    | STONE        |

|         159 | JILL        | HAWKINS      |

|         160 | ERIN        | DUNN         |

|         161 | GERALDINE   | PERKINS      |

|         162 | LAUREN      | HUDSON       |

|         163 | CATHY       | SPENCER      |

|         164 | JOANN       | GARDNER      |

|         165 | LORRAINE    | STEPHENS     |

|         166 | LYNN        | PAYNE        |

|         167 | SALLY       | PIERCE       |

|         168 | REGINA      | BERRY        |

|         169 | ERICA       | MATTHEWS     |

|         170 | BEATRICE    | ARNOLD       |

|         171 | DOLORES     | WAGNER       |

|         172 | BERNICE     | WILLIS       |

|         173 | AUDREY      | RAY          |

|         174 | YVONNE      | WATKINS      |

|         175 | ANNETTE     | OLSON        |

|         176 | JUNE        | CARROLL      |

|         177 | SAMANTHA    | DUNCAN       |

|         178 | MARION      | SNYDER       |

|         179 | DANA        | HART         |

|         180 | STACY       | CUNNINGHAM   |

|         181 | ANA         | BRADLEY      |

|         182 | RENEE       | LANE         |

|         183 | IDA         | ANDREWS      |

|         184 | VIVIAN      | RUIZ         |

|         185 | ROBERTA     | HARPER       |

|         186 | HOLLY       | FOX          |

|         187 | BRITTANY    | RILEY        |

|         188 | MELANIE     | ARMSTRONG    |

|         189 | LORETTA     | CARPENTER    |

|         190 | YOLANDA     | WEAVER       |

|         191 | JEANETTE    | GREENE       |

|         192 | LAURIE      | LAWRENCE     |

|         193 | KATIE       | ELLIOTT      |

|         194 | KRISTEN     | CHAVEZ       |

|         195 | VANESSA     | SIMS         |

|         196 | ALMA        | AUSTIN       |

|         197 | SUE         | PETERS       |

|         198 | ELSIE       | KELLEY       |

|         199 | BETH        | FRANKLIN     |

|         200 | JEANNE      | LAWSON       |

|         201 | VICKI       | FIELDS       |

|         202 | CARLA       | GUTIERREZ    |

|         203 | TARA        | RYAN         |

|         204 | ROSEMARY    | SCHMIDT      |

|         205 | EILEEN      | CARR         |

|         206 | TERRI       | VASQUEZ      |

|         207 | GERTRUDE    | CASTILLO     |

|         208 | LUCY        | WHEELER      |

|         209 | TONYA       | CHAPMAN      |

|         210 | ELLA        | OLIVER       |

|         211 | STACEY      | MONTGOMERY   |

|         212 | WILMA       | RICHARDS     |

|         213 | GINA        | WILLIAMSON   |

|         214 | KRISTIN     | JOHNSTON     |

|         215 | JESSIE      | BANKS        |

|         216 | NATALIE     | MEYER        |

|         217 | AGNES       | BISHOP       |

|         218 | VERA        | MCCOY        |

|         219 | WILLIE      | HOWELL       |

|         220 | CHARLENE    | ALVAREZ      |

|         221 | BESSIE      | MORRISON     |

|         222 | DELORES     | HANSEN       |

|         223 | MELINDA     | FERNANDEZ    |

|         224 | PEARL       | GARZA        |

|         225 | ARLENE      | HARVEY       |

|         226 | MAUREEN     | LITTLE       |

|         227 | COLLEEN     | BURTON       |

|         228 | ALLISON     | STANLEY      |

|         229 | TAMARA      | NGUYEN       |

|         230 | JOY         | GEORGE       |

|         231 | GEORGIA     | JACOBS       |

|         232 | CONSTANCE   | REID         |

|         233 | LILLIE      | KIM          |

|         234 | CLAUDIA     | FULLER       |

|         235 | JACKIE      | LYNCH        |

|         236 | MARCIA      | DEAN         |

|         237 | TANYA       | GILBERT      |

|         238 | NELLIE      | GARRETT      |

|         239 | MINNIE      | ROMERO       |

|         240 | MARLENE     | WELCH        |

|         241 | HEIDI       | LARSON       |

|         242 | GLENDA      | FRAZIER      |

|         243 | LYDIA       | BURKE        |

|         244 | VIOLA       | HANSON       |

|         245 | COURTNEY    | DAY          |

|         246 | MARIAN      | MENDOZA      |

|         247 | STELLA      | MORENO       |

|         248 | CAROLINE    | BOWMAN       |

|         249 | DORA        | MEDINA       |

|         250 | JO          | FOWLER       |

|         251 | VICKIE      | BREWER       |

|         252 | MATTIE      | HOFFMAN      |

|         253 | TERRY       | CARLSON      |

|         254 | MAXINE      | SILVA        |

|         255 | IRMA        | PEARSON      |

|         256 | MABEL       | HOLLAND      |

|         257 | MARSHA      | DOUGLAS      |

|         258 | MYRTLE      | FLEMING      |

|         259 | LENA        | JENSEN       |

|         260 | CHRISTY     | VARGAS       |

|         261 | DEANNA      | BYRD         |

|         262 | PATSY       | DAVIDSON     |

|         263 | HILDA       | HOPKINS      |

|         264 | GWENDOLYN   | MAY          |

|         265 | JENNIE      | TERRY        |

|         266 | NORA        | HERRERA      |

|         267 | MARGIE      | WADE         |

|         268 | NINA        | SOTO         |

|         269 | CASSANDRA   | WALTERS      |

|         270 | LEAH        | CURTIS       |

|         271 | PENNY       | NEAL         |

|         272 | KAY         | CALDWELL     |

|         273 | PRISCILLA   | LOWE         |

|         274 | NAOMI       | JENNINGS     |

|         275 | CAROLE      | BARNETT      |

|         276 | BRANDY      | GRAVES       |

|         277 | OLGA        | JIMENEZ      |

|         278 | BILLIE      | HORTON       |

|         279 | DIANNE      | SHELTON      |

|         280 | TRACEY      | BARRETT      |

|         281 | LEONA       | OBRIEN       |

|         282 | JENNY       | CASTRO       |

|         283 | FELICIA     | SUTTON       |

|         284 | SONIA       | GREGORY      |

|         285 | MIRIAM      | MCKINNEY     |

|         286 | VELMA       | LUCAS        |

|         287 | BECKY       | MILES        |

|         288 | BOBBIE      | CRAIG        |

|         289 | VIOLET      | RODRIQUEZ    |

|         290 | KRISTINA    | CHAMBERS     |

|         291 | TONI        | HOLT         |

|         292 | MISTY       | LAMBERT      |

|         293 | MAE         | FLETCHER     |

|         294 | SHELLY      | WATTS        |

|         295 | DAISY       | BATES        |

|         296 | RAMONA      | HALE         |

|         297 | SHERRI      | RHODES       |

|         298 | ERIKA       | PENA         |

|         299 | JAMES       | GANNON       |

|         300 | JOHN        | FARNSWORTH   |

|         301 | ROBERT      | BAUGHMAN     |

|         302 | MICHAEL     | SILVERMAN    |

|         303 | WILLIAM     | SATTERFIELD  |

|         304 | DAVID       | ROYAL        |

|         305 | RICHARD     | MCCRARY      |

|         306 | CHARLES     | KOWALSKI     |

|         307 | JOSEPH      | JOY          |

|         308 | THOMAS      | GRIGSBY      |

|         309 | CHRISTOPHER | GRECO        |

|         310 | DANIEL      | CABRAL       |

|         311 | PAUL        | TROUT        |

|         312 | MARK        | RINEHART     |

|         313 | DONALD      | MAHON        |

|         314 | GEORGE      | LINTON       |

|         315 | KENNETH     | GOODEN       |

|         316 | STEVEN      | CURLEY       |

|         317 | EDWARD      | BAUGH        |

|         318 | BRIAN       | WYMAN        |

|         319 | RONALD      | WEINER       |

|         320 | ANTHONY     | SCHWAB       |

|         321 | KEVIN       | SCHULER      |

|         322 | JASON       | MORRISSEY    |

|         323 | MATTHEW     | MAHAN        |

|         324 | GARY        | COY          |

|         325 | TIMOTHY     | BUNN         |

|         326 | JOSE        | ANDREW       |

|         327 | LARRY       | THRASHER     |

|         328 | JEFFREY     | SPEAR        |

|         329 | FRANK       | WAGGONER     |

|         330 | SCOTT       | SHELLEY      |

|         331 | ERIC        | ROBERT       |

|         332 | STEPHEN     | QUALLS       |

|         333 | ANDREW      | PURDY        |

|         334 | RAYMOND     | MCWHORTER    |

|         335 | GREGORY     | MAULDIN      |

|         336 | JOSHUA      | MARK         |

|         337 | JERRY       | JORDON       |

|         338 | DENNIS      | GILMAN       |

|         339 | WALTER      | PERRYMAN     |

|         340 | PATRICK     | NEWSOM       |

|         341 | PETER       | MENARD       |

|         342 | HAROLD      | MARTINO      |

|         343 | DOUGLAS     | GRAF         |

|         344 | HENRY       | BILLINGSLEY  |

|         345 | CARL        | ARTIS        |

|         346 | ARTHUR      | SIMPKINS     |

|         347 | RYAN        | SALISBURY    |

|         348 | ROGER       | QUINTANILLA  |

|         349 | JOE         | GILLILAND    |

|         350 | JUAN        | FRALEY       |

|         351 | JACK        | FOUST        |

|         352 | ALBERT      | CROUSE       |

|         353 | JONATHAN    | SCARBOROUGH  |

|         354 | JUSTIN      | NGO          |

|         355 | TERRY       | GRISSOM      |

|         356 | GERALD      | FULTZ        |

|         357 | KEITH       | RICO         |

|         358 | SAMUEL      | MARLOW       |

|         359 | WILLIE      | MARKHAM      |

|         360 | RALPH       | MADRIGAL     |

|         361 | LAWRENCE    | LAWTON       |

|         362 | NICHOLAS    | BARFIELD     |

|         363 | ROY         | WHITING      |

|         364 | BENJAMIN    | VARNEY       |

|         365 | BRUCE       | SCHWARZ      |

|         366 | BRANDON     | HUEY         |

|         367 | ADAM        | GOOCH        |

|         368 | HARRY       | ARCE         |

|         369 | FRED        | WHEAT        |

|         370 | WAYNE       | TRUONG       |

|         371 | BILLY       | POULIN       |

|         372 | STEVE       | MACKENZIE    |

|         373 | LOUIS       | LEONE        |

|         374 | JEREMY      | HURTADO      |

|         375 | AARON       | SELBY        |

|         376 | RANDY       | GAITHER      |

|         377 | HOWARD      | FORTNER      |

|         378 | EUGENE      | CULPEPPER    |

|         379 | CARLOS      | COUGHLIN     |

|         380 | RUSSELL     | BRINSON      |

|         381 | BOBBY       | BOUDREAU     |

|         382 | VICTOR      | BARKLEY      |

|         383 | MARTIN      | BALES        |

|         384 | ERNEST      | STEPP        |

|         385 | PHILLIP     | HOLM         |

|         386 | TODD        | TAN          |

|         387 | JESSE       | SCHILLING    |

|         388 | CRAIG       | MORRELL      |

|         389 | ALAN        | KAHN         |

|         390 | SHAWN       | HEATON       |

|         391 | CLARENCE    | GAMEZ        |

|         392 | SEAN        | DOUGLASS     |

|         393 | PHILIP      | CAUSEY       |

|         394 | CHRIS       | BROTHERS     |

|         395 | JOHNNY      | TURPIN       |

|         396 | EARL        | SHANKS       |

|         397 | JIMMY       | SCHRADER     |

|         398 | ANTONIO     | MEEK         |

|         399 | DANNY       | ISOM         |

|         400 | BRYAN       | HARDISON     |

|         401 | TONY        | CARRANZA     |

|         402 | LUIS        | YANEZ        |

|         403 | MIKE        | WAY          |

|         404 | STANLEY     | SCROGGINS    |

|         405 | LEONARD     | SCHOFIELD    |

|         406 | NATHAN      | RUNYON       |

|         407 | DALE        | RATCLIFF     |

|         408 | MANUEL      | MURRELL      |

|         409 | RODNEY      | MOELLER      |

|         410 | CURTIS      | IRBY         |

|         411 | NORMAN      | CURRIER      |

|         412 | ALLEN       | BUTTERFIELD  |

|         413 | MARVIN      | YEE          |

|         414 | VINCENT     | RALSTON      |

|         415 | GLENN       | PULLEN       |

|         416 | JEFFERY     | PINSON       |

|         417 | TRAVIS      | ESTEP        |

|         418 | JEFF        | EAST         |

|         419 | CHAD        | CARBONE      |

|         420 | JACOB       | LANCE        |

|         421 | LEE         | HAWKS        |

|         422 | MELVIN      | ELLINGTON    |

|         423 | ALFRED      | CASILLAS     |

|         424 | KYLE        | SPURLOCK     |

|         425 | FRANCIS     | SIKES        |

|         426 | BRADLEY     | MOTLEY       |

|         427 | JESUS       | MCCARTNEY    |

|         428 | HERBERT     | KRUGER       |

|         429 | FREDERICK   | ISBELL       |

|         430 | RAY         | HOULE        |

|         431 | JOEL        | FRANCISCO    |

|         432 | EDWIN       | BURK         |

|         433 | DON         | BONE         |

|         434 | EDDIE       | TOMLIN       |

|         435 | RICKY       | SHELBY       |

|         436 | TROY        | QUIGLEY      |

|         437 | RANDALL     | NEUMANN      |

|         438 | BARRY       | LOVELACE     |

|         439 | ALEXANDER   | FENNELL      |

|         440 | BERNARD     | COLBY        |

|         441 | MARIO       | CHEATHAM     |

|         442 | LEROY       | BUSTAMANTE   |

|         443 | FRANCISCO   | SKIDMORE     |

|         444 | MARCUS      | HIDALGO      |

|         445 | MICHEAL     | FORMAN       |

|         446 | THEODORE    | CULP         |

|         447 | CLIFFORD    | BOWENS       |

|         448 | MIGUEL      | BETANCOURT   |

|         449 | OSCAR       | AQUINO       |

|         450 | JAY         | ROBB         |

|         451 | JIM         | REA          |

|         452 | TOM         | MILNER       |

|         453 | CALVIN      | MARTEL       |

|         454 | ALEX        | GRESHAM      |

|         455 | JON         | WILES        |

|         456 | RONNIE      | RICKETTS     |

|         457 | BILL        | GAVIN        |

|         458 | LLOYD       | DOWD         |

|         459 | TOMMY       | COLLAZO      |

|         460 | LEON        | BOSTIC       |

|         461 | DEREK       | BLAKELY      |

|         462 | WARREN      | SHERROD      |

|         463 | DARRELL     | POWER        |

|         464 | JEROME      | KENYON       |

|         465 | FLOYD       | GANDY        |

|         466 | LEO         | EBERT        |

|         467 | ALVIN       | DELOACH      |

|         468 | TIM         | CARY         |

|         469 | WESLEY      | BULL         |

|         470 | GORDON      | ALLARD       |

|         471 | DEAN        | SAUER        |

|         472 | GREG        | ROBINS       |

|         473 | JORGE       | OLIVARES     |

|         474 | DUSTIN      | GILLETTE     |

|         475 | PEDRO       | CHESTNUT     |

|         476 | DERRICK     | BOURQUE      |

|         477 | DAN         | PAINE        |

|         478 | LEWIS       | LYMAN        |

|         479 | ZACHARY     | HITE         |

|         480 | COREY       | HAUSER       |

|         481 | HERMAN      | DEVORE       |

|         482 | MAURICE     | CRAWLEY      |

|         483 | VERNON      | CHAPA        |

|         484 | ROBERTO     | VU           |

|         485 | CLYDE       | TOBIAS       |

|         486 | GLEN        | TALBERT      |

|         487 | HECTOR      | POINDEXTER   |

|         488 | SHANE       | MILLARD      |

|         489 | RICARDO     | MEADOR       |

|         490 | SAM         | MCDUFFIE     |

|         491 | RICK        | MATTOX       |

|         492 | LESTER      | KRAUS        |

|         493 | BRENT       | HARKINS      |

|         494 | RAMON       | CHOATE       |

|         495 | CHARLIE     | BESS         |

|         496 | TYLER       | WREN         |

|         497 | GILBERT     | SLEDGE       |

|         498 | GENE        | SANBORN      |

|         499 | MARC        | OUTLAW       |

|         500 | REGINALD    | KINDER       |

|         501 | RUBEN       | GEARY        |

|         502 | BRETT       | CORNWELL     |

|         503 | ANGEL       | BARCLAY      |

|         504 | NATHANIEL   | ADAM         |

|         505 | RAFAEL      | ABNEY        |

|         506 | LESLIE      | SEWARD       |

|         507 | EDGAR       | RHOADS       |

|         508 | MILTON      | HOWLAND      |

|         509 | RAUL        | FORTIER      |

|         510 | BEN         | EASTER       |

|         511 | CHESTER     | BENNER       |

|         512 | CECIL       | VINES        |

|         513 | DUANE       | TUBBS        |

|         514 | FRANKLIN    | TROUTMAN     |

|         515 | ANDRE       | RAPP         |

|         516 | ELMER       | NOE          |

|         517 | BRAD        | MCCURDY      |

|         518 | GABRIEL     | HARDER       |

|         519 | RON         | DELUCA       |

|         520 | MITCHELL    | WESTMORELAND |

|         521 | ROLAND      | SOUTH        |

|         522 | ARNOLD      | HAVENS       |

|         523 | HARVEY      | GUAJARDO     |

|         524 | JARED       | ELY          |

|         525 | ADRIAN      | CLARY        |

|         526 | KARL        | SEAL         |

|         527 | CORY        | MEEHAN       |

|         528 | CLAUDE      | HERZOG       |

|         529 | ERIK        | GUILLEN      |

|         530 | DARRYL      | ASHCRAFT     |

|         531 | JAMIE       | WAUGH        |

|         532 | NEIL        | RENNER       |

|         533 | JESSIE      | MILAM        |

|         534 | CHRISTIAN   | JUNG         |

|         535 | JAVIER      | ELROD        |

|         536 | FERNANDO    | CHURCHILL    |

|         537 | CLINTON     | BUFORD       |

|         538 | TED         | BREAUX       |

|         539 | MATHEW      | BOLIN        |

|         540 | TYRONE      | ASHER        |

|         541 | DARREN      | WINDHAM      |

|         542 | LONNIE      | TIRADO       |

|         543 | LANCE       | PEMBERTON    |

|         544 | CODY        | NOLEN        |

|         545 | JULIO       | NOLAND       |

|         546 | KELLY       | KNOTT        |

|         547 | KURT        | EMMONS       |

|         548 | ALLAN       | CORNISH      |

|         549 | NELSON      | CHRISTENSON  |

|         550 | GUY         | BROWNLEE     |

|         551 | CLAYTON     | BARBEE       |

|         552 | HUGH        | WALDROP      |

|         553 | MAX         | PITT         |

|         554 | DWAYNE      | OLVERA       |

|         555 | DWIGHT      | LOMBARDI     |

|         556 | ARMANDO     | GRUBER       |

|         557 | FELIX       | GAFFNEY      |

|         558 | JIMMIE      | EGGLESTON    |

|         559 | EVERETT     | BANDA        |

|         560 | JORDAN      | ARCHULETA    |

|         561 | IAN         | STILL        |

|         562 | WALLACE     | SLONE        |

|         563 | KEN         | PREWITT      |

|         564 | BOB         | PFEIFFER     |

|         565 | JAIME       | NETTLES      |

|         566 | CASEY       | MENA         |

|         567 | ALFREDO     | MCADAMS      |

|         568 | ALBERTO     | HENNING      |

|         569 | DAVE        | GARDINER     |

|         570 | IVAN        | CROMWELL     |

|         571 | JOHNNIE     | CHISHOLM     |

|         572 | SIDNEY      | BURLESON     |

|         573 | BYRON       | BOX          |

|         574 | JULIAN      | VEST         |

|         575 | ISAAC       | OGLESBY      |

|         576 | MORRIS      | MCCARTER     |

|         577 | CLIFTON     | MALCOLM      |

|         578 | WILLARD     | LUMPKIN      |

|         579 | DARYL       | LARUE        |

|         580 | ROSS        | GREY         |

|         581 | VIRGIL      | WOFFORD      |

|         582 | ANDY        | VANHORN      |

|         583 | MARSHALL    | THORN        |

|         584 | SALVADOR    | TEEL         |

|         585 | PERRY       | SWAFFORD     |

|         586 | KIRK        | STCLAIR      |

|         587 | SERGIO      | STANFIELD    |

|         588 | MARION      | OCAMPO       |

|         589 | TRACY       | HERRMANN     |

|         590 | SETH        | HANNON       |

|         591 | KENT        | ARSENAULT    |

|         592 | TERRANCE    | ROUSH        |

|         593 | RENE        | MCALISTER    |

|         594 | EDUARDO     | HIATT        |

|         595 | TERRENCE    | GUNDERSON    |

|         596 | ENRIQUE     | FORSYTHE     |

|         597 | FREDDIE     | DUGGAN       |

|         598 | WADE        | DELVALLE     |

|         599 | AUSTIN      | CINTRON      |

|         600 | Larry       | Cabirria     |

|         601 | Daniel      | Rascon       |

|         602 | Luis        | Meza         |

+-------------+-------------+--------------+

602 rows in set (0.0015 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select customer\_id, first\_name, last\_name from customer

&#x20;                                      -> where customer\_id  in (select distinct customer\_id from payment);

+-------------+-------------+--------------+

| customer\_id | first\_name  | last\_name    |

+-------------+-------------+--------------+

|           1 | MARY        | SMITH        |

|           2 | PATRICIA    | JOHNSON      |

|           3 | LINDA       | WILLIAMS     |

|           4 | BARBARA     | JONES        |

|           5 | ELIZABETH   | BROWN        |

|           6 | JENNIFER    | DAVIS        |

|           7 | MARIA       | MILLER       |

|           8 | SUSAN       | WILSON       |

|           9 | MARGARET    | MOORE        |

|          10 | DOROTHY     | TAYLOR       |

|          11 | LISA        | ANDERSON     |

|          12 | NANCY       | THOMAS       |

|          13 | KAREN       | JACKSON      |

|          14 | BETTY       | WHITE        |

|          15 | HELEN       | HARRIS       |

|          16 | SANDRA      | MARTIN       |

|          17 | DONNA       | THOMPSON     |

|          18 | CAROL       | GARCIA       |

|          19 | RUTH        | MARTINEZ     |

|          20 | SHARON      | ROBINSON     |

|          21 | MICHELLE    | CLARK        |

|          22 | LAURA       | RODRIGUEZ    |

|          23 | SARAH       | LEWIS        |

|          24 | KIMBERLY    | LEE          |

|          25 | DEBORAH     | WALKER       |

|          26 | JESSICA     | HALL         |

|          27 | SHIRLEY     | ALLEN        |

|          28 | CYNTHIA     | YOUNG        |

|          29 | ANGELA      | HERNANDEZ    |

|          30 | MELISSA     | KING         |

|          31 | BRENDA      | WRIGHT       |

|          32 | AMY         | LOPEZ        |

|          33 | ANNA        | HILL         |

|          34 | REBECCA     | SCOTT        |

|          35 | VIRGINIA    | GREEN        |

|          36 | KATHLEEN    | ADAMS        |

|          37 | PAMELA      | BAKER        |

|          38 | MARTHA      | GONZALEZ     |

|          39 | DEBRA       | NELSON       |

|          40 | AMANDA      | CARTER       |

|          41 | STEPHANIE   | MITCHELL     |

|          42 | CAROLYN     | PEREZ        |

|          43 | CHRISTINE   | ROBERTS      |

|          44 | MARIE       | TURNER       |

|          45 | JANET       | PHILLIPS     |

|          46 | CATHERINE   | CAMPBELL     |

|          47 | FRANCES     | PARKER       |

|          48 | ANN         | EVANS        |

|          49 | JOYCE       | EDWARDS      |

|          50 | DIANE       | COLLINS      |

|          51 | ALICE       | STEWART      |

|          52 | JULIE       | SANCHEZ      |

|          53 | HEATHER     | MORRIS       |

|          54 | TERESA      | ROGERS       |

|          55 | DORIS       | REED         |

|          56 | GLORIA      | COOK         |

|          57 | EVELYN      | MORGAN       |

|          58 | JEAN        | BELL         |

|          59 | CHERYL      | MURPHY       |

|          60 | MILDRED     | BAILEY       |

|          61 | KATHERINE   | RIVERA       |

|          62 | JOAN        | COOPER       |

|          63 | ASHLEY      | RICHARDSON   |

|          64 | JUDITH      | COX          |

|          65 | ROSE        | HOWARD       |

|          66 | JANICE      | WARD         |

|          67 | KELLY       | TORRES       |

|          68 | NICOLE      | PETERSON     |

|          69 | JUDY        | GRAY         |

|          70 | CHRISTINA   | RAMIREZ      |

|          71 | KATHY       | JAMES        |

|          72 | THERESA     | WATSON       |

|          73 | BEVERLY     | BROOKS       |

|          74 | DENISE      | KELLY        |

|          75 | TAMMY       | SANDERS      |

|          76 | IRENE       | PRICE        |

|          77 | JANE        | BENNETT      |

|          78 | LORI        | WOOD         |

|          79 | RACHEL      | BARNES       |

|          80 | MARILYN     | ROSS         |

|          81 | ANDREA      | HENDERSON    |

|          82 | KATHRYN     | COLEMAN      |

|          83 | LOUISE      | JENKINS      |

|          84 | SARA        | PERRY        |

|          85 | ANNE        | POWELL       |

|          86 | JACQUELINE  | LONG         |

|          87 | WANDA       | PATTERSON    |

|          88 | BONNIE      | HUGHES       |

|          89 | JULIA       | FLORES       |

|          90 | RUBY        | WASHINGTON   |

|          91 | LOIS        | BUTLER       |

|          92 | TINA        | SIMMONS      |

|          93 | PHYLLIS     | FOSTER       |

|          94 | NORMA       | GONZALES     |

|          95 | PAULA       | BRYANT       |

|          96 | DIANA       | ALEXANDER    |

|          97 | ANNIE       | RUSSELL      |

|          98 | LILLIAN     | GRIFFIN      |

|          99 | EMILY       | DIAZ         |

|         100 | ROBIN       | HAYES        |

|         101 | PEGGY       | MYERS        |

|         102 | CRYSTAL     | FORD         |

|         103 | GLADYS      | HAMILTON     |

|         104 | RITA        | GRAHAM       |

|         105 | DAWN        | SULLIVAN     |

|         106 | CONNIE      | WALLACE      |

|         107 | FLORENCE    | WOODS        |

|         108 | TRACY       | COLE         |

|         109 | EDNA        | WEST         |

|         110 | TIFFANY     | JORDAN       |

|         111 | CARMEN      | OWENS        |

|         112 | ROSA        | REYNOLDS     |

|         113 | CINDY       | FISHER       |

|         114 | GRACE       | ELLIS        |

|         115 | WENDY       | HARRISON     |

|         116 | VICTORIA    | GIBSON       |

|         117 | EDITH       | MCDONALD     |

|         118 | KIM         | CRUZ         |

|         119 | SHERRY      | MARSHALL     |

|         120 | SYLVIA      | ORTIZ        |

|         121 | JOSEPHINE   | GOMEZ        |

|         122 | THELMA      | MURRAY       |

|         123 | SHANNON     | FREEMAN      |

|         124 | SHEILA      | WELLS        |

|         125 | ETHEL       | WEBB         |

|         126 | ELLEN       | SIMPSON      |

|         127 | ELAINE      | STEVENS      |

|         128 | MARJORIE    | TUCKER       |

|         129 | CARRIE      | PORTER       |

|         130 | CHARLOTTE   | HUNTER       |

|         131 | MONICA      | HICKS        |

|         132 | ESTHER      | CRAWFORD     |

|         133 | PAULINE     | HENRY        |

|         134 | EMMA        | BOYD         |

|         135 | JUANITA     | MASON        |

|         136 | ANITA       | MORALES      |

|         137 | RHONDA      | KENNEDY      |

|         138 | HAZEL       | WARREN       |

|         139 | AMBER       | DIXON        |

|         140 | EVA         | RAMOS        |

|         141 | DEBBIE      | REYES        |

|         142 | APRIL       | BURNS        |

|         143 | LESLIE      | GORDON       |

|         144 | CLARA       | SHAW         |

|         145 | LUCILLE     | HOLMES       |

|         146 | JAMIE       | RICE         |

|         147 | JOANNE      | ROBERTSON    |

|         148 | ELEANOR     | HUNT         |

|         149 | VALERIE     | BLACK        |

|         150 | DANIELLE    | DANIELS      |

|         151 | MEGAN       | PALMER       |

|         152 | ALICIA      | MILLS        |

|         153 | SUZANNE     | NICHOLS      |

|         154 | MICHELE     | GRANT        |

|         155 | GAIL        | KNIGHT       |

|         156 | BERTHA      | FERGUSON     |

|         157 | DARLENE     | ROSE         |

|         158 | VERONICA    | STONE        |

|         159 | JILL        | HAWKINS      |

|         160 | ERIN        | DUNN         |

|         161 | GERALDINE   | PERKINS      |

|         162 | LAUREN      | HUDSON       |

|         163 | CATHY       | SPENCER      |

|         164 | JOANN       | GARDNER      |

|         165 | LORRAINE    | STEPHENS     |

|         166 | LYNN        | PAYNE        |

|         167 | SALLY       | PIERCE       |

|         168 | REGINA      | BERRY        |

|         169 | ERICA       | MATTHEWS     |

|         170 | BEATRICE    | ARNOLD       |

|         171 | DOLORES     | WAGNER       |

|         172 | BERNICE     | WILLIS       |

|         173 | AUDREY      | RAY          |

|         174 | YVONNE      | WATKINS      |

|         175 | ANNETTE     | OLSON        |

|         176 | JUNE        | CARROLL      |

|         177 | SAMANTHA    | DUNCAN       |

|         178 | MARION      | SNYDER       |

|         179 | DANA        | HART         |

|         180 | STACY       | CUNNINGHAM   |

|         181 | ANA         | BRADLEY      |

|         182 | RENEE       | LANE         |

|         183 | IDA         | ANDREWS      |

|         184 | VIVIAN      | RUIZ         |

|         185 | ROBERTA     | HARPER       |

|         186 | HOLLY       | FOX          |

|         187 | BRITTANY    | RILEY        |

|         188 | MELANIE     | ARMSTRONG    |

|         189 | LORETTA     | CARPENTER    |

|         190 | YOLANDA     | WEAVER       |

|         191 | JEANETTE    | GREENE       |

|         192 | LAURIE      | LAWRENCE     |

|         193 | KATIE       | ELLIOTT      |

|         194 | KRISTEN     | CHAVEZ       |

|         195 | VANESSA     | SIMS         |

|         196 | ALMA        | AUSTIN       |

|         197 | SUE         | PETERS       |

|         198 | ELSIE       | KELLEY       |

|         199 | BETH        | FRANKLIN     |

|         200 | JEANNE      | LAWSON       |

|         201 | VICKI       | FIELDS       |

|         202 | CARLA       | GUTIERREZ    |

|         203 | TARA        | RYAN         |

|         204 | ROSEMARY    | SCHMIDT      |

|         205 | EILEEN      | CARR         |

|         206 | TERRI       | VASQUEZ      |

|         207 | GERTRUDE    | CASTILLO     |

|         208 | LUCY        | WHEELER      |

|         209 | TONYA       | CHAPMAN      |

|         210 | ELLA        | OLIVER       |

|         211 | STACEY      | MONTGOMERY   |

|         212 | WILMA       | RICHARDS     |

|         213 | GINA        | WILLIAMSON   |

|         214 | KRISTIN     | JOHNSTON     |

|         215 | JESSIE      | BANKS        |

|         216 | NATALIE     | MEYER        |

|         217 | AGNES       | BISHOP       |

|         218 | VERA        | MCCOY        |

|         219 | WILLIE      | HOWELL       |

|         220 | CHARLENE    | ALVAREZ      |

|         221 | BESSIE      | MORRISON     |

|         222 | DELORES     | HANSEN       |

|         223 | MELINDA     | FERNANDEZ    |

|         224 | PEARL       | GARZA        |

|         225 | ARLENE      | HARVEY       |

|         226 | MAUREEN     | LITTLE       |

|         227 | COLLEEN     | BURTON       |

|         228 | ALLISON     | STANLEY      |

|         229 | TAMARA      | NGUYEN       |

|         230 | JOY         | GEORGE       |

|         231 | GEORGIA     | JACOBS       |

|         232 | CONSTANCE   | REID         |

|         233 | LILLIE      | KIM          |

|         234 | CLAUDIA     | FULLER       |

|         235 | JACKIE      | LYNCH        |

|         236 | MARCIA      | DEAN         |

|         237 | TANYA       | GILBERT      |

|         238 | NELLIE      | GARRETT      |

|         239 | MINNIE      | ROMERO       |

|         240 | MARLENE     | WELCH        |

|         241 | HEIDI       | LARSON       |

|         242 | GLENDA      | FRAZIER      |

|         243 | LYDIA       | BURKE        |

|         244 | VIOLA       | HANSON       |

|         245 | COURTNEY    | DAY          |

|         246 | MARIAN      | MENDOZA      |

|         247 | STELLA      | MORENO       |

|         248 | CAROLINE    | BOWMAN       |

|         249 | DORA        | MEDINA       |

|         250 | JO          | FOWLER       |

|         251 | VICKIE      | BREWER       |

|         252 | MATTIE      | HOFFMAN      |

|         253 | TERRY       | CARLSON      |

|         254 | MAXINE      | SILVA        |

|         255 | IRMA        | PEARSON      |

|         256 | MABEL       | HOLLAND      |

|         257 | MARSHA      | DOUGLAS      |

|         258 | MYRTLE      | FLEMING      |

|         259 | LENA        | JENSEN       |

|         260 | CHRISTY     | VARGAS       |

|         261 | DEANNA      | BYRD         |

|         262 | PATSY       | DAVIDSON     |

|         263 | HILDA       | HOPKINS      |

|         264 | GWENDOLYN   | MAY          |

|         265 | JENNIE      | TERRY        |

|         266 | NORA        | HERRERA      |

|         267 | MARGIE      | WADE         |

|         268 | NINA        | SOTO         |

|         269 | CASSANDRA   | WALTERS      |

|         270 | LEAH        | CURTIS       |

|         271 | PENNY       | NEAL         |

|         272 | KAY         | CALDWELL     |

|         273 | PRISCILLA   | LOWE         |

|         274 | NAOMI       | JENNINGS     |

|         275 | CAROLE      | BARNETT      |

|         276 | BRANDY      | GRAVES       |

|         277 | OLGA        | JIMENEZ      |

|         278 | BILLIE      | HORTON       |

|         279 | DIANNE      | SHELTON      |

|         280 | TRACEY      | BARRETT      |

|         281 | LEONA       | OBRIEN       |

|         282 | JENNY       | CASTRO       |

|         283 | FELICIA     | SUTTON       |

|         284 | SONIA       | GREGORY      |

|         285 | MIRIAM      | MCKINNEY     |

|         286 | VELMA       | LUCAS        |

|         287 | BECKY       | MILES        |

|         288 | BOBBIE      | CRAIG        |

|         289 | VIOLET      | RODRIQUEZ    |

|         290 | KRISTINA    | CHAMBERS     |

|         291 | TONI        | HOLT         |

|         292 | MISTY       | LAMBERT      |

|         293 | MAE         | FLETCHER     |

|         294 | SHELLY      | WATTS        |

|         295 | DAISY       | BATES        |

|         296 | RAMONA      | HALE         |

|         297 | SHERRI      | RHODES       |

|         298 | ERIKA       | PENA         |

|         299 | JAMES       | GANNON       |

|         300 | JOHN        | FARNSWORTH   |

|         301 | ROBERT      | BAUGHMAN     |

|         302 | MICHAEL     | SILVERMAN    |

|         303 | WILLIAM     | SATTERFIELD  |

|         304 | DAVID       | ROYAL        |

|         305 | RICHARD     | MCCRARY      |

|         306 | CHARLES     | KOWALSKI     |

|         307 | JOSEPH      | JOY          |

|         308 | THOMAS      | GRIGSBY      |

|         309 | CHRISTOPHER | GRECO        |

|         310 | DANIEL      | CABRAL       |

|         311 | PAUL        | TROUT        |

|         312 | MARK        | RINEHART     |

|         313 | DONALD      | MAHON        |

|         314 | GEORGE      | LINTON       |

|         315 | KENNETH     | GOODEN       |

|         316 | STEVEN      | CURLEY       |

|         317 | EDWARD      | BAUGH        |

|         318 | BRIAN       | WYMAN        |

|         319 | RONALD      | WEINER       |

|         320 | ANTHONY     | SCHWAB       |

|         321 | KEVIN       | SCHULER      |

|         322 | JASON       | MORRISSEY    |

|         323 | MATTHEW     | MAHAN        |

|         324 | GARY        | COY          |

|         325 | TIMOTHY     | BUNN         |

|         326 | JOSE        | ANDREW       |

|         327 | LARRY       | THRASHER     |

|         328 | JEFFREY     | SPEAR        |

|         329 | FRANK       | WAGGONER     |

|         330 | SCOTT       | SHELLEY      |

|         331 | ERIC        | ROBERT       |

|         332 | STEPHEN     | QUALLS       |

|         333 | ANDREW      | PURDY        |

|         334 | RAYMOND     | MCWHORTER    |

|         335 | GREGORY     | MAULDIN      |

|         336 | JOSHUA      | MARK         |

|         337 | JERRY       | JORDON       |

|         338 | DENNIS      | GILMAN       |

|         339 | WALTER      | PERRYMAN     |

|         340 | PATRICK     | NEWSOM       |

|         341 | PETER       | MENARD       |

|         342 | HAROLD      | MARTINO      |

|         343 | DOUGLAS     | GRAF         |

|         344 | HENRY       | BILLINGSLEY  |

|         345 | CARL        | ARTIS        |

|         346 | ARTHUR      | SIMPKINS     |

|         347 | RYAN        | SALISBURY    |

|         348 | ROGER       | QUINTANILLA  |

|         349 | JOE         | GILLILAND    |

|         350 | JUAN        | FRALEY       |

|         351 | JACK        | FOUST        |

|         352 | ALBERT      | CROUSE       |

|         353 | JONATHAN    | SCARBOROUGH  |

|         354 | JUSTIN      | NGO          |

|         355 | TERRY       | GRISSOM      |

|         356 | GERALD      | FULTZ        |

|         357 | KEITH       | RICO         |

|         358 | SAMUEL      | MARLOW       |

|         359 | WILLIE      | MARKHAM      |

|         360 | RALPH       | MADRIGAL     |

|         361 | LAWRENCE    | LAWTON       |

|         362 | NICHOLAS    | BARFIELD     |

|         363 | ROY         | WHITING      |

|         364 | BENJAMIN    | VARNEY       |

|         365 | BRUCE       | SCHWARZ      |

|         366 | BRANDON     | HUEY         |

|         367 | ADAM        | GOOCH        |

|         368 | HARRY       | ARCE         |

|         369 | FRED        | WHEAT        |

|         370 | WAYNE       | TRUONG       |

|         371 | BILLY       | POULIN       |

|         372 | STEVE       | MACKENZIE    |

|         373 | LOUIS       | LEONE        |

|         374 | JEREMY      | HURTADO      |

|         375 | AARON       | SELBY        |

|         376 | RANDY       | GAITHER      |

|         377 | HOWARD      | FORTNER      |

|         378 | EUGENE      | CULPEPPER    |

|         379 | CARLOS      | COUGHLIN     |

|         380 | RUSSELL     | BRINSON      |

|         381 | BOBBY       | BOUDREAU     |

|         382 | VICTOR      | BARKLEY      |

|         383 | MARTIN      | BALES        |

|         384 | ERNEST      | STEPP        |

|         385 | PHILLIP     | HOLM         |

|         386 | TODD        | TAN          |

|         387 | JESSE       | SCHILLING    |

|         388 | CRAIG       | MORRELL      |

|         389 | ALAN        | KAHN         |

|         390 | SHAWN       | HEATON       |

|         391 | CLARENCE    | GAMEZ        |

|         392 | SEAN        | DOUGLASS     |

|         393 | PHILIP      | CAUSEY       |

|         394 | CHRIS       | BROTHERS     |

|         395 | JOHNNY      | TURPIN       |

|         396 | EARL        | SHANKS       |

|         397 | JIMMY       | SCHRADER     |

|         398 | ANTONIO     | MEEK         |

|         399 | DANNY       | ISOM         |

|         400 | BRYAN       | HARDISON     |

|         401 | TONY        | CARRANZA     |

|         402 | LUIS        | YANEZ        |

|         403 | MIKE        | WAY          |

|         404 | STANLEY     | SCROGGINS    |

|         405 | LEONARD     | SCHOFIELD    |

|         406 | NATHAN      | RUNYON       |

|         407 | DALE        | RATCLIFF     |

|         408 | MANUEL      | MURRELL      |

|         409 | RODNEY      | MOELLER      |

|         410 | CURTIS      | IRBY         |

|         411 | NORMAN      | CURRIER      |

|         412 | ALLEN       | BUTTERFIELD  |

|         413 | MARVIN      | YEE          |

|         414 | VINCENT     | RALSTON      |

|         415 | GLENN       | PULLEN       |

|         416 | JEFFERY     | PINSON       |

|         417 | TRAVIS      | ESTEP        |

|         418 | JEFF        | EAST         |

|         419 | CHAD        | CARBONE      |

|         420 | JACOB       | LANCE        |

|         421 | LEE         | HAWKS        |

|         422 | MELVIN      | ELLINGTON    |

|         423 | ALFRED      | CASILLAS     |

|         424 | KYLE        | SPURLOCK     |

|         425 | FRANCIS     | SIKES        |

|         426 | BRADLEY     | MOTLEY       |

|         427 | JESUS       | MCCARTNEY    |

|         428 | HERBERT     | KRUGER       |

|         429 | FREDERICK   | ISBELL       |

|         430 | RAY         | HOULE        |

|         431 | JOEL        | FRANCISCO    |

|         432 | EDWIN       | BURK         |

|         433 | DON         | BONE         |

|         434 | EDDIE       | TOMLIN       |

|         435 | RICKY       | SHELBY       |

|         436 | TROY        | QUIGLEY      |

|         437 | RANDALL     | NEUMANN      |

|         438 | BARRY       | LOVELACE     |

|         439 | ALEXANDER   | FENNELL      |

|         440 | BERNARD     | COLBY        |

|         441 | MARIO       | CHEATHAM     |

|         442 | LEROY       | BUSTAMANTE   |

|         443 | FRANCISCO   | SKIDMORE     |

|         444 | MARCUS      | HIDALGO      |

|         445 | MICHEAL     | FORMAN       |

|         446 | THEODORE    | CULP         |

|         447 | CLIFFORD    | BOWENS       |

|         448 | MIGUEL      | BETANCOURT   |

|         449 | OSCAR       | AQUINO       |

|         450 | JAY         | ROBB         |

|         451 | JIM         | REA          |

|         452 | TOM         | MILNER       |

|         453 | CALVIN      | MARTEL       |

|         454 | ALEX        | GRESHAM      |

|         455 | JON         | WILES        |

|         456 | RONNIE      | RICKETTS     |

|         457 | BILL        | GAVIN        |

|         458 | LLOYD       | DOWD         |

|         459 | TOMMY       | COLLAZO      |

|         460 | LEON        | BOSTIC       |

|         461 | DEREK       | BLAKELY      |

|         462 | WARREN      | SHERROD      |

|         463 | DARRELL     | POWER        |

|         464 | JEROME      | KENYON       |

|         465 | FLOYD       | GANDY        |

|         466 | LEO         | EBERT        |

|         467 | ALVIN       | DELOACH      |

|         468 | TIM         | CARY         |

|         469 | WESLEY      | BULL         |

|         470 | GORDON      | ALLARD       |

|         471 | DEAN        | SAUER        |

|         472 | GREG        | ROBINS       |

|         473 | JORGE       | OLIVARES     |

|         474 | DUSTIN      | GILLETTE     |

|         475 | PEDRO       | CHESTNUT     |

|         476 | DERRICK     | BOURQUE      |

|         477 | DAN         | PAINE        |

|         478 | LEWIS       | LYMAN        |

|         479 | ZACHARY     | HITE         |

|         480 | COREY       | HAUSER       |

|         481 | HERMAN      | DEVORE       |

|         482 | MAURICE     | CRAWLEY      |

|         483 | VERNON      | CHAPA        |

|         484 | ROBERTO     | VU           |

|         485 | CLYDE       | TOBIAS       |

|         486 | GLEN        | TALBERT      |

|         487 | HECTOR      | POINDEXTER   |

|         488 | SHANE       | MILLARD      |

|         489 | RICARDO     | MEADOR       |

|         490 | SAM         | MCDUFFIE     |

|         491 | RICK        | MATTOX       |

|         492 | LESTER      | KRAUS        |

|         493 | BRENT       | HARKINS      |

|         494 | RAMON       | CHOATE       |

|         495 | CHARLIE     | BESS         |

|         496 | TYLER       | WREN         |

|         497 | GILBERT     | SLEDGE       |

|         498 | GENE        | SANBORN      |

|         499 | MARC        | OUTLAW       |

|         500 | REGINALD    | KINDER       |

|         501 | RUBEN       | GEARY        |

|         502 | BRETT       | CORNWELL     |

|         503 | ANGEL       | BARCLAY      |

|         504 | NATHANIEL   | ADAM         |

|         505 | RAFAEL      | ABNEY        |

|         506 | LESLIE      | SEWARD       |

|         507 | EDGAR       | RHOADS       |

|         508 | MILTON      | HOWLAND      |

|         509 | RAUL        | FORTIER      |

|         510 | BEN         | EASTER       |

|         511 | CHESTER     | BENNER       |

|         512 | CECIL       | VINES        |

|         513 | DUANE       | TUBBS        |

|         514 | FRANKLIN    | TROUTMAN     |

|         515 | ANDRE       | RAPP         |

|         516 | ELMER       | NOE          |

|         517 | BRAD        | MCCURDY      |

|         518 | GABRIEL     | HARDER       |

|         519 | RON         | DELUCA       |

|         520 | MITCHELL    | WESTMORELAND |

|         521 | ROLAND      | SOUTH        |

|         522 | ARNOLD      | HAVENS       |

|         523 | HARVEY      | GUAJARDO     |

|         524 | JARED       | ELY          |

|         525 | ADRIAN      | CLARY        |

|         526 | KARL        | SEAL         |

|         527 | CORY        | MEEHAN       |

|         528 | CLAUDE      | HERZOG       |

|         529 | ERIK        | GUILLEN      |

|         530 | DARRYL      | ASHCRAFT     |

|         531 | JAMIE       | WAUGH        |

|         532 | NEIL        | RENNER       |

|         533 | JESSIE      | MILAM        |

|         534 | CHRISTIAN   | JUNG         |

|         535 | JAVIER      | ELROD        |

|         536 | FERNANDO    | CHURCHILL    |

|         537 | CLINTON     | BUFORD       |

|         538 | TED         | BREAUX       |

|         539 | MATHEW      | BOLIN        |

|         540 | TYRONE      | ASHER        |

|         541 | DARREN      | WINDHAM      |

|         542 | LONNIE      | TIRADO       |

|         543 | LANCE       | PEMBERTON    |

|         544 | CODY        | NOLEN        |

|         545 | JULIO       | NOLAND       |

|         546 | KELLY       | KNOTT        |

|         547 | KURT        | EMMONS       |

|         548 | ALLAN       | CORNISH      |

|         549 | NELSON      | CHRISTENSON  |

|         550 | GUY         | BROWNLEE     |

|         551 | CLAYTON     | BARBEE       |

|         552 | HUGH        | WALDROP      |

|         553 | MAX         | PITT         |

|         554 | DWAYNE      | OLVERA       |

|         555 | DWIGHT      | LOMBARDI     |

|         556 | ARMANDO     | GRUBER       |

|         557 | FELIX       | GAFFNEY      |

|         558 | JIMMIE      | EGGLESTON    |

|         559 | EVERETT     | BANDA        |

|         560 | JORDAN      | ARCHULETA    |

|         561 | IAN         | STILL        |

|         562 | WALLACE     | SLONE        |

|         563 | KEN         | PREWITT      |

|         564 | BOB         | PFEIFFER     |

|         565 | JAIME       | NETTLES      |

|         566 | CASEY       | MENA         |

|         567 | ALFREDO     | MCADAMS      |

|         568 | ALBERTO     | HENNING      |

|         569 | DAVE        | GARDINER     |

|         570 | IVAN        | CROMWELL     |

|         571 | JOHNNIE     | CHISHOLM     |

|         572 | SIDNEY      | BURLESON     |

|         573 | BYRON       | BOX          |

|         574 | JULIAN      | VEST         |

|         575 | ISAAC       | OGLESBY      |

|         576 | MORRIS      | MCCARTER     |

|         577 | CLIFTON     | MALCOLM      |

|         578 | WILLARD     | LUMPKIN      |

|         579 | DARYL       | LARUE        |

|         580 | ROSS        | GREY         |

|         581 | VIRGIL      | WOFFORD      |

|         582 | ANDY        | VANHORN      |

|         583 | MARSHALL    | THORN        |

|         584 | SALVADOR    | TEEL         |

|         585 | PERRY       | SWAFFORD     |

|         586 | KIRK        | STCLAIR      |

|         587 | SERGIO      | STANFIELD    |

|         588 | MARION      | OCAMPO       |

|         589 | TRACY       | HERRMANN     |

|         590 | SETH        | HANNON       |

|         591 | KENT        | ARSENAULT    |

|         592 | TERRANCE    | ROUSH        |

|         593 | RENE        | MCALISTER    |

|         594 | EDUARDO     | HIATT        |

|         595 | TERRENCE    | GUNDERSON    |

|         596 | ENRIQUE     | FORSYTHE     |

|         597 | FREDDIE     | DUGGAN       |

|         598 | WADE        | DELVALLE     |

|         599 | AUSTIN      | CINTRON      |

+-------------+-------------+--------------+

599 rows in set (0.0340 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select customer\_id, first\_name, last\_name from customer where customer\_id not in (select distinct customer\_id from payment);

+-------------+------------+-----------+

| customer\_id | first\_name | last\_name |

+-------------+------------+-----------+

|         600 | Larry      | Cabirria  |

|         601 | Daniel     | Rascon    |

|         602 | Luis       | Meza      |

+-------------+------------+-----------+

3 rows in set (0.0043 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL >

