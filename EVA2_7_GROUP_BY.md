**EVA2\_7\_GROUP\_BY**



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

&#x20;MySQL  localhost:3306 ssl  JS > \\sql

Switching to SQL mode... Commands end with ;

Fetching global names for auto-completion... Press ^C to stop.

&#x20;MySQL  localhost:3306 ssl  SQL > SET SESSION default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0003 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > set global default\_storage\_engine = 'InnoDB';

Query OK, 0 rows affected (0.0005 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > SHOW VARIABLES LIKE 'default\_storage\_engine';

+------------------------+--------+

| Variable\_name          | Value  |

+------------------------+--------+

| default\_storage\_engine | InnoDB |

+------------------------+--------+

1 row in set (0.0028 sec)

&#x20;MySQL  localhost:3306 ssl  SQL > use sakila;

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

23 rows in set (0.0025 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > desc inventory;

+--------------+--------------------+------+-----+-------------------+-----------------------------------------------+

| Field        | Type               | Null | Key | Default           | Extra                                         |

+--------------+--------------------+------+-----+-------------------+-----------------------------------------------+

| inventory\_id | mediumint unsigned | NO   | PRI | NULL              | auto\_increment                                |

| film\_id      | smallint unsigned  | NO   | MUL | NULL              |                                               |

| store\_id     | tinyint unsigned   | NO   | MUL | NULL              |                                               |

| last\_update  | timestamp          | NO   |     | CURRENT\_TIMESTAMP | DEFAULT\_GENERATED on update CURRENT\_TIMESTAMP |

+--------------+--------------------+------+-----+-------------------+-----------------------------------------------+

4 rows in set (0.0042 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > desc film;

+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+

| Field                | Type                                                                | Null | Key | Default           | Extra                                         |

+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+

| film\_id              | smallint unsigned                                                   | NO   | PRI | NULL              | auto\_increment                                |

| title                | varchar(255)                                                        | NO   | MUL | NULL              |                                               |

| description          | text                                                                | YES  |     | NULL              |                                               |

| release\_year         | year                                                                | YES  |     | NULL              |                                               |

| language\_id          | tinyint unsigned                                                    | NO   | MUL | NULL              |                                               |

| original\_language\_id | tinyint unsigned                                                    | YES  | MUL | NULL              |                                               |

| rental\_duration      | tinyint unsigned                                                    | NO   |     | 3                 |                                               |

| rental\_rate          | decimal(4,2)                                                        | NO   |     | 4.99              |                                               |

| length               | smallint unsigned                                                   | YES  |     | NULL              |                                               |

| replacement\_cost     | decimal(5,2)                                                        | NO   |     | 19.99             |                                               |

| rating               | enum('G','PG','PG-13','R','NC-17')                                  | YES  |     | G                 |                                               |

| special\_features     | set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes') | YES  |     | NULL              |                                               |

| last\_update          | timestamp                                                           | NO   |     | CURRENT\_TIMESTAMP | DEFAULT\_GENERATED on update CURRENT\_TIMESTAMP |

+----------------------+---------------------------------------------------------------------+------+-----+-------------------+-----------------------------------------------+

13 rows in set (0.0031 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.film\_id, a.title

&#x20;                                      -> from film a

&#x20;                                      -> inner join inventory b on a.film\_id = b.film\_id

&#x20;                                      -> limit 100;

+---------+---------------------+

| film\_id | title               |

+---------+---------------------+

|       1 | ACADEMY DINOSAUR    |

|       1 | ACADEMY DINOSAUR    |

|       1 | ACADEMY DINOSAUR    |

|       1 | ACADEMY DINOSAUR    |

|       1 | ACADEMY DINOSAUR    |

|       1 | ACADEMY DINOSAUR    |

|       1 | ACADEMY DINOSAUR    |

|       1 | ACADEMY DINOSAUR    |

|       2 | ACE GOLDFINGER      |

|       2 | ACE GOLDFINGER      |

|       2 | ACE GOLDFINGER      |

|       3 | ADAPTATION HOLES    |

|       3 | ADAPTATION HOLES    |

|       3 | ADAPTATION HOLES    |

|       3 | ADAPTATION HOLES    |

|       4 | AFFAIR PREJUDICE    |

|       4 | AFFAIR PREJUDICE    |

|       4 | AFFAIR PREJUDICE    |

|       4 | AFFAIR PREJUDICE    |

|       4 | AFFAIR PREJUDICE    |

|       4 | AFFAIR PREJUDICE    |

|       4 | AFFAIR PREJUDICE    |

|       5 | AFRICAN EGG         |

|       5 | AFRICAN EGG         |

|       5 | AFRICAN EGG         |

|       6 | AGENT TRUMAN        |

|       6 | AGENT TRUMAN        |

|       6 | AGENT TRUMAN        |

|       6 | AGENT TRUMAN        |

|       6 | AGENT TRUMAN        |

|       6 | AGENT TRUMAN        |

|       7 | AIRPLANE SIERRA     |

|       7 | AIRPLANE SIERRA     |

|       7 | AIRPLANE SIERRA     |

|       7 | AIRPLANE SIERRA     |

|       7 | AIRPLANE SIERRA     |

|       8 | AIRPORT POLLOCK     |

|       8 | AIRPORT POLLOCK     |

|       8 | AIRPORT POLLOCK     |

|       8 | AIRPORT POLLOCK     |

|       9 | ALABAMA DEVIL       |

|       9 | ALABAMA DEVIL       |

|       9 | ALABAMA DEVIL       |

|       9 | ALABAMA DEVIL       |

|       9 | ALABAMA DEVIL       |

|      10 | ALADDIN CALENDAR    |

|      10 | ALADDIN CALENDAR    |

|      10 | ALADDIN CALENDAR    |

|      10 | ALADDIN CALENDAR    |

|      10 | ALADDIN CALENDAR    |

|      10 | ALADDIN CALENDAR    |

|      10 | ALADDIN CALENDAR    |

|      11 | ALAMO VIDEOTAPE     |

|      11 | ALAMO VIDEOTAPE     |

|      11 | ALAMO VIDEOTAPE     |

|      11 | ALAMO VIDEOTAPE     |

|      11 | ALAMO VIDEOTAPE     |

|      11 | ALAMO VIDEOTAPE     |

|      11 | ALAMO VIDEOTAPE     |

|      12 | ALASKA PHANTOM      |

|      12 | ALASKA PHANTOM      |

|      12 | ALASKA PHANTOM      |

|      12 | ALASKA PHANTOM      |

|      12 | ALASKA PHANTOM      |

|      12 | ALASKA PHANTOM      |

|      12 | ALASKA PHANTOM      |

|      13 | ALI FOREVER         |

|      13 | ALI FOREVER         |

|      13 | ALI FOREVER         |

|      13 | ALI FOREVER         |

|      15 | ALIEN CENTER        |

|      15 | ALIEN CENTER        |

|      15 | ALIEN CENTER        |

|      15 | ALIEN CENTER        |

|      15 | ALIEN CENTER        |

|      15 | ALIEN CENTER        |

|      16 | ALLEY EVOLUTION     |

|      16 | ALLEY EVOLUTION     |

|      16 | ALLEY EVOLUTION     |

|      16 | ALLEY EVOLUTION     |

|      17 | ALONE TRIP          |

|      17 | ALONE TRIP          |

|      17 | ALONE TRIP          |

|      17 | ALONE TRIP          |

|      17 | ALONE TRIP          |

|      17 | ALONE TRIP          |

|      18 | ALTER VICTORY       |

|      18 | ALTER VICTORY       |

|      18 | ALTER VICTORY       |

|      18 | ALTER VICTORY       |

|      18 | ALTER VICTORY       |

|      18 | ALTER VICTORY       |

|      19 | AMADEUS HOLY        |

|      19 | AMADEUS HOLY        |

|      19 | AMADEUS HOLY        |

|      19 | AMADEUS HOLY        |

|      19 | AMADEUS HOLY        |

|      19 | AMADEUS HOLY        |

|      20 | AMELIE HELLFIGHTERS |

|      20 | AMELIE HELLFIGHTERS |

+---------+---------------------+

100 rows in set (0.0321 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.film\_id, a.title, count(\*) as cantidad

&#x20;                                      -> from film a

&#x20;                                      -> inner join inventory b on a.film\_id = b.film\_id

&#x20;                                      -> group by a.film\_id;

+---------+-----------------------------+----------+

| film\_id | title                       | cantidad |

+---------+-----------------------------+----------+

|       1 | ACADEMY DINOSAUR            |        8 |

|       2 | ACE GOLDFINGER              |        3 |

|       3 | ADAPTATION HOLES            |        4 |

|       4 | AFFAIR PREJUDICE            |        7 |

|       5 | AFRICAN EGG                 |        3 |

|       6 | AGENT TRUMAN                |        6 |

|       7 | AIRPLANE SIERRA             |        5 |

|       8 | AIRPORT POLLOCK             |        4 |

|       9 | ALABAMA DEVIL               |        5 |

|      10 | ALADDIN CALENDAR            |        7 |

|      11 | ALAMO VIDEOTAPE             |        7 |

|      12 | ALASKA PHANTOM              |        7 |

|      13 | ALI FOREVER                 |        4 |

|      15 | ALIEN CENTER                |        6 |

|      16 | ALLEY EVOLUTION             |        4 |

|      17 | ALONE TRIP                  |        6 |

|      18 | ALTER VICTORY               |        6 |

|      19 | AMADEUS HOLY                |        6 |

|      20 | AMELIE HELLFIGHTERS         |        3 |

|      21 | AMERICAN CIRCUS             |        6 |

|      22 | AMISTAD MIDSUMMER           |        7 |

|      23 | ANACONDA CONFESSIONS        |        5 |

|      24 | ANALYZE HOOSIERS            |        4 |

|      25 | ANGELS LIFE                 |        6 |

|      26 | ANNIE IDENTITY              |        5 |

|      27 | ANONYMOUS HUMAN             |        4 |

|      28 | ANTHEM LUKE                 |        3 |

|      29 | ANTITRUST TOMATOES          |        2 |

|      30 | ANYTHING SAVANNAH           |        2 |

|      31 | APACHE DIVINE               |        8 |

|      32 | APOCALYPSE FLAMINGOS        |        2 |

|      34 | ARABIA DOGMA                |        4 |

|      35 | ARACHNOPHOBIA ROLLERCOASTER |        7 |

|      37 | ARIZONA BANG                |        7 |

|      39 | ARMAGEDDON LOST             |        7 |

|      40 | ARMY FLINTSTONES            |        4 |

|      42 | ARTIST COLDBLOODED          |        4 |

|      43 | ATLANTIS CAUSE              |        7 |

|      44 | ATTACKS HATE                |        5 |

|      45 | ATTRACTION NEWTON           |        6 |

|      46 | AUTUMN CROW                 |        3 |

|      47 | BABY HALL                   |        2 |

|      48 | BACKLASH UNDEFEATED         |        4 |

|      49 | BADMAN DAWN                 |        6 |

|      50 | BAKED CLEOPATRA             |        5 |

|      51 | BALLOON HOMEWARD            |        6 |

|      52 | BALLROOM MOCKINGBIRD        |        2 |

|      53 | BANG KWAI                   |        2 |

|      54 | BANGER PINOCCHIO            |        5 |

|      55 | BARBARELLA STREETCAR        |        6 |

|      56 | BAREFOOT MANCHURIAN         |        5 |

|      57 | BASIC EASY                  |        7 |

|      58 | BEACH HEARTBREAKERS         |        4 |

|      59 | BEAR GRACELAND              |        5 |

|      60 | BEAST HUNCHBACK             |        3 |

|      61 | BEAUTY GREASE               |        6 |

|      62 | BED HIGHBALL                |        2 |

|      63 | BEDAZZLED MARRIED           |        4 |

|      64 | BEETHOVEN EXORCIST          |        3 |

|      65 | BEHAVIOR RUNAWAY            |        4 |

|      66 | BENEATH RUSH                |        3 |

|      67 | BERETS AGENT                |        6 |

|      68 | BETRAYED REAR               |        4 |

|      69 | BEVERLY OUTLAW              |        8 |

|      70 | BIKINI BORROWERS            |        4 |

|      71 | BILKO ANONYMOUS             |        4 |

|      72 | BILL OTHERS                 |        6 |

|      73 | BINGO TALENTED              |        8 |

|      74 | BIRCH ANTITRUST             |        5 |

|      75 | BIRD INDEPENDENCE           |        3 |

|      76 | BIRDCAGE CASPER             |        3 |

|      77 | BIRDS PERDITION             |        6 |

|      78 | BLACKOUT PRIVATE            |        7 |

|      79 | BLADE POLISH                |        6 |

|      80 | BLANKET BEVERLY             |        4 |

|      81 | BLINDNESS GUN               |        4 |

|      82 | BLOOD ARGONAUTS             |        2 |

|      83 | BLUES INSTINCT              |        5 |

|      84 | BOILED DARES                |        4 |

|      85 | BONNIE HOLOCAUST            |        4 |

|      86 | BOOGIE AMELIE               |        8 |

|      88 | BORN SPINAL                 |        4 |

|      89 | BORROWERS BEDAZZLED         |        6 |

|      90 | BOULEVARD MOB               |        6 |

|      91 | BOUND CHEAPER               |        8 |

|      92 | BOWFINGER GABLES            |        4 |

|      93 | BRANNIGAN SUNRISE           |        3 |

|      94 | BRAVEHEART HUMAN            |        2 |

|      95 | BREAKFAST GOLDFINGER        |        5 |

|      96 | BREAKING HOME               |        3 |

|      97 | BRIDE INTRIGUE              |        6 |

|      98 | BRIGHT ENCOUNTERS           |        3 |

|      99 | BRINGING HYSTERICAL         |        6 |

|     100 | BROOKLYN DESERT             |        6 |

|     101 | BROTHERHOOD BLANKET         |        6 |

|     102 | BUBBLE GROSSE               |        2 |

|     103 | BUCKET BROTHERHOOD          |        8 |

|     104 | BUGSY SONG                  |        3 |

|     105 | BULL SHAWSHANK              |        5 |

|     106 | BULWORTH COMMANDMENTS       |        2 |

|     107 | BUNCH MINDS                 |        2 |

|     109 | BUTTERFLY CHOCOLAT          |        8 |

|     110 | CABIN FLASH                 |        4 |

|     111 | CADDYSHACK JEDI             |        4 |

|     112 | CALENDAR GUNFIGHT           |        7 |

|     113 | CALIFORNIA BIRDS            |        4 |

|     114 | CAMELOT VACATION            |        7 |

|     115 | CAMPUS REMEMBER             |        7 |

|     116 | CANDIDATE PERDITION         |        6 |

|     117 | CANDLES GRAPES              |        6 |

|     118 | CANYON STOCK                |        6 |

|     119 | CAPER MOTIONS               |        7 |

|     120 | CARIBBEAN LIBERTY           |        3 |

|     121 | CAROL TEXAS                 |        6 |

|     122 | CARRIE BUNCH                |        7 |

|     123 | CASABLANCA SUPER            |        5 |

|     124 | CASPER DRAGONFLY            |        3 |

|     125 | CASSIDY WYOMING             |        2 |

|     126 | CASUALTIES ENCINO           |        3 |

|     127 | CAT CONEHEADS               |        8 |

|     129 | CAUSE DATE                  |        6 |

|     130 | CELEBRITY HORN              |        6 |

|     131 | CENTER DINOSAUR             |        6 |

|     132 | CHAINSAW UPTOWN             |        6 |

|     133 | CHAMBER ITALIAN             |        4 |

|     134 | CHAMPION FLATLINERS         |        3 |

|     135 | CHANCE RESURRECTION         |        7 |

|     136 | CHAPLIN LICENSE             |        3 |

|     137 | CHARADE DUFFEL              |        4 |

|     138 | CHARIOTS CONSPIRACY         |        5 |

|     139 | CHASING FIGHT               |        6 |

|     140 | CHEAPER CLYDE               |        5 |

|     141 | CHICAGO NORTH               |        5 |

|     142 | CHICKEN HELLFIGHTERS        |        5 |

|     143 | CHILL LUCK                  |        7 |

|     145 | CHISUM BEHAVIOR             |        3 |

|     146 | CHITTY LOCK                 |        3 |

|     147 | CHOCOLAT HARRY              |        6 |

|     149 | CHRISTMAS MOONSHINE         |        6 |

|     150 | CIDER DESIRE                |        6 |

|     151 | CINCINATTI WHISPERER        |        4 |

|     152 | CIRCUS YOUTH                |        4 |

|     153 | CITIZEN SHREK               |        4 |

|     154 | CLASH FREDDY                |        7 |

|     155 | CLEOPATRA DEVIL             |        5 |

|     156 | CLERKS ANGELS               |        2 |

|     157 | CLOCKWORK PARADISE          |        3 |

|     158 | CLONES PINOCCHIO            |        5 |

|     159 | CLOSER BANG                 |        7 |

|     160 | CLUB GRAFFITI               |        5 |

|     161 | CLUE GRAIL                  |        2 |

|     162 | CLUELESS BUCKET             |        7 |

|     163 | CLYDE THEORY                |        3 |

|     164 | COAST RAINBOW               |        5 |

|     165 | COLDBLOODED DARLING         |        5 |

|     166 | COLOR PHILADELPHIA          |        6 |

|     167 | COMA HEAD                   |        7 |

|     168 | COMANCHEROS ENEMY           |        2 |

|     169 | COMFORTS RUSH               |        4 |

|     170 | COMMAND DARLING             |        6 |

|     172 | CONEHEADS SMOOCHY           |        7 |

|     173 | CONFESSIONS MAGUIRE         |        5 |

|     174 | CONFIDENTIAL INTERVIEW      |        8 |

|     175 | CONFUSED CANDLES            |        5 |

|     176 | CONGENIALITY QUEST          |        6 |

|     177 | CONNECTICUT TRAMP           |        3 |

|     178 | CONNECTION MICROCOSMOS      |        2 |

|     179 | CONQUERER NUTS              |        4 |

|     180 | CONSPIRACY SPIRIT           |        2 |

|     181 | CONTACT ANONYMOUS           |        7 |

|     182 | CONTROL ANTHEM              |        2 |

|     183 | CONVERSATION DOWNHILL       |        6 |

|     184 | CORE SUIT                   |        5 |

|     185 | COWBOY DOOM                 |        2 |

|     186 | CRAFT OUTFIELD              |        4 |

|     187 | CRANES RESERVOIR            |        3 |

|     188 | CRAZY HOME                  |        3 |

|     189 | CREATURES SHAKESPEARE       |        6 |

|     190 | CREEPERS KANE               |        4 |

|     191 | CROOKED FROGMEN             |        6 |

|     193 | CROSSROADS CASUALTIES       |        8 |

|     194 | CROW GREASE                 |        4 |

|     196 | CRUELTY UNFORGIVEN          |        2 |

|     197 | CRUSADE HONEY               |        2 |

|     199 | CUPBOARD SINNERS            |        8 |

|     200 | CURTAIN VIDEOTAPE           |        8 |

|     201 | CYCLONE FAMILY              |        4 |

|     202 | DADDY PITTSBURGH            |        3 |

|     203 | DAISY MENAGERIE             |        4 |

|     204 | DALMATIONS SWEDEN           |        6 |

|     205 | DANCES NONE                 |        4 |

|     206 | DANCING FEVER               |        8 |

|     207 | DANGEROUS UPTOWN            |        4 |

|     208 | DARES PLUTO                 |        3 |

|     209 | DARKNESS WAR                |        4 |

|     210 | DARKO DORADO                |        3 |

|     211 | DARLING BREAKING            |        2 |

|     212 | DARN FORRESTER              |        5 |

|     213 | DATE SPEED                  |        4 |

|     214 | DAUGHTER MADIGAN            |        4 |

|     215 | DAWN POND                   |        6 |

|     216 | DAY UNFAITHFUL              |        5 |

|     218 | DECEIVER BETRAYED           |        7 |

|     219 | DEEP CRUSADE                |        4 |

|     220 | DEER VIRGINIAN              |        8 |

|     222 | DESERT POSEIDON             |        6 |

|     223 | DESIRE ALIEN                |        2 |

|     224 | DESPERATE TRAINSPOTTING     |        2 |

|     225 | DESTINATION JERK            |        3 |

|     226 | DESTINY SATURDAY            |        5 |

|     227 | DETAILS PACKER              |        5 |

|     228 | DETECTIVE VISION            |        7 |

|     229 | DEVIL DESIRE                |        4 |

|     230 | DIARY PANIC                 |        2 |

|     231 | DINOSAUR SECRETARY          |        8 |

|     232 | DIRTY ACE                   |        5 |

|     233 | DISCIPLE MOTHER             |        6 |

|     234 | DISTURBING SCARFACE         |        7 |

|     235 | DIVIDE MONSTER              |        6 |

|     236 | DIVINE RESURRECTION         |        4 |

|     237 | DIVORCE SHINING             |        2 |

|     238 | DOCTOR GRAIL                |        2 |

|     239 | DOGMA FAMILY                |        8 |

|     240 | DOLLS RAGE                  |        3 |

|     241 | DONNIE ALLEY                |        4 |

|     242 | DOOM DANCING                |        5 |

|     243 | DOORS PRESIDENT             |        6 |

|     244 | DORADO NOTTING              |        7 |

|     245 | DOUBLE WRATH                |        7 |

|     246 | DOUBTFIRE LABYRINTH         |        3 |

|     247 | DOWNHILL ENOUGH             |        7 |

|     248 | DOZEN LION                  |        2 |

|     249 | DRACULA CRYSTAL             |        6 |

|     250 | DRAGON SQUAD                |        4 |

|     251 | DRAGONFLY STRANGERS         |        5 |

|     252 | DREAM PICKUP                |        6 |

|     253 | DRIFTER COMMANDMENTS        |        6 |

|     254 | DRIVER ANNIE                |        5 |

|     255 | DRIVING POLISH              |        6 |

|     256 | DROP WATERFRONT             |        3 |

|     257 | DRUMLINE CYCLONE            |        3 |

|     258 | DRUMS DYNAMITE              |        4 |

|     259 | DUCK RACER                  |        2 |

|     260 | DUDE BLINDNESS              |        4 |

|     261 | DUFFEL APOCALYPSE           |        2 |

|     262 | DUMBO LUST                  |        2 |

|     263 | DURHAM PANKY                |        7 |

|     264 | DWARFS ALTER                |        2 |

|     265 | DYING MAKER                 |        4 |

|     266 | DYNAMITE TARZAN             |        8 |

|     267 | EAGLES PANKY                |        6 |

|     268 | EARLY HOME                  |        2 |

|     269 | EARRING INSTINCT            |        6 |

|     270 | EARTH VISION                |        7 |

|     271 | EASY GLADIATOR              |        5 |

|     272 | EDGE KISSING                |        4 |

|     273 | EFFECT GLADIATOR            |        7 |

|     274 | EGG IGBY                    |        7 |

|     275 | EGYPT TENENBAUMS            |        5 |

|     276 | ELEMENT FREDDY              |        4 |

|     277 | ELEPHANT TROJAN             |        3 |

|     278 | ELF MURDER                  |        2 |

|     279 | ELIZABETH SHANE             |        2 |

|     280 | EMPIRE MALKOVICH            |        6 |

|     281 | ENCINO ELF                  |        6 |

|     282 | ENCOUNTERS CURTAIN          |        6 |

|     283 | ENDING CROWDS               |        3 |

|     284 | ENEMY ODDS                  |        7 |

|     285 | ENGLISH BULWORTH            |        7 |

|     286 | ENOUGH RAGING               |        5 |

|     287 | ENTRAPMENT SATISFACTION     |        4 |

|     288 | ESCAPE METROPOLIS           |        6 |

|     289 | EVE RESURRECTION            |        2 |

|     290 | EVERYONE CRAFT              |        3 |

|     291 | EVOLUTION ALTER             |        4 |

|     292 | EXCITEMENT EVE              |        6 |

|     293 | EXORCIST STING              |        5 |

|     294 | EXPECATIONS NATURAL         |        5 |

|     295 | EXPENDABLE STALLION         |        8 |

|     296 | EXPRESS LONELY              |        4 |

|     297 | EXTRAORDINARY CONQUERER     |        2 |

|     298 | EYES DRIVING                |        5 |

|     299 | FACTORY DRAGON              |        4 |

|     300 | FALCON VOLUME               |        6 |

|     301 | FAMILY SWEET                |        8 |

|     302 | FANTASIA PARK               |        6 |

|     303 | FANTASY TROOPERS            |        6 |

|     304 | FARGO GANDHI                |        6 |

|     305 | FATAL HAUNTED               |        7 |

|     306 | FEATHERS METAL              |        3 |

|     307 | FELLOWSHIP AUTUMN           |        6 |

|     308 | FERRIS MOTHER               |        4 |

|     309 | FEUD FROGMEN                |        6 |

|     310 | FEVER EMPIRE                |        2 |

|     311 | FICTION CHRISTMAS           |        7 |

|     312 | FIDDLER LOST                |        3 |

|     313 | FIDELITY DEVIL              |        6 |

|     314 | FIGHT JAWBREAKER            |        6 |

|     315 | FINDING ANACONDA            |        3 |

|     316 | FIRE WOLVES                 |        2 |

|     317 | FIREBALL PHILADELPHIA       |        7 |

|     319 | FISH OPUS                   |        7 |

|     320 | FLAMINGOS CONNECTICUT       |        7 |

|     321 | FLASH WARS                  |        4 |

|     322 | FLATLINERS KILLER           |        6 |

|     323 | FLIGHT LIES                 |        4 |

|     324 | FLINTSTONES HAPPINESS       |        5 |

|     326 | FLYING HOOK                 |        6 |

|     327 | FOOL MOCKINGBIRD            |        6 |

|     328 | FOREVER CANDIDATE           |        4 |

|     329 | FORREST SONS                |        6 |

|     330 | FORRESTER COMANCHEROS       |        7 |

|     331 | FORWARD TEMPLE              |        8 |

|     333 | FREAKY POCUS                |        4 |

|     334 | FREDDY STORM                |        6 |

|     335 | FREEDOM CLEOPATRA           |        2 |

|     336 | FRENCH HOLIDAY              |        5 |

|     337 | FRIDA SLIPPER               |        4 |

|     338 | FRISCO FORREST              |        3 |

|     339 | FROGMEN BREAKING            |        3 |

|     340 | FRONTIER CABIN              |        2 |

|     341 | FROST HEAD                  |        8 |

|     342 | FUGITIVE MAGUIRE            |        4 |

|     343 | FULL FLATLINERS             |        2 |

|     344 | FURY MURDER                 |        5 |

|     345 | GABLES METROPOLIS           |        5 |

|     346 | GALAXY SWEETHEARTS          |        6 |

|     347 | GAMES BOWFINGER             |        4 |

|     348 | GANDHI KWAI                 |        4 |

|     349 | GANGS PRIDE                 |        7 |

|     350 | GARDEN ISLAND               |        8 |

|     351 | GASLIGHT CRUSADE            |        6 |

|     352 | GATHERING CALENDAR          |        4 |

|     353 | GENTLEMEN STAGE             |        6 |

|     354 | GHOST GROUNDHOG             |        5 |

|     355 | GHOSTBUSTERS ELF            |        2 |

|     356 | GIANT TROOPERS              |        8 |

|     357 | GILBERT PELICAN             |        4 |

|     358 | GILMORE BOILED              |        8 |

|     360 | GLASS DYING                 |        4 |

|     361 | GLEAMING JAWBREAKER         |        8 |

|     362 | GLORY TRACY                 |        2 |

|     363 | GO PURPLE                   |        6 |

|     364 | GODFATHER DIARY             |        3 |

|     365 | GOLD RIVER                  |        4 |

|     366 | GOLDFINGER SENSIBILITY      |        7 |

|     367 | GOLDMINE TYCOON             |        7 |

|     368 | GONE TROUBLE                |        2 |

|     369 | GOODFELLAS SALUTE           |        8 |

|     370 | GORGEOUS BINGO              |        5 |

|     371 | GOSFORD DONNIE              |        3 |

|     372 | GRACELAND DYNAMITE          |        2 |

|     373 | GRADUATE LORD               |        5 |

|     374 | GRAFFITI LOVE               |        7 |

|     375 | GRAIL FRANKENSTEIN          |        2 |

|     376 | GRAPES FURY                 |        7 |

|     377 | GREASE YOUTH                |        6 |

|     378 | GREATEST NORTH              |        8 |

|     379 | GREEDY ROOTS                |        4 |

|     380 | GREEK EVERYONE              |        5 |

|     381 | GRINCH MASSAGE              |        5 |

|     382 | GRIT CLOCKWORK              |        8 |

|     383 | GROOVE FICTION              |        5 |

|     384 | GROSSE WONDERFUL            |        3 |

|     385 | GROUNDHOG UNCUT             |        5 |

|     387 | GUN BONNIE                  |        6 |

|     388 | GUNFIGHT MOON               |        6 |

|     389 | GUNFIGHTER MUSSOLINI        |        4 |

|     390 | GUYS FALCON                 |        3 |

|     391 | HALF OUTFIELD               |        7 |

|     392 | HALL CASSIDY                |        6 |

|     393 | HALLOWEEN NUTS              |        2 |

|     394 | HAMLET WISDOM               |        4 |

|     395 | HANDICAP BOONDOCK           |        6 |

|     396 | HANGING DEEP                |        4 |

|     397 | HANKY OCTOBER               |        7 |

|     398 | HANOVER GALAXY              |        4 |

|     399 | HAPPINESS UNITED            |        2 |

|     400 | HARDLY ROBBERS              |        2 |

|     401 | HAROLD FRENCH               |        2 |

|     402 | HARPER DYING                |        6 |

|     403 | HARRY IDAHO                 |        8 |

|     405 | HAUNTED ANTITRUST           |        2 |

|     406 | HAUNTING PIANIST            |        6 |

|     407 | HAWK CHILL                  |        2 |

|     408 | HEAD STRANGER               |        7 |

|     409 | HEARTBREAKERS BRIGHT        |        7 |

|     410 | HEAVEN FREEDOM              |        5 |

|     411 | HEAVENLY GUN                |        2 |

|     412 | HEAVYWEIGHTS BEAST          |        8 |

|     413 | HEDWIG ALTER                |        3 |

|     414 | HELLFIGHTERS SIERRA         |        6 |

|     415 | HIGH ENCINO                 |        6 |

|     416 | HIGHBALL POTTER             |        6 |

|     417 | HILLS NEIGHBORS             |        6 |

|     418 | HOBBIT ALIEN                |        8 |

|     420 | HOLES BRANNIGAN             |        5 |

|     421 | HOLIDAY GAMES               |        4 |

|     422 | HOLLOW JEOPARDY             |        2 |

|     423 | HOLLYWOOD ANONYMOUS         |        4 |

|     424 | HOLOCAUST HIGHBALL          |        5 |

|     425 | HOLY TADPOLE                |        2 |

|     426 | HOME PITY                   |        3 |

|     427 | HOMEWARD CIDER              |        4 |

|     428 | HOMICIDE PEACH              |        6 |

|     429 | HONEY TIES                  |        6 |

|     430 | HOOK CHARIOTS               |        4 |

|     431 | HOOSIERS BIRDCAGE           |        3 |

|     432 | HOPE TOOTSIE                |        5 |

|     433 | HORN WORKING                |        6 |

|     434 | HORROR REIGN                |        8 |

|     435 | HOTEL HAPPINESS             |        2 |

|     436 | HOURS RAGE                  |        6 |

|     437 | HOUSE DYNAMITE              |        6 |

|     438 | HUMAN GRAFFITI              |        5 |

|     439 | HUNCHBACK IMPOSSIBLE        |        6 |

|     440 | HUNGER ROOF                 |        4 |

|     441 | HUNTER ALTER                |        2 |

|     442 | HUNTING MUSKETEERS          |        3 |

|     443 | HURRICANE AFFAIR            |        7 |

|     444 | HUSTLER PARTY               |        8 |

|     445 | HYDE DOCTOR                 |        6 |

|     446 | HYSTERICAL GRAIL            |        4 |

|     447 | ICE CROSSING                |        7 |

|     448 | IDAHO LOVE                  |        5 |

|     449 | IDENTITY LOVER              |        4 |

|     450 | IDOLS SNATCHERS             |        7 |

|     451 | IGBY MAKER                  |        5 |

|     452 | ILLUSION AMELIE             |        4 |

|     453 | IMAGE PRINCESS              |        5 |

|     454 | IMPACT ALADDIN              |        2 |

|     455 | IMPOSSIBLE PREJUDICE        |        4 |

|     456 | INCH JET                    |        6 |

|     457 | INDEPENDENCE HOTEL          |        6 |

|     458 | INDIAN LOVE                 |        6 |

|     459 | INFORMER DOUBLE             |        2 |

|     460 | INNOCENT USUAL              |        8 |

|     461 | INSECTS STONE               |        6 |

|     462 | INSIDER ARIZONA             |        5 |

|     463 | INSTINCT AIRPORT            |        5 |

|     464 | INTENTIONS EMPIRE           |        7 |

|     465 | INTERVIEW LIAISONS          |        5 |

|     466 | INTOLERABLE INTENTIONS      |        2 |

|     467 | INTRIGUE WORST              |        7 |

|     468 | INVASION CYCLONE            |        8 |

|     469 | IRON MOON                   |        3 |

|     470 | ISHTAR ROCKETEER            |        2 |

|     471 | ISLAND EXORCIST             |        7 |

|     472 | ITALIAN AFRICAN             |        2 |

|     473 | JACKET FRISCO               |        5 |

|     474 | JADE BUNCH                  |        4 |

|     475 | JAPANESE RUN                |        2 |

|     476 | JASON TRAP                  |        7 |

|     477 | JAWBREAKER BROOKLYN         |        3 |

|     478 | JAWS HARRY                  |        5 |

|     479 | JEDI BENEATH                |        5 |

|     480 | JEEPERS WEDDING             |        4 |

|     481 | JEKYLL FROGMEN              |        6 |

|     482 | JEOPARDY ENCINO             |        3 |

|     483 | JERICHO MULAN               |        5 |

|     484 | JERK PAYCHECK               |        7 |

|     485 | JERSEY SASSY                |        3 |

|     486 | JET NEIGHBORS               |        6 |

|     487 | JINGLE SAGEBRUSH            |        3 |

|     488 | JOON NORTHWEST              |        5 |

|     489 | JUGGLER HARDLY              |        8 |

|     490 | JUMANJI BLADE               |        2 |

|     491 | JUMPING WRATH               |        6 |

|     492 | JUNGLE CLOSER               |        2 |

|     493 | KANE EXORCIST               |        3 |

|     494 | KARATE MOON                 |        6 |

|     496 | KICK SAVANNAH               |        5 |

|     498 | KILLER INNOCENT             |        2 |

|     499 | KING EVOLUTION              |        2 |

|     500 | KISS GLORY                  |        8 |

|     501 | KISSING DOLLS               |        5 |

|     502 | KNOCK WARLOCK               |        7 |

|     503 | KRAMER CHOCOLATE            |        3 |

|     504 | KWAI HOMEWARD               |        6 |

|     505 | LABYRINTH LEAGUE            |        4 |

|     506 | LADY STAGE                  |        6 |

|     507 | LADYBUGS ARMAGEDDON         |        2 |

|     508 | LAMBS CINCINATTI            |        3 |

|     509 | LANGUAGE COWBOY             |        3 |

|     510 | LAWLESS VISION              |        4 |

|     511 | LAWRENCE LOVE               |        5 |

|     512 | LEAGUE HELLFIGHTERS         |        6 |

|     513 | LEATHERNECKS DWARFS         |        2 |

|     514 | LEBOWSKI SOLDIERS           |        6 |

|     515 | LEGALLY SECRETARY           |        2 |

|     516 | LEGEND JEDI                 |        3 |

|     517 | LESSON CLEOPATRA            |        2 |

|     518 | LIAISONS SWEET              |        6 |

|     519 | LIBERTY MAGNIFICENT         |        4 |

|     520 | LICENSE WEEKEND             |        2 |

|     521 | LIES TREATMENT              |        7 |

|     522 | LIFE TWISTED                |        2 |

|     523 | LIGHTS DEER                 |        2 |

|     524 | LION UNCUT                  |        6 |

|     525 | LOATHING LEGALLY            |        8 |

|     526 | LOCK REAR                   |        4 |

|     527 | LOLA AGENT                  |        6 |

|     528 | LOLITA WORLD                |        3 |

|     529 | LONELY ELEPHANT             |        4 |

|     530 | LORD ARIZONA                |        3 |

|     531 | LOSE INCH                   |        8 |

|     532 | LOSER HUSTLER               |        4 |

|     533 | LOST BIRD                   |        3 |

|     534 | LOUISIANA HARRY             |        5 |

|     535 | LOVE SUICIDES               |        4 |

|     536 | LOVELY JINGLE               |        5 |

|     537 | LOVER TRUMAN                |        3 |

|     538 | LOVERBOY ATTACKS            |        3 |

|     539 | LUCK OPUS                   |        2 |

|     540 | LUCKY FLYING                |        3 |

|     541 | LUKE MUMMY                  |        2 |

|     542 | LUST LOCK                   |        6 |

|     543 | MADIGAN DORADO              |        2 |

|     544 | MADISON TRAP                |        4 |

|     545 | MADNESS ATTACKS             |        6 |

|     546 | MADRE GABLES                |        4 |

|     547 | MAGIC MALLRATS              |        2 |

|     548 | MAGNIFICENT CHITTY          |        2 |

|     549 | MAGNOLIA FORRESTER          |        4 |

|     550 | MAGUIRE APACHE              |        3 |

|     551 | MAIDEN HOME                 |        6 |

|     552 | MAJESTIC FLOATS             |        4 |

|     553 | MAKER GABLES                |        3 |

|     554 | MALKOVICH PET               |        7 |

|     555 | MALLRATS UNITED             |        7 |

|     556 | MALTESE HOPE                |        7 |

|     557 | MANCHURIAN CURTAIN          |        5 |

|     558 | MANNEQUIN WORST             |        2 |

|     559 | MARRIED GO                  |        8 |

|     560 | MARS ROMAN                  |        5 |

|     561 | MASK PEACH                  |        4 |

|     562 | MASKED BUBBLE               |        6 |

|     563 | MASSACRE USUAL              |        7 |

|     564 | MASSAGE IMAGE               |        3 |

|     565 | MATRIX SNOWMAN              |        2 |

|     566 | MAUDE MOD                   |        2 |

|     567 | MEET CHOCOLATE              |        4 |

|     568 | MEMENTO ZOOLANDER           |        4 |

|     569 | MENAGERIE RUSHMORE          |        2 |

|     570 | MERMAID INSECTS             |        5 |

|     571 | METAL ARMAGEDDON            |        6 |

|     572 | METROPOLIS COMA             |        8 |

|     573 | MICROCOSMOS PARADISE        |        4 |

|     574 | MIDNIGHT WESTWARD           |        5 |

|     575 | MIDSUMMER GROUNDHOG         |        6 |

|     576 | MIGHTY LUCK                 |        3 |

|     577 | MILE MULAN                  |        3 |

|     578 | MILLION ACE                 |        5 |

|     579 | MINDS TRUMAN                |        7 |

|     580 | MINE TITANS                 |        6 |

|     581 | MINORITY KISS               |        3 |

|     582 | MIRACLE VIRTUAL             |        2 |

|     583 | MISSION ZOOLANDER           |        5 |

|     584 | MIXED DOORS                 |        2 |

|     585 | MOB DUFFEL                  |        4 |

|     586 | MOCKINGBIRD HOLLYWOOD       |        8 |

|     587 | MOD SECRETARY               |        3 |

|     588 | MODEL FISH                  |        4 |

|     589 | MODERN DORADO               |        4 |

|     590 | MONEY HAROLD                |        7 |

|     591 | MONSOON CAUSE               |        3 |

|     592 | MONSTER SPARTACUS           |        4 |

|     593 | MONTEREY LABYRINTH          |        4 |

|     594 | MONTEZUMA COMMAND           |        3 |

|     595 | MOON BUNCH                  |        8 |

|     596 | MOONSHINE CABIN             |        6 |

|     597 | MOONWALKER FOOL             |        4 |

|     598 | MOSQUITO ARMAGEDDON         |        4 |

|     599 | MOTHER OLEANDER             |        5 |

|     600 | MOTIONS DETAILS             |        4 |

|     601 | MOULIN WAKE                 |        5 |

|     602 | MOURNING PURPLE             |        5 |

|     603 | MOVIE SHAKESPEARE           |        6 |

|     604 | MULAN MOON                  |        3 |

|     605 | MULHOLLAND BEAST            |        2 |

|     606 | MUMMY CREATURES             |        6 |

|     608 | MURDER ANTITRUST            |        6 |

|     609 | MUSCLE BRIGHT               |        8 |

|     610 | MUSIC BOONDOCK              |        5 |

|     611 | MUSKETEERS WAIT             |        6 |

|     612 | MUSSOLINI SPOILERS          |        2 |

|     613 | MYSTIC TRUMAN               |        2 |

|     614 | NAME DETECTIVE              |        6 |

|     615 | NASH CHOCOLAT               |        4 |

|     616 | NATIONAL STORY              |        6 |

|     617 | NATURAL STOCK               |        3 |

|     618 | NECKLACE OUTBREAK           |        4 |

|     619 | NEIGHBORS CHARADE           |        6 |

|     620 | NEMO CAMPUS                 |        5 |

|     621 | NETWORK PEAK                |        8 |

|     622 | NEWSIES STORY               |        2 |

|     623 | NEWTON LABYRINTH            |        5 |

|     624 | NIGHTMARE CHILL             |        7 |

|     625 | NONE SPIKING                |        7 |

|     626 | NOON PAPI                   |        4 |

|     627 | NORTH TEQUILA               |        3 |

|     628 | NORTHWEST POLISH            |        5 |

|     629 | NOTORIOUS REUNION           |        4 |

|     630 | NOTTING SPEAKEASY           |        3 |

|     631 | NOVOCAINE FLIGHT            |        5 |

|     632 | NUTS TIES                   |        3 |

|     633 | OCTOBER SUBMARINE           |        3 |

|     634 | ODDS BOOGIE                 |        4 |

|     635 | OKLAHOMA JUMANJI            |        2 |

|     636 | OLEANDER CLUE               |        3 |

|     637 | OPEN AFRICAN                |        5 |

|     638 | OPERATION OPERATION         |        8 |

|     639 | OPPOSITE NECKLACE           |        3 |

|     640 | OPUS ICE                    |        3 |

|     641 | ORANGE GRAPES               |        7 |

|     643 | ORIENT CLOSER               |        6 |

|     644 | OSCAR GOLD                  |        7 |

|     645 | OTHERS SOUP                 |        6 |

|     646 | OUTBREAK DIVINE             |        5 |

|     647 | OUTFIELD MASSACRE           |        6 |

|     648 | OUTLAW HANKY                |        6 |

|     649 | OZ LIAISONS                 |        6 |

|     650 | PACIFIC AMISTAD             |        6 |

|     651 | PACKER MADIGAN              |        6 |

|     652 | PAJAMA JAWBREAKER           |        4 |

|     653 | PANIC CLUB                  |        2 |

|     654 | PANKY SUBMARINE             |        4 |

|     655 | PANTHER REDS                |        6 |

|     656 | PAPI NECKLACE               |        2 |

|     657 | PARADISE SABRINA            |        6 |

|     658 | PARIS WEEKEND               |        4 |

|     659 | PARK CITIZEN                |        2 |

|     660 | PARTY KNOCK                 |        4 |

|     661 | PAST SUICIDES               |        4 |

|     662 | PATHS CONTROL               |        4 |

|     663 | PATIENT SISTER              |        5 |

|     664 | PATRIOT ROMAN               |        5 |

|     665 | PATTON INTERVIEW            |        7 |

|     666 | PAYCHECK WAIT               |        5 |

|     667 | PEACH INNOCENT              |        4 |

|     668 | PEAK FOREVER                |        5 |

|     670 | PELICAN COMFORTS            |        7 |

|     672 | PERFECT GROOVE              |        6 |

|     673 | PERSONAL LADYBUGS           |        4 |

|     674 | PET HAUNTING                |        3 |

|     675 | PHANTOM GLORY               |        2 |

|     676 | PHILADELPHIA WIFE           |        6 |

|     677 | PIANIST OUTFIELD            |        7 |

|     678 | PICKUP DRIVING              |        4 |

|     679 | PILOT HOOSIERS              |        4 |

|     680 | PINOCCHIO SIMON             |        6 |

|     681 | PIRATES ROXANNE             |        6 |

|     682 | PITTSBURGH HUNCHBACK        |        3 |

|     683 | PITY BOUND                  |        8 |

|     684 | PIZZA JUMANJI               |        2 |

|     685 | PLATOON INSTINCT            |        2 |

|     686 | PLUTO OLEANDER              |        4 |

|     687 | POCUS PULP                  |        7 |

|     688 | POLISH BROOKLYN             |        4 |

|     689 | POLLOCK DELIVERANCE         |        6 |

|     690 | POND SEATTLE                |        6 |

|     691 | POSEIDON FOREVER            |        5 |

|     692 | POTLUCK MIXED               |        3 |

|     693 | POTTER CONNECTICUT          |        5 |

|     694 | PREJUDICE OLEANDER          |        6 |

|     695 | PRESIDENT BANG              |        2 |

|     696 | PRIDE ALAMO                 |        5 |

|     697 | PRIMARY GLASS               |        8 |

|     698 | PRINCESS GIANT              |        7 |

|     699 | PRIVATE DROP                |        2 |

|     700 | PRIX UNDEFEATED             |        3 |

|     702 | PULP BEVERLY                |        8 |

|     703 | PUNK DIVORCE                |        2 |

|     704 | PURE RUNNER                 |        5 |

|     705 | PURPLE MOVIE                |        4 |

|     706 | QUEEN LUKE                  |        6 |

|     707 | QUEST MUSSOLINI             |        6 |

|     708 | QUILLS BULL                 |        4 |

|     709 | RACER EGG                   |        6 |

|     710 | RAGE GAMES                  |        6 |

|     711 | RAGING AIRPLANE             |        4 |

|     714 | RANDOM GO                   |        3 |

|     715 | RANGE MOONWALKER            |        7 |

|     716 | REAP UNFAITHFUL             |        5 |

|     717 | REAR TRADING                |        4 |

|     718 | REBEL AIRPORT               |        2 |

|     719 | RECORDS ZORRO               |        2 |

|     720 | REDEMPTION COMFORTS         |        7 |

|     721 | REDS POCUS                  |        2 |

|     722 | REEF SALUTE                 |        4 |

|     723 | REIGN GENTLEMEN             |        7 |

|     724 | REMEMBER DIARY              |        6 |

|     725 | REQUIEM TYCOON              |        6 |

|     726 | RESERVOIR ADAPTATION        |        3 |

|     727 | RESURRECTION SILVERADO      |        5 |

|     728 | REUNION WITCHES             |        5 |

|     729 | RIDER CADDYSHACK            |        4 |

|     730 | RIDGEMONT SUBMARINE         |        8 |

|     731 | RIGHT CRANES                |        3 |

|     732 | RINGS HEARTBREAKERS         |        4 |

|     733 | RIVER OUTLAW                |        7 |

|     734 | ROAD ROXANNE                |        6 |

|     735 | ROBBERS JOON                |        7 |

|     736 | ROBBERY BRIGHT              |        4 |

|     737 | ROCK INSTINCT               |        6 |

|     738 | ROCKETEER MOTHER            |        8 |

|     739 | ROCKY WAR                   |        5 |

|     740 | ROLLERCOASTER BRINGING      |        3 |

|     741 | ROMAN PUNK                  |        6 |

|     743 | ROOM ROMAN                  |        6 |

|     744 | ROOTS REMEMBER              |        5 |

|     745 | ROSES TREASURE              |        8 |

|     746 | ROUGE SQUAD                 |        5 |

|     747 | ROXANNE REBEL               |        5 |

|     748 | RUGRATS SHAKESPEARE         |        8 |

|     749 | RULES HUMAN                 |        4 |

|     750 | RUN PACIFIC                 |        3 |

|     751 | RUNAWAY TENENBAUMS          |        2 |

|     752 | RUNNER MADIGAN              |        3 |

|     753 | RUSH GOODFELLAS             |        8 |

|     754 | RUSHMORE MERMAID            |        2 |

|     755 | SABRINA MIDNIGHT            |        7 |

|     756 | SADDLE ANTITRUST            |        3 |

|     757 | SAGEBRUSH CLUELESS          |        5 |

|     758 | SAINTS BRIDE                |        3 |

|     759 | SALUTE APOLLO               |        6 |

|     760 | SAMURAI LION                |        7 |

|     761 | SANTA PARIS                 |        3 |

|     762 | SASSY PACKER                |        4 |

|     763 | SATISFACTION CONFIDENTIAL   |        5 |

|     764 | SATURDAY LAMBS              |        8 |

|     765 | SATURN NAME                 |        4 |

|     766 | SAVANNAH TOWN               |        3 |

|     767 | SCALAWAG DUCK               |        8 |

|     768 | SCARFACE BANG               |        6 |

|     769 | SCHOOL JACKET               |        2 |

|     770 | SCISSORHANDS SLUMS          |        3 |

|     771 | SCORPION APOLLO             |        7 |

|     772 | SEA VIRGIN                  |        6 |

|     773 | SEABISCUIT PUNK             |        8 |

|     774 | SEARCHERS WAIT              |        4 |

|     775 | SEATTLE EXPECATIONS         |        5 |

|     776 | SECRET GROUNDHOG            |        5 |

|     777 | SECRETARY ROUGE             |        6 |

|     778 | SECRETS PARADISE            |        6 |

|     779 | SENSE GREEK                 |        2 |

|     780 | SENSIBILITY REAR            |        3 |

|     781 | SEVEN SWARM                 |        2 |

|     782 | SHAKESPEARE SADDLE          |        6 |

|     783 | SHANE DARKNESS              |        4 |

|     784 | SHANGHAI TYCOON             |        6 |

|     785 | SHAWSHANK BUBBLE            |        6 |

|     786 | SHEPHERD MIDSUMMER          |        7 |

|     787 | SHINING ROSES               |        3 |

|     788 | SHIP WONDERLAND             |        4 |

|     789 | SHOCK CABIN                 |        8 |

|     790 | SHOOTIST SUPERFLY           |        7 |

|     791 | SHOW LORD                   |        6 |

|     792 | SHREK LICENSE               |        3 |

|     793 | SHRUNK DIVINE               |        4 |

|     794 | SIDE ARK                    |        4 |

|     795 | SIEGE MADRE                 |        4 |

|     796 | SIERRA DIVIDE               |        5 |

|     797 | SILENCE KANE                |        5 |

|     798 | SILVERADO GOLDFINGER        |        4 |

|     799 | SIMON NORTH                 |        2 |

|     800 | SINNERS ATLANTIS            |        6 |

|     803 | SLACKER LIAISONS            |        6 |

|     804 | SLEEPING SUSPECTS           |        7 |

|     805 | SLEEPLESS MONSOON           |        5 |

|     806 | SLEEPY JAPANESE             |        5 |

|     807 | SLEUTH ORIENT               |        5 |

|     808 | SLING LUKE                  |        2 |

|     809 | SLIPPER FIDELITY            |        4 |

|     810 | SLUMS DUCK                  |        7 |

|     811 | SMILE EARRING               |        3 |

|     812 | SMOKING BARBARELLA          |        6 |

|     813 | SMOOCHY CONTROL             |        4 |

|     814 | SNATCH SLIPPER              |        7 |

|     815 | SNATCHERS MONTEZUMA         |        3 |

|     816 | SNOWMAN ROLLERCOASTER       |        7 |

|     817 | SOLDIERS EVOLUTION          |        2 |

|     818 | SOMETHING DUCK              |        5 |

|     819 | SONG HEDWIG                 |        3 |

|     820 | SONS INTERVIEW              |        6 |

|     821 | SORORITY QUEEN              |        4 |

|     822 | SOUP WISDOM                 |        2 |

|     823 | SOUTH WAIT                  |        7 |

|     824 | SPARTACUS CHEAPER           |        4 |

|     825 | SPEAKEASY DATE              |        3 |

|     826 | SPEED SUIT                  |        2 |

|     827 | SPICE SORORITY              |        6 |

|     828 | SPIKING ELEMENT             |        4 |

|     829 | SPINAL ROCKY                |        5 |

|     830 | SPIRIT FLINTSTONES          |        4 |

|     831 | SPIRITED CASUALTIES         |        3 |

|     832 | SPLASH GUMP                 |        4 |

|     833 | SPLENDOR PATTON             |        7 |

|     834 | SPOILERS HELLFIGHTERS       |        3 |

|     835 | SPY MILE                    |        8 |

|     836 | SQUAD FISH                  |        3 |

|     837 | STAGE WORLD                 |        3 |

|     838 | STAGECOACH ARMAGEDDON       |        6 |

|     839 | STALLION SUNDANCE           |        2 |

|     840 | STAMPEDE DISTURBING         |        4 |

|     841 | STAR OPERATION              |        7 |

|     842 | STATE WASTELAND             |        4 |

|     843 | STEEL SANTA                 |        7 |

|     844 | STEERS ARMAGEDDON           |        4 |

|     845 | STEPMOM DREAM               |        7 |

|     846 | STING PERSONAL              |        8 |

|     847 | STOCK GLASS                 |        4 |

|     848 | STONE FIRE                  |        3 |

|     849 | STORM HAPPINESS             |        8 |

|     850 | STORY SIDE                  |        7 |

|     851 | STRAIGHT HOURS              |        6 |

|     852 | STRANGELOVE DESIRE          |        7 |

|     853 | STRANGER STRANGERS          |        3 |

|     854 | STRANGERS GRAFFITI          |        4 |

|     855 | STREAK RIDGEMONT            |        4 |

|     856 | STREETCAR INTENTIONS        |        8 |

|     857 | STRICTLY SCARFACE           |        7 |

|     858 | SUBMARINE BED               |        4 |

|     859 | SUGAR WONKA                 |        6 |

|     861 | SUIT WALLS                  |        6 |

|     862 | SUMMER SCARFACE             |        5 |

|     863 | SUN CONFESSIONS             |        7 |

|     864 | SUNDANCE INVASION           |        6 |

|     865 | SUNRISE LEAGUE              |        6 |

|     866 | SUNSET RACER                |        2 |

|     867 | SUPER WYOMING               |        4 |

|     868 | SUPERFLY TRIP               |        3 |

|     869 | SUSPECTS QUILLS             |        7 |

|     870 | SWARM GOLD                  |        8 |

|     871 | SWEDEN SHINING              |        5 |

|     872 | SWEET BROTHERHOOD           |        3 |

|     873 | SWEETHEARTS SUSPECTS        |        8 |

|     875 | TALENTED HOMICIDE           |        7 |

|     876 | TARZAN VIDEOTAPE            |        2 |

|     877 | TAXI KICK                   |        5 |

|     878 | TEEN APOLLO                 |        4 |

|     879 | TELEGRAPH VOYAGE            |        7 |

|     880 | TELEMARK HEARTBREAKERS      |        8 |

|     881 | TEMPLE ATTRACTION           |        4 |

|     882 | TENENBAUMS COMMAND          |        4 |

|     883 | TEQUILA PAST                |        2 |

|     884 | TERMINATOR CLUB             |        3 |

|     885 | TEXAS WATCH                 |        2 |

|     886 | THEORY MERMAID              |        4 |

|     887 | THIEF PELICAN               |        6 |

|     888 | THIN SAGEBRUSH              |        4 |

|     889 | TIES HUNGER                 |        3 |

|     890 | TIGHTS DAWN                 |        7 |

|     891 | TIMBERLAND SKY              |        7 |

|     892 | TITANIC BOONDOCK            |        7 |

|     893 | TITANS JERK                 |        8 |

|     894 | TOMATOES HELLFIGHTERS       |        5 |

|     895 | TOMORROW HUSTLER            |        7 |

|     896 | TOOTSIE PILOT               |        4 |

|     897 | TORQUE BOUND                |        8 |

|     898 | TOURIST PELICAN             |        5 |

|     899 | TOWERS HURRICANE            |        3 |

|     900 | TOWN ARK                    |        4 |

|     901 | TRACY CIDER                 |        7 |

|     902 | TRADING PINOCCHIO           |        7 |

|     903 | TRAFFIC HOBBIT              |        2 |

|     904 | TRAIN BUNCH                 |        2 |

|     905 | TRAINSPOTTING STRANGERS     |        3 |

|     906 | TRAMP OTHERS                |        5 |

|     907 | TRANSLATION SUMMER          |        4 |

|     908 | TRAP GUYS                   |        4 |

|     910 | TREATMENT JEKYLL            |        2 |

|     911 | TRIP NEWTON                 |        8 |

|     912 | TROJAN TOMORROW             |        6 |

|     913 | TROOPERS METAL              |        6 |

|     914 | TROUBLE DATE                |        6 |

|     915 | TRUMAN CRAZY                |        6 |

|     916 | TURN STAR                   |        4 |

|     917 | TUXEDO MILE                 |        5 |

|     918 | TWISTED PIRATES             |        4 |

|     919 | TYCOON GATHERING            |        4 |

|     920 | UNBREAKABLE KARATE          |        5 |

|     921 | UNCUT SUICIDES              |        4 |

|     922 | UNDEFEATED DALMATIONS       |        7 |

|     923 | UNFAITHFUL KILL             |        3 |

|     924 | UNFORGIVEN ZOOLANDER        |        5 |

|     925 | UNITED PILOT                |        5 |

|     926 | UNTOUCHABLES SUNRISE        |        2 |

|     927 | UPRISING UPTOWN             |        4 |

|     928 | UPTOWN YOUNG                |        3 |

|     929 | USUAL UNTOUCHABLES          |        4 |

|     930 | VACATION BOONDOCK           |        6 |

|     931 | VALENTINE VANISHING         |        3 |

|     932 | VALLEY PACKER               |        4 |

|     933 | VAMPIRE WHALE               |        3 |

|     934 | VANILLA DAY                 |        3 |

|     935 | VANISHED GARDEN             |        2 |

|     936 | VANISHING ROCKY             |        6 |

|     937 | VARSITY TRIP                |        5 |

|     938 | VELVET TERMINATOR           |        6 |

|     939 | VERTIGO NORTHWEST           |        4 |

|     940 | VICTORY ACADEMY             |        3 |

|     941 | VIDEOTAPE ARSENIC           |        7 |

|     942 | VIETNAM SMOOCHY             |        4 |

|     944 | VIRGIN DAISY                |        5 |

|     945 | VIRGINIAN PLUTO             |        8 |

|     946 | VIRTUAL SPOILERS            |        4 |

|     947 | VISION TORQUE               |        2 |

|     948 | VOICE PEACH                 |        6 |

|     949 | VOLCANO TEXAS               |        6 |

|     951 | VOYAGE LEGALLY              |        7 |

|     952 | WAGON JAWS                  |        3 |

|     953 | WAIT CIDER                  |        6 |

|     956 | WANDA CHAMBER               |        4 |

|     957 | WAR NOTTING                 |        5 |

|     958 | WARDROBE PHANTOM            |        6 |

|     959 | WARLOCK WEREWOLF            |        2 |

|     960 | WARS PLUTO                  |        3 |

|     961 | WASH HEAVENLY               |        5 |

|     962 | WASTELAND DIVINE            |        4 |

|     963 | WATCH TRACY                 |        5 |

|     964 | WATERFRONT DELIVERANCE      |        5 |

|     965 | WATERSHIP FRONTIER          |        2 |

|     966 | WEDDING APOLLO              |        6 |

|     967 | WEEKEND PERSONAL            |        5 |

|     968 | WEREWOLF LOLA               |        3 |

|     969 | WEST LION                   |        4 |

|     970 | WESTWARD SEABISCUIT         |        7 |

|     971 | WHALE BIKINI                |        4 |

|     972 | WHISPERER GIANT             |        6 |

|     973 | WIFE TURN                   |        8 |

|     974 | WILD APOLLO                 |        2 |

|     975 | WILLOW TRACY                |        5 |

|     976 | WIND PHANTOM                |        6 |

|     977 | WINDOW SIDE                 |        3 |

|     978 | WISDOM WORKER               |        3 |

|     979 | WITCHES PANIC               |        7 |

|     980 | WIZARD COLDBLOODED          |        5 |

|     981 | WOLVES DESIRE               |        6 |

|     982 | WOMEN DORADO                |        7 |

|     983 | WON DARES                   |        3 |

|     984 | WONDERFUL DROP              |        2 |

|     985 | WONDERLAND CHRISTMAS        |        7 |

|     986 | WONKA SEA                   |        6 |

|     987 | WORDS HUNTER                |        4 |

|     988 | WORKER TARZAN               |        5 |

|     989 | WORKING MICROCOSMOS         |        6 |

|     990 | WORLD LEATHERNECKS          |        2 |

|     991 | WORST BANGER                |        5 |

|     992 | WRATH MILE                  |        4 |

|     993 | WRONG BEHAVIOR              |        7 |

|     994 | WYOMING STORM               |        3 |

|     995 | YENTL IDAHO                 |        6 |

|     996 | YOUNG LANGUAGE              |        2 |

|     997 | YOUTH KICK                  |        2 |

|     998 | ZHIVAGO CORE                |        2 |

|     999 | ZOOLANDER FICTION           |        5 |

|    1000 | ZORRO ARK                   |        8 |

+---------+-----------------------------+----------+

958 rows in set (0.0070 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.film\_id, a.title, count(\*) as cantidad  from film a inner join inventory b on a.film\_id = b.film\_id group by a.film\_id having cantidad < 3;

+---------+-------------------------+----------+

| film\_id | title                   | cantidad |

+---------+-------------------------+----------+

|      29 | ANTITRUST TOMATOES      |        2 |

|      30 | ANYTHING SAVANNAH       |        2 |

|      32 | APOCALYPSE FLAMINGOS    |        2 |

|      47 | BABY HALL               |        2 |

|      52 | BALLROOM MOCKINGBIRD    |        2 |

|      53 | BANG KWAI               |        2 |

|      62 | BED HIGHBALL            |        2 |

|      82 | BLOOD ARGONAUTS         |        2 |

|      94 | BRAVEHEART HUMAN        |        2 |

|     102 | BUBBLE GROSSE           |        2 |

|     106 | BULWORTH COMMANDMENTS   |        2 |

|     107 | BUNCH MINDS             |        2 |

|     125 | CASSIDY WYOMING         |        2 |

|     156 | CLERKS ANGELS           |        2 |

|     161 | CLUE GRAIL              |        2 |

|     168 | COMANCHEROS ENEMY       |        2 |

|     178 | CONNECTION MICROCOSMOS  |        2 |

|     180 | CONSPIRACY SPIRIT       |        2 |

|     182 | CONTROL ANTHEM          |        2 |

|     185 | COWBOY DOOM             |        2 |

|     196 | CRUELTY UNFORGIVEN      |        2 |

|     197 | CRUSADE HONEY           |        2 |

|     211 | DARLING BREAKING        |        2 |

|     223 | DESIRE ALIEN            |        2 |

|     224 | DESPERATE TRAINSPOTTING |        2 |

|     230 | DIARY PANIC             |        2 |

|     237 | DIVORCE SHINING         |        2 |

|     238 | DOCTOR GRAIL            |        2 |

|     248 | DOZEN LION              |        2 |

|     259 | DUCK RACER              |        2 |

|     261 | DUFFEL APOCALYPSE       |        2 |

|     262 | DUMBO LUST              |        2 |

|     264 | DWARFS ALTER            |        2 |

|     268 | EARLY HOME              |        2 |

|     278 | ELF MURDER              |        2 |

|     279 | ELIZABETH SHANE         |        2 |

|     289 | EVE RESURRECTION        |        2 |

|     297 | EXTRAORDINARY CONQUERER |        2 |

|     310 | FEVER EMPIRE            |        2 |

|     316 | FIRE WOLVES             |        2 |

|     335 | FREEDOM CLEOPATRA       |        2 |

|     340 | FRONTIER CABIN          |        2 |

|     343 | FULL FLATLINERS         |        2 |

|     355 | GHOSTBUSTERS ELF        |        2 |

|     362 | GLORY TRACY             |        2 |

|     368 | GONE TROUBLE            |        2 |

|     372 | GRACELAND DYNAMITE      |        2 |

|     375 | GRAIL FRANKENSTEIN      |        2 |

|     393 | HALLOWEEN NUTS          |        2 |

|     399 | HAPPINESS UNITED        |        2 |

|     400 | HARDLY ROBBERS          |        2 |

|     401 | HAROLD FRENCH           |        2 |

|     405 | HAUNTED ANTITRUST       |        2 |

|     407 | HAWK CHILL              |        2 |

|     411 | HEAVENLY GUN            |        2 |

|     422 | HOLLOW JEOPARDY         |        2 |

|     425 | HOLY TADPOLE            |        2 |

|     435 | HOTEL HAPPINESS         |        2 |

|     441 | HUNTER ALTER            |        2 |

|     454 | IMPACT ALADDIN          |        2 |

|     459 | INFORMER DOUBLE         |        2 |

|     466 | INTOLERABLE INTENTIONS  |        2 |

|     470 | ISHTAR ROCKETEER        |        2 |

|     472 | ITALIAN AFRICAN         |        2 |

|     475 | JAPANESE RUN            |        2 |

|     490 | JUMANJI BLADE           |        2 |

|     492 | JUNGLE CLOSER           |        2 |

|     498 | KILLER INNOCENT         |        2 |

|     499 | KING EVOLUTION          |        2 |

|     507 | LADYBUGS ARMAGEDDON     |        2 |

|     513 | LEATHERNECKS DWARFS     |        2 |

|     515 | LEGALLY SECRETARY       |        2 |

|     517 | LESSON CLEOPATRA        |        2 |

|     520 | LICENSE WEEKEND         |        2 |

|     522 | LIFE TWISTED            |        2 |

|     523 | LIGHTS DEER             |        2 |

|     539 | LUCK OPUS               |        2 |

|     541 | LUKE MUMMY              |        2 |

|     543 | MADIGAN DORADO          |        2 |

|     547 | MAGIC MALLRATS          |        2 |

|     548 | MAGNIFICENT CHITTY      |        2 |

|     558 | MANNEQUIN WORST         |        2 |

|     565 | MATRIX SNOWMAN          |        2 |

|     566 | MAUDE MOD               |        2 |

|     569 | MENAGERIE RUSHMORE      |        2 |

|     582 | MIRACLE VIRTUAL         |        2 |

|     584 | MIXED DOORS             |        2 |

|     605 | MULHOLLAND BEAST        |        2 |

|     612 | MUSSOLINI SPOILERS      |        2 |

|     613 | MYSTIC TRUMAN           |        2 |

|     622 | NEWSIES STORY           |        2 |

|     635 | OKLAHOMA JUMANJI        |        2 |

|     653 | PANIC CLUB              |        2 |

|     656 | PAPI NECKLACE           |        2 |

|     659 | PARK CITIZEN            |        2 |

|     675 | PHANTOM GLORY           |        2 |

|     684 | PIZZA JUMANJI           |        2 |

|     685 | PLATOON INSTINCT        |        2 |

|     695 | PRESIDENT BANG          |        2 |

|     699 | PRIVATE DROP            |        2 |

|     703 | PUNK DIVORCE            |        2 |

|     718 | REBEL AIRPORT           |        2 |

|     719 | RECORDS ZORRO           |        2 |

|     721 | REDS POCUS              |        2 |

|     751 | RUNAWAY TENENBAUMS      |        2 |

|     754 | RUSHMORE MERMAID        |        2 |

|     769 | SCHOOL JACKET           |        2 |

|     779 | SENSE GREEK             |        2 |

|     781 | SEVEN SWARM             |        2 |

|     799 | SIMON NORTH             |        2 |

|     808 | SLING LUKE              |        2 |

|     817 | SOLDIERS EVOLUTION      |        2 |

|     822 | SOUP WISDOM             |        2 |

|     826 | SPEED SUIT              |        2 |

|     839 | STALLION SUNDANCE       |        2 |

|     866 | SUNSET RACER            |        2 |

|     876 | TARZAN VIDEOTAPE        |        2 |

|     883 | TEQUILA PAST            |        2 |

|     885 | TEXAS WATCH             |        2 |

|     903 | TRAFFIC HOBBIT          |        2 |

|     904 | TRAIN BUNCH             |        2 |

|     910 | TREATMENT JEKYLL        |        2 |

|     926 | UNTOUCHABLES SUNRISE    |        2 |

|     935 | VANISHED GARDEN         |        2 |

|     947 | VISION TORQUE           |        2 |

|     959 | WARLOCK WEREWOLF        |        2 |

|     965 | WATERSHIP FRONTIER      |        2 |

|     974 | WILD APOLLO             |        2 |

|     984 | WONDERFUL DROP          |        2 |

|     990 | WORLD LEATHERNECKS      |        2 |

|     996 | YOUNG LANGUAGE          |        2 |

|     997 | YOUTH KICK              |        2 |

|     998 | ZHIVAGO CORE            |        2 |

+---------+-------------------------+----------+

133 rows in set (0.0027 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.customer\_id, a.first\_name, a.last\_name, b.amount

&#x20;                                      -> from customer a

&#x20;                                      -> left join payment b on a.customer\_id = b.customer\_id

&#x20;                                      -> limit 200;

+-------------+------------+-----------+--------+

| customer\_id | first\_name | last\_name | amount |

+-------------+------------+-----------+--------+

|           1 | MARY       | SMITH     |   2.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   5.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   9.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   3.99 |

|           1 | MARY       | SMITH     |   5.99 |

|           1 | MARY       | SMITH     |   5.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   7.99 |

|           1 | MARY       | SMITH     |   2.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   2.99 |

|           1 | MARY       | SMITH     |   2.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   3.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   4.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   2.99 |

|           1 | MARY       | SMITH     |   0.99 |

|           1 | MARY       | SMITH     |   1.99 |

|           1 | MARY       | SMITH     |   2.99 |

|           1 | MARY       | SMITH     |   5.99 |

|           2 | PATRICIA   | JOHNSON   |   4.99 |

|           2 | PATRICIA   | JOHNSON   |   2.99 |

|           2 | PATRICIA   | JOHNSON   |   2.99 |

|           2 | PATRICIA   | JOHNSON   |   6.99 |

|           2 | PATRICIA   | JOHNSON   |   4.99 |

|           2 | PATRICIA   | JOHNSON   |   5.99 |

|           2 | PATRICIA   | JOHNSON   |   5.99 |

|           2 | PATRICIA   | JOHNSON   |   5.99 |

|           2 | PATRICIA   | JOHNSON   |   2.99 |

|           2 | PATRICIA   | JOHNSON   |   5.99 |

|           2 | PATRICIA   | JOHNSON   |   4.99 |

|           2 | PATRICIA   | JOHNSON   |  10.99 |

|           2 | PATRICIA   | JOHNSON   |   0.99 |

|           2 | PATRICIA   | JOHNSON   |   6.99 |

|           2 | PATRICIA   | JOHNSON   |   6.99 |

|           2 | PATRICIA   | JOHNSON   |   2.99 |

|           2 | PATRICIA   | JOHNSON   |   0.99 |

|           2 | PATRICIA   | JOHNSON   |   0.99 |

|           2 | PATRICIA   | JOHNSON   |   5.99 |

|           2 | PATRICIA   | JOHNSON   |   6.99 |

|           2 | PATRICIA   | JOHNSON   |   2.99 |

|           2 | PATRICIA   | JOHNSON   |   2.99 |

|           2 | PATRICIA   | JOHNSON   |   2.99 |

|           2 | PATRICIA   | JOHNSON   |   4.99 |

|           2 | PATRICIA   | JOHNSON   |   5.99 |

|           2 | PATRICIA   | JOHNSON   |   4.99 |

|           2 | PATRICIA   | JOHNSON   |   4.99 |

|           3 | LINDA      | WILLIAMS  |   1.99 |

|           3 | LINDA      | WILLIAMS  |   2.99 |

|           3 | LINDA      | WILLIAMS  |   8.99 |

|           3 | LINDA      | WILLIAMS  |   6.99 |

|           3 | LINDA      | WILLIAMS  |   6.99 |

|           3 | LINDA      | WILLIAMS  |   2.99 |

|           3 | LINDA      | WILLIAMS  |   4.99 |

|           3 | LINDA      | WILLIAMS  |   4.99 |

|           3 | LINDA      | WILLIAMS  |   5.99 |

|           3 | LINDA      | WILLIAMS  |  10.99 |

|           3 | LINDA      | WILLIAMS  |   7.99 |

|           3 | LINDA      | WILLIAMS  |   6.99 |

|           3 | LINDA      | WILLIAMS  |   4.99 |

|           3 | LINDA      | WILLIAMS  |   4.99 |

|           3 | LINDA      | WILLIAMS  |   2.99 |

|           3 | LINDA      | WILLIAMS  |   1.99 |

|           3 | LINDA      | WILLIAMS  |   3.99 |

|           3 | LINDA      | WILLIAMS  |   2.99 |

|           3 | LINDA      | WILLIAMS  |   4.99 |

|           3 | LINDA      | WILLIAMS  |   5.99 |

|           3 | LINDA      | WILLIAMS  |   4.99 |

|           3 | LINDA      | WILLIAMS  |   8.99 |

|           3 | LINDA      | WILLIAMS  |   2.99 |

|           3 | LINDA      | WILLIAMS  |   8.99 |

|           3 | LINDA      | WILLIAMS  |   0.99 |

|           3 | LINDA      | WILLIAMS  |   2.99 |

|           4 | BARBARA    | JONES     |   4.99 |

|           4 | BARBARA    | JONES     |   0.99 |

|           4 | BARBARA    | JONES     |   2.99 |

|           4 | BARBARA    | JONES     |   0.99 |

|           4 | BARBARA    | JONES     |   0.99 |

|           4 | BARBARA    | JONES     |   5.99 |

|           4 | BARBARA    | JONES     |   2.99 |

|           4 | BARBARA    | JONES     |   2.99 |

|           4 | BARBARA    | JONES     |   3.99 |

|           4 | BARBARA    | JONES     |   5.99 |

|           4 | BARBARA    | JONES     |   5.99 |

|           4 | BARBARA    | JONES     |   0.99 |

|           4 | BARBARA    | JONES     |   2.99 |

|           4 | BARBARA    | JONES     |   4.99 |

|           4 | BARBARA    | JONES     |   2.99 |

|           4 | BARBARA    | JONES     |   8.99 |

|           4 | BARBARA    | JONES     |   1.99 |

|           4 | BARBARA    | JONES     |   2.99 |

|           4 | BARBARA    | JONES     |   6.99 |

|           4 | BARBARA    | JONES     |   4.99 |

|           4 | BARBARA    | JONES     |   2.99 |

|           4 | BARBARA    | JONES     |   1.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           5 | ELIZABETH  | BROWN     |   6.99 |

|           5 | ELIZABETH  | BROWN     |   1.99 |

|           5 | ELIZABETH  | BROWN     |   3.99 |

|           5 | ELIZABETH  | BROWN     |   2.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   2.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   2.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   5.99 |

|           5 | ELIZABETH  | BROWN     |   1.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           5 | ELIZABETH  | BROWN     |   8.99 |

|           5 | ELIZABETH  | BROWN     |   3.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           5 | ELIZABETH  | BROWN     |   3.99 |

|           5 | ELIZABETH  | BROWN     |   2.99 |

|           5 | ELIZABETH  | BROWN     |   1.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   3.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   4.99 |

|           5 | ELIZABETH  | BROWN     |   3.99 |

|           5 | ELIZABETH  | BROWN     |   9.99 |

|           5 | ELIZABETH  | BROWN     |   2.99 |

|           5 | ELIZABETH  | BROWN     |   1.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           5 | ELIZABETH  | BROWN     |   6.99 |

|           5 | ELIZABETH  | BROWN     |   6.99 |

|           5 | ELIZABETH  | BROWN     |   2.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           5 | ELIZABETH  | BROWN     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   4.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   3.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   5.99 |

|           6 | JENNIFER   | DAVIS     |   7.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   3.99 |

|           6 | JENNIFER   | DAVIS     |   6.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           6 | JENNIFER   | DAVIS     |   2.99 |

|           6 | JENNIFER   | DAVIS     |   6.99 |

|           6 | JENNIFER   | DAVIS     |   7.99 |

|           6 | JENNIFER   | DAVIS     |   4.99 |

|           6 | JENNIFER   | DAVIS     |   5.99 |

|           6 | JENNIFER   | DAVIS     |   0.99 |

|           7 | MARIA      | MILLER    |   5.99 |

|           7 | MARIA      | MILLER    |   0.99 |

|           7 | MARIA      | MILLER    |   2.99 |

|           7 | MARIA      | MILLER    |   4.99 |

|           7 | MARIA      | MILLER    |   5.99 |

|           7 | MARIA      | MILLER    |   0.99 |

|           7 | MARIA      | MILLER    |   2.99 |

|           7 | MARIA      | MILLER    |   0.99 |

|           7 | MARIA      | MILLER    |   4.99 |

|           7 | MARIA      | MILLER    |   0.99 |

|           7 | MARIA      | MILLER    |   5.99 |

|           7 | MARIA      | MILLER    |   2.99 |

|           7 | MARIA      | MILLER    |   5.99 |

|           7 | MARIA      | MILLER    |   4.99 |

|           7 | MARIA      | MILLER    |   8.99 |

|           7 | MARIA      | MILLER    |   7.99 |

|           7 | MARIA      | MILLER    |   1.99 |

|           7 | MARIA      | MILLER    |   2.99 |

|           7 | MARIA      | MILLER    |   3.99 |

|           7 | MARIA      | MILLER    |   5.99 |

|           7 | MARIA      | MILLER    |   7.99 |

|           7 | MARIA      | MILLER    |   6.99 |

|           7 | MARIA      | MILLER    |   5.99 |

|           7 | MARIA      | MILLER    |   4.99 |

|           7 | MARIA      | MILLER    |   4.99 |

|           7 | MARIA      | MILLER    |   3.99 |

|           7 | MARIA      | MILLER    |   7.99 |

+-------------+------------+-----------+--------+

200 rows in set (0.0285 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total

&#x20;                                      -> from customer a

&#x20;                                      -> left join payment b on a.customer\_id = b.customer\_id

&#x20;                                      -> group by a.customer\_id;

+-------------+-------------+--------------+--------+

| customer\_id | first\_name  | last\_name    | total  |

+-------------+-------------+--------------+--------+

|           1 | MARY        | SMITH        | 118.68 |

|           2 | PATRICIA    | JOHNSON      | 128.73 |

|           3 | LINDA       | WILLIAMS     | 135.74 |

|           4 | BARBARA     | JONES        |  81.78 |

|           5 | ELIZABETH   | BROWN        | 144.62 |

|           6 | JENNIFER    | DAVIS        |  93.72 |

|           7 | MARIA       | MILLER       | 151.67 |

|           8 | SUSAN       | WILSON       |  92.76 |

|           9 | MARGARET    | MOORE        |  89.77 |

|          10 | DOROTHY     | TAYLOR       |  99.75 |

|          11 | LISA        | ANDERSON     | 106.76 |

|          12 | NANCY       | THOMAS       | 103.72 |

|          13 | KAREN       | JACKSON      | 131.73 |

|          14 | BETTY       | WHITE        | 117.72 |

|          15 | HELEN       | HARRIS       | 134.68 |

|          16 | SANDRA      | MARTIN       | 120.71 |

|          17 | DONNA       | THOMPSON     |  98.79 |

|          18 | CAROL       | GARCIA       |  91.78 |

|          19 | RUTH        | MARTINEZ     | 125.76 |

|          20 | SHARON      | ROBINSON     | 115.70 |

|          21 | MICHELLE    | CLARK        | 155.65 |

|          22 | LAURA       | RODRIGUEZ    | 113.78 |

|          23 | SARAH       | LEWIS        | 119.70 |

|          24 | KIMBERLY    | LEE          |  95.75 |

|          25 | DEBORAH     | WALKER       | 115.71 |

|          26 | JESSICA     | HALL         | 152.66 |

|          27 | SHIRLEY     | ALLEN        | 126.69 |

|          28 | CYNTHIA     | YOUNG        | 111.68 |

|          29 | ANGELA      | HERNANDEZ    | 140.64 |

|          30 | MELISSA     | KING         | 123.66 |

|          31 | BRENDA      | WRIGHT       | 104.74 |

|          32 | AMY         | LOPEZ        | 127.71 |

|          33 | ANNA        | HILL         |  91.79 |

|          34 | REBECCA     | SCOTT        |  89.76 |

|          35 | VIRGINIA    | GREEN        | 129.68 |

|          36 | KATHLEEN    | ADAMS        |  92.73 |

|          37 | PAMELA      | BAKER        |  95.77 |

|          38 | MARTHA      | GONZALEZ     | 127.66 |

|          39 | DEBRA       | NELSON       | 141.71 |

|          40 | AMANDA      | CARTER       | 110.73 |

|          41 | STEPHANIE   | MITCHELL     | 118.75 |

|          42 | CAROLYN     | PEREZ        | 117.70 |

|          43 | CHRISTINE   | ROBERTS      |  99.76 |

|          44 | MARIE       | TURNER       | 114.74 |

|          45 | JANET       | PHILLIPS     | 127.73 |

|          46 | CATHERINE   | CAMPBELL     | 142.66 |

|          47 | FRANCES     | PARKER       | 108.78 |

|          48 | ANN         | EVANS        |  76.83 |

|          49 | JOYCE       | EDWARDS      | 130.72 |

|          50 | DIANE       | COLLINS      | 169.65 |

|          51 | ALICE       | STEWART      | 138.67 |

|          52 | JULIE       | SANCHEZ      | 107.71 |

|          53 | HEATHER     | MORRIS       | 115.70 |

|          54 | TERESA      | ROGERS       | 128.71 |

|          55 | DORIS       | REED         | 100.78 |

|          56 | GLORIA      | COOK         | 135.70 |

|          57 | EVELYN      | MORGAN       | 114.72 |

|          58 | JEAN        | BELL         | 115.73 |

|          59 | CHERYL      | MURPHY       | 133.73 |

|          60 | MILDRED     | BAILEY       |  98.75 |

|          61 | KATHERINE   | RIVERA       |  58.86 |

|          62 | JOAN        | COOPER       |  84.77 |

|          63 | ASHLEY      | RICHARDSON   | 112.75 |

|          64 | JUDITH      | COX          | 100.67 |

|          65 | ROSE        | HOWARD       | 103.78 |

|          66 | JANICE      | WARD         | 144.66 |

|          67 | KELLY       | TORRES       |  99.78 |

|          68 | NICOLE      | PETERSON     |  94.78 |

|          69 | JUDY        | GRAY         |  96.75 |

|          70 | CHRISTINA   | RAMIREZ      |  80.82 |

|          71 | KATHY       | JAMES        | 129.70 |

|          72 | THERESA     | WATSON       |  99.70 |

|          73 | BEVERLY     | BROOKS       |  97.76 |

|          74 | DENISE      | KELLY        | 103.73 |

|          75 | TAMMY       | SANDERS      | 155.59 |

|          76 | IRENE       | PRICE        |  77.77 |

|          77 | JANE        | BENNETT      | 100.72 |

|          78 | LORI        | WOOD         | 141.69 |

|          79 | RACHEL      | BARNES       |  84.78 |

|          80 | MARILYN     | ROSS         | 137.70 |

|          81 | ANDREA      | HENDERSON    |  93.78 |

|          82 | KATHRYN     | COLEMAN      | 130.74 |

|          83 | LOUISE      | JENKINS      | 101.75 |

|          84 | SARA        | PERRY        | 141.67 |

|          85 | ANNE        | POWELL       |  87.77 |

|          86 | JACQUELINE  | LONG         | 148.67 |

|          87 | WANDA       | PATTERSON    | 145.70 |

|          88 | BONNIE      | HUGHES       |  87.79 |

|          89 | JULIA       | FLORES       | 134.68 |

|          90 | RUBY        | WASHINGTON   | 110.72 |

|          91 | LOIS        | BUTLER       | 113.65 |

|          92 | TINA        | SIMMONS      | 133.72 |

|          93 | PHYLLIS     | FOSTER       |  91.77 |

|          94 | NORMA       | GONZALES     |  79.79 |

|          95 | PAULA       | BRYANT       |  77.82 |

|          96 | DIANA       | ALEXANDER    | 105.73 |

|          97 | ANNIE       | RUSSELL      |  58.82 |

|          98 | LILLIAN     | GRIFFIN      | 106.75 |

|          99 | EMILY       | DIAZ         |  91.76 |

|         100 | ROBIN       | HAYES        | 102.76 |

|         101 | PEGGY       | MYERS        |  96.76 |

|         102 | CRYSTAL     | FORD         | 137.67 |

|         103 | GLADYS      | HAMILTON     | 146.69 |

|         104 | RITA        | GRAHAM       |  92.76 |

|         105 | DAWN        | SULLIVAN     | 120.74 |

|         106 | CONNIE      | WALLACE      | 100.77 |

|         107 | FLORENCE    | WOODS        | 126.70 |

|         108 | TRACY       | COLE         | 132.70 |

|         109 | EDNA        | WEST         | 107.74 |

|         110 | TIFFANY     | JORDAN       |  59.86 |

|         111 | CARMEN      | OWENS        |  97.74 |

|         112 | ROSA        | REYNOLDS     | 133.70 |

|         113 | CINDY       | FISHER       | 113.71 |

|         114 | GRACE       | ELLIS        | 139.67 |

|         115 | WENDY       | HARRISON     |  91.70 |

|         116 | VICTORIA    | GIBSON       | 111.73 |

|         117 | EDITH       | MCDONALD     |  71.81 |

|         118 | KIM         | CRUZ         |  82.79 |

|         119 | SHERRY      | MARSHALL     | 153.66 |

|         120 | SYLVIA      | ORTIZ        | 143.68 |

|         121 | JOSEPHINE   | GOMEZ        | 109.74 |

|         122 | THELMA      | MURRAY       | 126.68 |

|         123 | SHANNON     | FREEMAN      | 100.76 |

|         124 | SHEILA      | WELLS        |  73.82 |

|         125 | ETHEL       | WEBB         | 135.68 |

|         126 | ELLEN       | SIMPSON      | 117.72 |

|         127 | ELAINE      | STEVENS      | 107.76 |

|         128 | MARJORIE    | TUCKER       | 127.68 |

|         129 | CARRIE      | PORTER       | 124.66 |

|         130 | CHARLOTTE   | HUNTER       |  93.76 |

|         131 | MONICA      | HICKS        | 128.70 |

|         132 | ESTHER      | CRAWFORD     |  95.72 |

|         133 | PAULINE     | HENRY        |  98.73 |

|         134 | EMMA        | BOYD         |  94.77 |

|         135 | JUANITA     | MASON        | 110.70 |

|         136 | ANITA       | MORALES      |  62.85 |

|         137 | RHONDA      | KENNEDY      | 194.61 |

|         138 | HAZEL       | WARREN       | 110.66 |

|         139 | AMBER       | DIXON        | 113.73 |

|         140 | EVA         | RAMOS        |  83.82 |

|         141 | DEBBIE      | REYES        | 130.68 |

|         142 | APRIL       | BURNS        |  94.74 |

|         143 | LESLIE      | GORDON       |  89.78 |

|         144 | CLARA       | SHAW         | 195.58 |

|         145 | LUCILLE     | HOLMES       | 108.72 |

|         146 | JAMIE       | RICE         | 139.71 |

|         147 | JOANNE      | ROBERTSON    | 127.66 |

|         148 | ELEANOR     | HUNT         | 216.54 |

|         149 | VALERIE     | BLACK        | 121.74 |

|         150 | DANIELLE    | DANIELS      | 105.75 |

|         151 | MEGAN       | PALMER       |  92.73 |

|         152 | ALICIA      | MILLS        |  83.79 |

|         153 | SUZANNE     | NICHOLS      |  94.76 |

|         154 | MICHELE     | GRANT        | 130.70 |

|         155 | GAIL        | KNIGHT       | 109.75 |

|         156 | BERTHA      | FERGUSON     | 101.75 |

|         157 | DARLENE     | ROSE         | 113.69 |

|         158 | VERONICA    | STONE        | 126.68 |

|         159 | JILL        | HAWKINS      |  68.79 |

|         160 | ERIN        | DUNN         | 106.73 |

|         161 | GERALDINE   | PERKINS      | 112.70 |

|         162 | LAUREN      | HUDSON       |  71.80 |

|         163 | CATHY       | SPENCER      | 122.71 |

|         164 | JOANN       | GARDNER      |  66.84 |

|         165 | LORRAINE    | STEPHENS     |  86.79 |

|         166 | LYNN        | PAYNE        | 123.72 |

|         167 | SALLY       | PIERCE       | 119.68 |

|         168 | REGINA      | BERRY        | 135.66 |

|         169 | ERICA       | MATTHEWS     |  95.78 |

|         170 | BEATRICE    | ARNOLD       | 119.74 |

|         171 | DOLORES     | WAGNER       | 114.74 |

|         172 | BERNICE     | WILLIS       | 145.67 |

|         173 | AUDREY      | RAY          | 119.71 |

|         174 | YVONNE      | WATKINS      |  92.79 |

|         175 | ANNETTE     | OLSON        |  98.76 |

|         176 | JUNE        | CARROLL      | 173.63 |

|         177 | SAMANTHA    | DUNCAN       |  71.77 |

|         178 | MARION      | SNYDER       | 194.61 |

|         179 | DANA        | HART         | 133.71 |

|         180 | STACY       | CUNNINGHAM   |  98.77 |

|         181 | ANA         | BRADLEY      | 174.66 |

|         182 | RENEE       | LANE         |  97.74 |

|         183 | IDA         | ANDREWS      |  76.77 |

|         184 | VIVIAN      | RUIZ         |  90.77 |

|         185 | ROBERTA     | HARPER       |  84.77 |

|         186 | HOLLY       | FOX          | 114.69 |

|         187 | BRITTANY    | RILEY        | 159.72 |

|         188 | MELANIE     | ARMSTRONG    |  92.75 |

|         189 | LORETTA     | CARPENTER    |  93.78 |

|         190 | YOLANDA     | WEAVER       | 110.73 |

|         191 | JEANETTE    | GREENE       |  74.80 |

|         192 | LAURIE      | LAWRENCE     |  99.77 |

|         193 | KATIE       | ELLIOTT      | 109.75 |

|         194 | KRISTEN     | CHAVEZ       |  87.82 |

|         195 | VANESSA     | SIMS         |  86.81 |

|         196 | ALMA        | AUSTIN       | 151.65 |

|         197 | SUE         | PETERS       | 154.60 |

|         198 | ELSIE       | KELLEY       | 141.63 |

|         199 | BETH        | FRANKLIN     | 103.75 |

|         200 | JEANNE      | LAWSON       | 136.73 |

|         201 | VICKI       | FIELDS       | 108.75 |

|         202 | CARLA       | GUTIERREZ    | 103.74 |

|         203 | TARA        | RYAN         |  88.80 |

|         204 | ROSEMARY    | SCHMIDT      | 147.65 |

|         205 | EILEEN      | CARR         |  80.82 |

|         206 | TERRI       | VASQUEZ      | 126.73 |

|         207 | GERTRUDE    | CASTILLO     | 137.66 |

|         208 | LUCY        | WHEELER      |  91.74 |

|         209 | TONYA       | CHAPMAN      | 161.68 |

|         210 | ELLA        | OLIVER       | 137.69 |

|         211 | STACEY      | MONTGOMERY   | 151.66 |

|         212 | WILMA       | RICHARDS     |  91.80 |

|         213 | GINA        | WILLIAMSON   | 111.72 |

|         214 | KRISTIN     | JOHNSTON     | 116.69 |

|         215 | JESSIE      | BANKS        |  91.74 |

|         216 | NATALIE     | MEYER        |  95.77 |

|         217 | AGNES       | BISHOP       |  98.77 |

|         218 | VERA        | MCCOY        |  67.82 |

|         219 | WILLIE      | HOWELL       | 101.74 |

|         220 | CHARLENE    | ALVAREZ      | 114.73 |

|         221 | BESSIE      | MORRISON     | 132.72 |

|         222 | DELORES     | HANSEN       |  91.79 |

|         223 | MELINDA     | FERNANDEZ    |  80.83 |

|         224 | PEARL       | GARZA        |  76.78 |

|         225 | ARLENE      | HARVEY       | 120.74 |

|         226 | MAUREEN     | LITTLE       |  87.79 |

|         227 | COLLEEN     | BURTON       |  87.76 |

|         228 | ALLISON     | STANLEY      |  92.73 |

|         229 | TAMARA      | NGUYEN       |  93.75 |

|         230 | JOY         | GEORGE       | 124.67 |

|         231 | GEORGIA     | JACOBS       | 110.74 |

|         232 | CONSTANCE   | REID         |  95.75 |

|         233 | LILLIE      | KIM          |  89.77 |

|         234 | CLAUDIA     | FULLER       | 111.74 |

|         235 | JACKIE      | LYNCH        |  93.75 |

|         236 | MARCIA      | DEAN         | 175.58 |

|         237 | TANYA       | GILBERT      | 144.67 |

|         238 | NELLIE      | GARRETT      |  94.79 |

|         239 | MINNIE      | ROMERO       | 142.66 |

|         240 | MARLENE     | WELCH        | 117.74 |

|         241 | HEIDI       | LARSON       | 122.66 |

|         242 | GLENDA      | FRAZIER      | 140.68 |

|         243 | LYDIA       | BURKE        |  82.76 |

|         244 | VIOLA       | HANSON       | 129.68 |

|         245 | COURTNEY    | DAY          | 132.68 |

|         246 | MARIAN      | MENDOZA      | 107.77 |

|         247 | STELLA      | MORENO       | 104.78 |

|         248 | CAROLINE    | BOWMAN       |  50.85 |

|         249 | DORA        | MEDINA       | 107.77 |

|         250 | JO          | FOWLER       |  73.80 |

|         251 | VICKIE      | BREWER       | 120.69 |

|         252 | MATTIE      | HOFFMAN      |  64.78 |

|         253 | TERRY       | CARLSON      | 127.71 |

|         254 | MAXINE      | SILVA        | 116.68 |

|         255 | IRMA        | PEARSON      |  70.82 |

|         256 | MABEL       | HOLLAND      | 112.70 |

|         257 | MARSHA      | DOUGLAS      | 151.63 |

|         258 | MYRTLE      | FLEMING      | 110.76 |

|         259 | LENA        | JENSEN       | 170.67 |

|         260 | CHRISTY     | VARGAS       | 122.69 |

|         261 | DEANNA      | BYRD         | 107.74 |

|         262 | PATSY       | DAVIDSON     | 119.72 |

|         263 | HILDA       | HOPKINS      | 122.71 |

|         264 | GWENDOLYN   | MAY          |  98.75 |

|         265 | JENNIE      | TERRY        | 133.71 |

|         266 | NORA        | HERRERA      | 118.72 |

|         267 | MARGIE      | WADE         | 159.64 |

|         268 | NINA        | SOTO         | 123.71 |

|         269 | CASSANDRA   | WALTERS      | 129.70 |

|         270 | LEAH        | CURTIS       | 104.75 |

|         271 | PENNY       | NEAL         |  68.82 |

|         272 | KAY         | CALDWELL     |  98.80 |

|         273 | PRISCILLA   | LOWE         | 157.65 |

|         274 | NAOMI       | JENNINGS     | 152.65 |

|         275 | CAROLE      | BARNETT      | 108.70 |

|         276 | BRANDY      | GRAVES       | 122.72 |

|         277 | OLGA        | JIMENEZ      | 144.68 |

|         278 | BILLIE      | HORTON       |  88.74 |

|         279 | DIANNE      | SHELTON      | 135.69 |

|         280 | TRACEY      | BARRETT      | 118.73 |

|         281 | LEONA       | OBRIEN       |  50.86 |

|         282 | JENNY       | CASTRO       | 103.73 |

|         283 | FELICIA     | SUTTON       |  86.72 |

|         284 | SONIA       | GREGORY      | 126.72 |

|         285 | MIRIAM      | MCKINNEY     | 135.74 |

|         286 | VELMA       | LUCAS        | 117.73 |

|         287 | BECKY       | MILES        | 115.71 |

|         288 | BOBBIE      | CRAIG        |  80.76 |

|         289 | VIOLET      | RODRIQUEZ    | 142.70 |

|         290 | KRISTINA    | CHAMBERS     | 109.72 |

|         291 | TONI        | HOLT         |  95.77 |

|         292 | MISTY       | LAMBERT      | 118.73 |

|         293 | MAE         | FLETCHER     | 158.69 |

|         294 | SHELLY      | WATTS        | 113.74 |

|         295 | DAISY       | BATES        | 162.62 |

|         296 | RAMONA      | HALE         | 129.70 |

|         297 | SHERRI      | RHODES       | 128.67 |

|         298 | ERIKA       | PENA         | 101.74 |

|         299 | JAMES       | GANNON       | 131.70 |

|         300 | JOHN        | FARNSWORTH   | 137.69 |

|         301 | ROBERT      | BAUGHMAN     |  92.79 |

|         302 | MICHAEL     | SILVERMAN    | 127.71 |

|         303 | WILLIAM     | SATTERFIELD  | 100.74 |

|         304 | DAVID       | ROYAL        | 115.74 |

|         305 | RICHARD     | MCCRARY      | 109.75 |

|         306 | CHARLES     | KOWALSKI     | 138.68 |

|         307 | JOSEPH      | JOY          | 134.70 |

|         308 | THOMAS      | GRIGSBY      | 105.75 |

|         309 | CHRISTOPHER | GRECO        | 147.69 |

|         310 | DANIEL      | CABRAL       |  97.80 |

|         311 | PAUL        | TROUT        | 120.77 |

|         312 | MARK        | RINEHART     | 104.74 |

|         313 | DONALD      | MAHON        |  89.77 |

|         314 | GEORGE      | LINTON       | 131.67 |

|         315 | KENNETH     | GOODEN       |  84.83 |

|         316 | STEVEN      | CURLEY       | 132.71 |

|         317 | EDWARD      | BAUGH        | 114.72 |

|         318 | BRIAN       | WYMAN        |  52.88 |

|         319 | RONALD      | WEINER       | 132.70 |

|         320 | ANTHONY     | SCHWAB       |  71.80 |

|         321 | KEVIN       | SCHULER      | 116.78 |

|         322 | JASON       | MORRISSEY    | 128.72 |

|         323 | MATTHEW     | MAHAN        | 114.69 |

|         324 | GARY        | COY          | 103.75 |

|         325 | TIMOTHY     | BUNN         |  91.78 |

|         326 | JOSE        | ANDREW       |  96.75 |

|         327 | LARRY       | THRASHER     | 112.74 |

|         328 | JEFFREY     | SPEAR        |  90.77 |

|         329 | FRANK       | WAGGONER     | 127.68 |

|         330 | SCOTT       | SHELLEY      |  94.75 |

|         331 | ERIC        | ROBERT       | 122.73 |

|         332 | STEPHEN     | QUALLS       | 118.72 |

|         333 | ANDREW      | PURDY        | 109.73 |

|         334 | RAYMOND     | MCWHORTER    | 135.70 |

|         335 | GREGORY     | MAULDIN      |  78.77 |

|         336 | JOSHUA      | MARK         | 119.70 |

|         337 | JERRY       | JORDON       | 143.71 |

|         338 | DENNIS      | GILMAN       | 114.72 |

|         339 | WALTER      | PERRYMAN     | 127.70 |

|         340 | PATRICK     | NEWSOM       | 119.69 |

|         341 | PETER       | MENARD       | 106.77 |

|         342 | HAROLD      | MARTINO      | 130.68 |

|         343 | DOUGLAS     | GRAF         | 114.75 |

|         344 | HENRY       | BILLINGSLEY  |  73.82 |

|         345 | CARL        | ARTIS        | 106.77 |

|         346 | ARTHUR      | SIMPKINS     | 155.68 |

|         347 | RYAN        | SALISBURY    | 142.70 |

|         348 | ROGER       | QUINTANILLA  | 146.64 |

|         349 | JOE         | GILLILAND    | 138.71 |

|         350 | JUAN        | FRALEY       |  73.77 |

|         351 | JACK        | FOUST        |  89.76 |

|         352 | ALBERT      | CROUSE       |  99.77 |

|         353 | JONATHAN    | SCARBOROUGH  |  72.82 |

|         354 | JUSTIN      | NGO          | 129.64 |

|         355 | TERRY       | GRISSOM      |  72.80 |

|         356 | GERALD      | FULTZ        | 121.70 |

|         357 | KEITH       | RICO         |  89.74 |

|         358 | SAMUEL      | MARLOW       |  80.79 |

|         359 | WILLIE      | MARKHAM      | 101.75 |

|         360 | RALPH       | MADRIGAL     | 150.66 |

|         361 | LAWRENCE    | LAWTON       | 100.69 |

|         362 | NICHOLAS    | BARFIELD     | 145.68 |

|         363 | ROY         | WHITING      | 143.71 |

|         364 | BENJAMIN    | VARNEY       |  95.77 |

|         365 | BRUCE       | SCHWARZ      | 103.77 |

|         366 | BRANDON     | HUEY         | 152.63 |

|         367 | ADAM        | GOOCH        | 101.78 |

|         368 | HARRY       | ARCE         | 157.65 |

|         369 | FRED        | WHEAT        |  88.75 |

|         370 | WAYNE       | TRUONG       |  70.81 |

|         371 | BILLY       | POULIN       | 149.65 |

|         372 | STEVE       | MACKENZIE    | 158.66 |

|         373 | LOUIS       | LEONE        | 161.65 |

|         374 | JEREMY      | HURTADO      | 103.72 |

|         375 | AARON       | SELBY        | 110.76 |

|         376 | RANDY       | GAITHER      | 110.72 |

|         377 | HOWARD      | FORTNER      |  93.74 |

|         378 | EUGENE      | CULPEPPER    |  71.81 |

|         379 | CARLOS      | COUGHLIN     | 106.77 |

|         380 | RUSSELL     | BRINSON      | 136.64 |

|         381 | BOBBY       | BOUDREAU     | 106.65 |

|         382 | VICTOR      | BARKLEY      |  91.76 |

|         383 | MARTIN      | BALES        | 103.73 |

|         384 | ERNEST      | STEPP        |  89.75 |

|         385 | PHILLIP     | HOLM         | 101.74 |

|         386 | TODD        | TAN          | 117.71 |

|         387 | JESSE       | SCHILLING    | 101.74 |

|         388 | CRAIG       | MORRELL      | 124.70 |

|         389 | ALAN        | KAHN         | 124.74 |

|         390 | SHAWN       | HEATON       | 152.67 |

|         391 | CLARENCE    | GAMEZ        | 104.70 |

|         392 | SEAN        | DOUGLASS     |  91.77 |

|         393 | PHILIP      | CAUSEY       | 121.69 |

|         394 | CHRIS       | BROTHERS     |  84.78 |

|         395 | JOHNNY      | TURPIN       |  57.81 |

|         396 | EARL        | SHANKS       | 111.73 |

|         397 | JIMMY       | SCHRADER     | 105.71 |

|         398 | ANTONIO     | MEEK         |  78.84 |

|         399 | DANNY       | ISOM         |  91.79 |

|         400 | BRYAN       | HARDISON     | 124.72 |

|         401 | TONY        | CARRANZA     |  74.78 |

|         402 | LUIS        | YANEZ        |  79.80 |

|         403 | MIKE        | WAY          | 166.65 |

|         404 | STANLEY     | SCROGGINS    | 139.70 |

|         405 | LEONARD     | SCHOFIELD    | 109.68 |

|         406 | NATHAN      | RUNYON       | 122.68 |

|         407 | DALE        | RATCLIFF     | 112.73 |

|         408 | MANUEL      | MURRELL      | 116.70 |

|         409 | RODNEY      | MOELLER      | 104.77 |

|         410 | CURTIS      | IRBY         | 167.62 |

|         411 | NORMAN      | CURRIER      |  80.74 |

|         412 | ALLEN       | BUTTERFIELD  |  85.79 |

|         413 | MARVIN      | YEE          |  75.79 |

|         414 | VINCENT     | RALSTON      | 105.75 |

|         415 | GLENN       | PULLEN       |  93.77 |

|         416 | JEFFERY     | PINSON       | 121.69 |

|         417 | TRAVIS      | ESTEP        | 110.75 |

|         418 | JEFF        | EAST         | 107.70 |

|         419 | CHAD        | CARBONE      |  89.75 |

|         420 | JACOB       | LANCE        |  79.79 |

|         421 | LEE         | HAWKS        | 119.73 |

|         422 | MELVIN      | ELLINGTON    |  97.74 |

|         423 | ALFRED      | CASILLAS     | 120.74 |

|         424 | KYLE        | SPURLOCK     | 110.70 |

|         425 | FRANCIS     | SIKES        | 104.74 |

|         426 | BRADLEY     | MOTLEY       | 126.73 |

|         427 | JESUS       | MCCARTNEY    | 114.76 |

|         428 | HERBERT     | KRUGER       |  78.80 |

|         429 | FREDERICK   | ISBELL       | 105.79 |

|         430 | RAY         | HOULE        |  79.78 |

|         431 | JOEL        | FRANCISCO    |  95.77 |

|         432 | EDWIN       | BURK         | 116.77 |

|         433 | DON         | BONE         | 133.75 |

|         434 | EDDIE       | TOMLIN       | 128.73 |

|         435 | RICKY       | SHELBY       |  91.75 |

|         436 | TROY        | QUIGLEY      | 144.70 |

|         437 | RANDALL     | NEUMANN      |  99.77 |

|         438 | BARRY       | LOVELACE     | 134.67 |

|         439 | ALEXANDER   | FENNELL      | 151.64 |

|         440 | BERNARD     | COLBY        |  88.78 |

|         441 | MARIO       | CHEATHAM     | 112.72 |

|         442 | LEROY       | BUSTAMANTE   | 118.68 |

|         443 | FRANCISCO   | SKIDMORE     |  98.78 |

|         444 | MARCUS      | HIDALGO      | 115.70 |

|         445 | MICHEAL     | FORMAN       | 102.74 |

|         446 | THEODORE    | CULP         | 116.69 |

|         447 | CLIFFORD    | BOWENS       | 113.71 |

|         448 | MIGUEL      | BETANCOURT   | 135.71 |

|         449 | OSCAR       | AQUINO       |  99.80 |

|         450 | JAY         | ROBB         |  89.74 |

|         451 | JIM         | REA          | 128.67 |

|         452 | TOM         | MILNER       | 107.68 |

|         453 | CALVIN      | MARTEL       | 111.77 |

|         454 | ALEX        | GRESHAM      | 151.67 |

|         455 | JON         | WILES        |  87.76 |

|         456 | RONNIE      | RICKETTS     | 100.75 |

|         457 | BILL        | GAVIN        | 114.72 |

|         458 | LLOYD       | DOWD         |  66.81 |

|         459 | TOMMY       | COLLAZO      | 186.62 |

|         460 | LEON        | BOSTIC       | 109.75 |

|         461 | DEREK       | BLAKELY      |  97.72 |

|         462 | WARREN      | SHERROD      | 159.67 |

|         463 | DARRELL     | POWER        |  91.75 |

|         464 | JEROME      | KENYON       |  73.84 |

|         465 | FLOYD       | GANDY        |  69.83 |

|         466 | LEO         | EBERT        | 104.77 |

|         467 | ALVIN       | DELOACH      | 139.71 |

|         468 | TIM         | CARY         | 175.61 |

|         469 | WESLEY      | BULL         | 177.60 |

|         470 | GORDON      | ALLARD       | 160.68 |

|         471 | DEAN        | SAUER        | 109.73 |

|         472 | GREG        | ROBINS       | 141.70 |

|         473 | JORGE       | OLIVARES     | 134.66 |

|         474 | DUSTIN      | GILLETTE     | 100.74 |

|         475 | PEDRO       | CHESTNUT     | 103.76 |

|         476 | DERRICK     | BOURQUE      |  95.78 |

|         477 | DAN         | PAINE        | 109.78 |

|         478 | LEWIS       | LYMAN        |  86.81 |

|         479 | ZACHARY     | HITE         | 146.69 |

|         480 | COREY       | HAUSER       | 101.78 |

|         481 | HERMAN      | DEVORE       | 115.71 |

|         482 | MAURICE     | CRAWLEY      | 138.71 |

|         483 | VERNON      | CHAPA        |  88.82 |

|         484 | ROBERTO     | VU           | 139.70 |

|         485 | CLYDE       | TOBIAS       | 115.71 |

|         486 | GLEN        | TALBERT      | 113.74 |

|         487 | HECTOR      | POINDEXTER   | 119.74 |

|         488 | SHANE       | MILLARD      |  95.78 |

|         489 | RICARDO     | MEADOR       |  99.79 |

|         490 | SAM         | MCDUFFIE     | 117.76 |

|         491 | RICK        | MATTOX       | 124.73 |

|         492 | LESTER      | KRAUS        |  65.84 |

|         493 | BRENT       | HARKINS      | 112.77 |

|         494 | RAMON       | CHOATE       | 140.69 |

|         495 | CHARLIE     | BESS         | 120.74 |

|         496 | TYLER       | WREN         |  88.79 |

|         497 | GILBERT     | SLEDGE       | 129.72 |

|         498 | GENE        | SANBORN      |  97.73 |

|         499 | MARC        | OUTLAW       | 123.70 |

|         500 | REGINALD    | KINDER       | 115.72 |

|         501 | RUBEN       | GEARY        |  89.79 |

|         502 | BRETT       | CORNWELL     | 138.66 |

|         503 | ANGEL       | BARCLAY      | 115.68 |

|         504 | NATHANIEL   | ADAM         | 133.72 |

|         505 | RAFAEL      | ABNEY        |  97.79 |

|         506 | LESLIE      | SEWARD       | 152.65 |

|         507 | EDGAR       | RHOADS       |  95.75 |

|         508 | MILTON      | HOWLAND      | 127.75 |

|         509 | RAUL        | FORTIER      | 100.80 |

|         510 | BEN         | EASTER       | 122.74 |

|         511 | CHESTER     | BENNER       |  99.76 |

|         512 | CECIL       | VINES        | 115.74 |

|         513 | DUANE       | TUBBS        | 148.69 |

|         514 | FRANKLIN    | TROUTMAN     |  74.78 |

|         515 | ANDRE       | RAPP         | 126.72 |

|         516 | ELMER       | NOE          |  98.74 |

|         517 | BRAD        | MCCURDY      | 105.75 |

|         518 | GABRIEL     | HARDER       | 111.74 |

|         519 | RON         | DELUCA       | 103.77 |

|         520 | MITCHELL    | WESTMORELAND | 134.68 |

|         521 | ROLAND      | SOUTH        |  80.77 |

|         522 | ARNOLD      | HAVENS       | 167.67 |

|         523 | HARVEY      | GUAJARDO     |  93.78 |

|         524 | JARED       | ELY          |  87.81 |

|         525 | ADRIAN      | CLARY        |  74.81 |

|         526 | KARL        | SEAL         | 221.55 |

|         527 | CORY        | MEEHAN       |  81.76 |

|         528 | CLAUDE      | HERZOG       | 111.75 |

|         529 | ERIK        | GUILLEN      | 118.71 |

|         530 | DARRYL      | ASHCRAFT     |  76.77 |

|         531 | JAMIE       | WAUGH        | 118.75 |

|         532 | NEIL        | RENNER       | 152.68 |

|         533 | JESSIE      | MILAM        | 141.67 |

|         534 | CHRISTIAN   | JUNG         |  88.76 |

|         535 | JAVIER      | ELROD        | 135.68 |

|         536 | FERNANDO    | CHURCHILL    | 117.75 |

|         537 | CLINTON     | BUFORD       | 103.75 |

|         538 | TED         | BREAUX       | 117.71 |

|         539 | MATHEW      | BOLIN        |  90.78 |

|         540 | TYRONE      | ASHER        | 112.76 |

|         541 | DARREN      | WINDHAM      | 108.76 |

|         542 | LONNIE      | TIRADO       |  94.82 |

|         543 | LANCE       | PEMBERTON    |  82.78 |

|         544 | CODY        | NOLEN        |  98.78 |

|         545 | JULIO       | NOLAND       |  89.79 |

|         546 | KELLY       | KNOTT        | 107.74 |

|         547 | KURT        | EMMONS       |  99.77 |

|         548 | ALLAN       | CORNISH      |  79.81 |

|         549 | NELSON      | CHRISTENSON  |  77.80 |

|         550 | GUY         | BROWNLEE     | 159.68 |

|         551 | CLAYTON     | BARBEE       |  96.74 |

|         552 | HUGH        | WALDROP      |  90.79 |

|         553 | MAX         | PITT         | 107.76 |

|         554 | DWAYNE      | OLVERA       | 101.78 |

|         555 | DWIGHT      | LOMBARDI     |  74.83 |

|         556 | ARMANDO     | GRUBER       |  83.79 |

|         557 | FELIX       | GAFFNEY      |  73.76 |

|         558 | JIMMIE      | EGGLESTON    | 135.72 |

|         559 | EVERETT     | BANDA        | 110.72 |

|         560 | JORDAN      | ARCHULETA    | 132.70 |

|         561 | IAN         | STILL        |  96.73 |

|         562 | WALLACE     | SLONE        | 109.75 |

|         563 | KEN         | PREWITT      | 110.71 |

|         564 | BOB         | PFEIFFER     |  91.76 |

|         565 | JAIME       | NETTLES      | 126.71 |

|         566 | CASEY       | MENA         | 141.66 |

|         567 | ALFREDO     | MCADAMS      |  85.80 |

|         568 | ALBERTO     | HENNING      |  66.79 |

|         569 | DAVE        | GARDINER     | 134.68 |

|         570 | IVAN        | CROMWELL     |  99.74 |

|         571 | JOHNNIE     | CHISHOLM     | 121.76 |

|         572 | SIDNEY      | BURLESON     | 108.75 |

|         573 | BYRON       | BOX          | 120.71 |

|         574 | JULIAN      | VEST         | 109.72 |

|         575 | ISAAC       | OGLESBY      | 126.71 |

|         576 | MORRIS      | MCCARTER     | 139.66 |

|         577 | CLIFTON     | MALCOLM      | 118.72 |

|         578 | WILLARD     | LUMPKIN      |  96.78 |

|         579 | DARYL       | LARUE        | 111.73 |

|         580 | ROSS        | GREY         |  99.73 |

|         581 | VIRGIL      | WOFFORD      | 107.73 |

|         582 | ANDY        | VANHORN      | 113.75 |

|         583 | MARSHALL    | THORN        | 117.77 |

|         584 | SALVADOR    | TEEL         | 129.70 |

|         585 | PERRY       | SWAFFORD     | 117.76 |

|         586 | KIRK        | STCLAIR      |  64.81 |

|         587 | SERGIO      | STANFIELD    | 108.74 |

|         588 | MARION      | OCAMPO       | 115.71 |

|         589 | TRACY       | HERRMANN     | 129.72 |

|         590 | SETH        | HANNON       | 112.75 |

|         591 | KENT        | ARSENAULT    | 134.73 |

|         592 | TERRANCE    | ROUSH        | 111.71 |

|         593 | RENE        | MCALISTER    | 113.74 |

|         594 | EDUARDO     | HIATT        | 130.73 |

|         595 | TERRENCE    | GUNDERSON    | 117.70 |

|         596 | ENRIQUE     | FORSYTHE     |  96.72 |

|         597 | FREDDIE     | DUGGAN       |  99.75 |

|         598 | WADE        | DELVALLE     |  83.78 |

|         599 | AUSTIN      | CINTRON      |  83.81 |

|         600 | Larry       | Cabirria     |   NULL |

|         601 | Daniel      | Rascon       |   NULL |

|         602 | Luis        | Meza         |   NULL |

+-------------+-------------+--------------+--------+

602 rows in set (0.0434 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.customer\_id, a.first\_name, a.last\_name, count(\*) as num\_pagos from customer a  left join payment b on a.customer\_id = b.customer\_id group by a.customer\_id;

+-------------+-------------+--------------+-----------+

| customer\_id | first\_name  | last\_name    | num\_pagos |

+-------------+-------------+--------------+-----------+

|           1 | MARY        | SMITH        |        32 |

|           2 | PATRICIA    | JOHNSON      |        27 |

|           3 | LINDA       | WILLIAMS     |        26 |

|           4 | BARBARA     | JONES        |        22 |

|           5 | ELIZABETH   | BROWN        |        38 |

|           6 | JENNIFER    | DAVIS        |        28 |

|           7 | MARIA       | MILLER       |        33 |

|           8 | SUSAN       | WILSON       |        24 |

|           9 | MARGARET    | MOORE        |        23 |

|          10 | DOROTHY     | TAYLOR       |        25 |

|          11 | LISA        | ANDERSON     |        24 |

|          12 | NANCY       | THOMAS       |        28 |

|          13 | KAREN       | JACKSON      |        27 |

|          14 | BETTY       | WHITE        |        28 |

|          15 | HELEN       | HARRIS       |        32 |

|          16 | SANDRA      | MARTIN       |        29 |

|          17 | DONNA       | THOMPSON     |        21 |

|          18 | CAROL       | GARCIA       |        22 |

|          19 | RUTH        | MARTINEZ     |        24 |

|          20 | SHARON      | ROBINSON     |        30 |

|          21 | MICHELLE    | CLARK        |        35 |

|          22 | LAURA       | RODRIGUEZ    |        22 |

|          23 | SARAH       | LEWIS        |        30 |

|          24 | KIMBERLY    | LEE          |        25 |

|          25 | DEBORAH     | WALKER       |        29 |

|          26 | JESSICA     | HALL         |        34 |

|          27 | SHIRLEY     | ALLEN        |        31 |

|          28 | CYNTHIA     | YOUNG        |        32 |

|          29 | ANGELA      | HERNANDEZ    |        36 |

|          30 | MELISSA     | KING         |        34 |

|          31 | BRENDA      | WRIGHT       |        26 |

|          32 | AMY         | LOPEZ        |        29 |

|          33 | ANNA        | HILL         |        21 |

|          34 | REBECCA     | SCOTT        |        24 |

|          35 | VIRGINIA    | GREEN        |        32 |

|          36 | KATHLEEN    | ADAMS        |        27 |

|          37 | PAMELA      | BAKER        |        23 |

|          38 | MARTHA      | GONZALEZ     |        34 |

|          39 | DEBRA       | NELSON       |        29 |

|          40 | AMANDA      | CARTER       |        27 |

|          41 | STEPHANIE   | MITCHELL     |        25 |

|          42 | CAROLYN     | PEREZ        |        30 |

|          43 | CHRISTINE   | ROBERTS      |        24 |

|          44 | MARIE       | TURNER       |        26 |

|          45 | JANET       | PHILLIPS     |        27 |

|          46 | CATHERINE   | CAMPBELL     |        34 |

|          47 | FRANCES     | PARKER       |        22 |

|          48 | ANN         | EVANS        |        17 |

|          49 | JOYCE       | EDWARDS      |        28 |

|          50 | DIANE       | COLLINS      |        35 |

|          51 | ALICE       | STEWART      |        33 |

|          52 | JULIE       | SANCHEZ      |        29 |

|          53 | HEATHER     | MORRIS       |        30 |

|          54 | TERESA      | ROGERS       |        29 |

|          55 | DORIS       | REED         |        22 |

|          56 | GLORIA      | COOK         |        30 |

|          57 | EVELYN      | MORGAN       |        28 |

|          58 | JEAN        | BELL         |        27 |

|          59 | CHERYL      | MURPHY       |        27 |

|          60 | MILDRED     | BAILEY       |        25 |

|          61 | KATHERINE   | RIVERA       |        14 |

|          62 | JOAN        | COOPER       |        23 |

|          63 | ASHLEY      | RICHARDSON   |        25 |

|          64 | JUDITH      | COX          |        33 |

|          65 | ROSE        | HOWARD       |        22 |

|          66 | JANICE      | WARD         |        34 |

|          67 | KELLY       | TORRES       |        22 |

|          68 | NICOLE      | PETERSON     |        22 |

|          69 | JUDY        | GRAY         |        25 |

|          70 | CHRISTINA   | RAMIREZ      |        18 |

|          71 | KATHY       | JAMES        |        30 |

|          72 | THERESA     | WATSON       |        30 |

|          73 | BEVERLY     | BROOKS       |        24 |

|          74 | DENISE      | KELLY        |        27 |

|          75 | TAMMY       | SANDERS      |        41 |

|          76 | IRENE       | PRICE        |        23 |

|          77 | JANE        | BENNETT      |        28 |

|          78 | LORI        | WOOD         |        31 |

|          79 | RACHEL      | BARNES       |        22 |

|          80 | MARILYN     | ROSS         |        30 |

|          81 | ANDREA      | HENDERSON    |        22 |

|          82 | KATHRYN     | COLEMAN      |        26 |

|          83 | LOUISE      | JENKINS      |        25 |

|          84 | SARA        | PERRY        |        33 |

|          85 | ANNE        | POWELL       |        23 |

|          86 | JACQUELINE  | LONG         |        33 |

|          87 | WANDA       | PATTERSON    |        30 |

|          88 | BONNIE      | HUGHES       |        21 |

|          89 | JULIA       | FLORES       |        32 |

|          90 | RUBY        | WASHINGTON   |        28 |

|          91 | LOIS        | BUTLER       |        35 |

|          92 | TINA        | SIMMONS      |        28 |

|          93 | PHYLLIS     | FOSTER       |        23 |

|          94 | NORMA       | GONZALES     |        21 |

|          95 | PAULA       | BRYANT       |        18 |

|          96 | DIANA       | ALEXANDER    |        27 |

|          97 | ANNIE       | RUSSELL      |        18 |

|          98 | LILLIAN     | GRIFFIN      |        25 |

|          99 | EMILY       | DIAZ         |        24 |

|         100 | ROBIN       | HAYES        |        24 |

|         101 | PEGGY       | MYERS        |        24 |

|         102 | CRYSTAL     | FORD         |        33 |

|         103 | GLADYS      | HAMILTON     |        31 |

|         104 | RITA        | GRAHAM       |        24 |

|         105 | DAWN        | SULLIVAN     |        26 |

|         106 | CONNIE      | WALLACE      |        23 |

|         107 | FLORENCE    | WOODS        |        30 |

|         108 | TRACY       | COLE         |        30 |

|         109 | EDNA        | WEST         |        26 |

|         110 | TIFFANY     | JORDAN       |        14 |

|         111 | CARMEN      | OWENS        |        26 |

|         112 | ROSA        | REYNOLDS     |        30 |

|         113 | CINDY       | FISHER       |        29 |

|         114 | GRACE       | ELLIS        |        33 |

|         115 | WENDY       | HARRISON     |        30 |

|         116 | VICTORIA    | GIBSON       |        27 |

|         117 | EDITH       | MCDONALD     |        19 |

|         118 | KIM         | CRUZ         |        21 |

|         119 | SHERRY      | MARSHALL     |        34 |

|         120 | SYLVIA      | ORTIZ        |        32 |

|         121 | JOSEPHINE   | GOMEZ        |        26 |

|         122 | THELMA      | MURRAY       |        32 |

|         123 | SHANNON     | FREEMAN      |        24 |

|         124 | SHEILA      | WELLS        |        18 |

|         125 | ETHEL       | WEBB         |        32 |

|         126 | ELLEN       | SIMPSON      |        28 |

|         127 | ELAINE      | STEVENS      |        24 |

|         128 | MARJORIE    | TUCKER       |        32 |

|         129 | CARRIE      | PORTER       |        34 |

|         130 | CHARLOTTE   | HUNTER       |        24 |

|         131 | MONICA      | HICKS        |        30 |

|         132 | ESTHER      | CRAWFORD     |        28 |

|         133 | PAULINE     | HENRY        |        27 |

|         134 | EMMA        | BOYD         |        23 |

|         135 | JUANITA     | MASON        |        30 |

|         136 | ANITA       | MORALES      |        15 |

|         137 | RHONDA      | KENNEDY      |        39 |

|         138 | HAZEL       | WARREN       |        34 |

|         139 | AMBER       | DIXON        |        27 |

|         140 | EVA         | RAMOS        |        18 |

|         141 | DEBBIE      | REYES        |        32 |

|         142 | APRIL       | BURNS        |        26 |

|         143 | LESLIE      | GORDON       |        22 |

|         144 | CLARA       | SHAW         |        42 |

|         145 | LUCILLE     | HOLMES       |        28 |

|         146 | JAMIE       | RICE         |        29 |

|         147 | JOANNE      | ROBERTSON    |        34 |

|         148 | ELEANOR     | HUNT         |        46 |

|         149 | VALERIE     | BLACK        |        26 |

|         150 | DANIELLE    | DANIELS      |        25 |

|         151 | MEGAN       | PALMER       |        27 |

|         152 | ALICIA      | MILLS        |        21 |

|         153 | SUZANNE     | NICHOLS      |        24 |

|         154 | MICHELE     | GRANT        |        30 |

|         155 | GAIL        | KNIGHT       |        25 |

|         156 | BERTHA      | FERGUSON     |        25 |

|         157 | DARLENE     | ROSE         |        31 |

|         158 | VERONICA    | STONE        |        32 |

|         159 | JILL        | HAWKINS      |        21 |

|         160 | ERIN        | DUNN         |        27 |

|         161 | GERALDINE   | PERKINS      |        30 |

|         162 | LAUREN      | HUDSON       |        20 |

|         163 | CATHY       | SPENCER      |        29 |

|         164 | JOANN       | GARDNER      |        16 |

|         165 | LORRAINE    | STEPHENS     |        21 |

|         166 | LYNN        | PAYNE        |        28 |

|         167 | SALLY       | PIERCE       |        32 |

|         168 | REGINA      | BERRY        |        34 |

|         169 | ERICA       | MATTHEWS     |        22 |

|         170 | BEATRICE    | ARNOLD       |        26 |

|         171 | DOLORES     | WAGNER       |        26 |

|         172 | BERNICE     | WILLIS       |        33 |

|         173 | AUDREY      | RAY          |        29 |

|         174 | YVONNE      | WATKINS      |        21 |

|         175 | ANNETTE     | OLSON        |        24 |

|         176 | JUNE        | CARROLL      |        37 |

|         177 | SAMANTHA    | DUNCAN       |        23 |

|         178 | MARION      | SNYDER       |        39 |

|         179 | DANA        | HART         |        29 |

|         180 | STACY       | CUNNINGHAM   |        23 |

|         181 | ANA         | BRADLEY      |        34 |

|         182 | RENEE       | LANE         |        26 |

|         183 | IDA         | ANDREWS      |        23 |

|         184 | VIVIAN      | RUIZ         |        23 |

|         185 | ROBERTA     | HARPER       |        23 |

|         186 | HOLLY       | FOX          |        31 |

|         187 | BRITTANY    | RILEY        |        28 |

|         188 | MELANIE     | ARMSTRONG    |        25 |

|         189 | LORETTA     | CARPENTER    |        22 |

|         190 | YOLANDA     | WEAVER       |        27 |

|         191 | JEANETTE    | GREENE       |        20 |

|         192 | LAURIE      | LAWRENCE     |        23 |

|         193 | KATIE       | ELLIOTT      |        25 |

|         194 | KRISTEN     | CHAVEZ       |        18 |

|         195 | VANESSA     | SIMS         |        19 |

|         196 | ALMA        | AUSTIN       |        35 |

|         197 | SUE         | PETERS       |        40 |

|         198 | ELSIE       | KELLEY       |        37 |

|         199 | BETH        | FRANKLIN     |        25 |

|         200 | JEANNE      | LAWSON       |        27 |

|         201 | VICKI       | FIELDS       |        25 |

|         202 | CARLA       | GUTIERREZ    |        26 |

|         203 | TARA        | RYAN         |        20 |

|         204 | ROSEMARY    | SCHMIDT      |        35 |

|         205 | EILEEN      | CARR         |        18 |

|         206 | TERRI       | VASQUEZ      |        27 |

|         207 | GERTRUDE    | CASTILLO     |        34 |

|         208 | LUCY        | WHEELER      |        26 |

|         209 | TONYA       | CHAPMAN      |        32 |

|         210 | ELLA        | OLIVER       |        31 |

|         211 | STACEY      | MONTGOMERY   |        34 |

|         212 | WILMA       | RICHARDS     |        20 |

|         213 | GINA        | WILLIAMSON   |        28 |

|         214 | KRISTIN     | JOHNSTON     |        31 |

|         215 | JESSIE      | BANKS        |        26 |

|         216 | NATALIE     | MEYER        |        23 |

|         217 | AGNES       | BISHOP       |        23 |

|         218 | VERA        | MCCOY        |        18 |

|         219 | WILLIE      | HOWELL       |        26 |

|         220 | CHARLENE    | ALVAREZ      |        27 |

|         221 | BESSIE      | MORRISON     |        28 |

|         222 | DELORES     | HANSEN       |        21 |

|         223 | MELINDA     | FERNANDEZ    |        17 |

|         224 | PEARL       | GARZA        |        22 |

|         225 | ARLENE      | HARVEY       |        26 |

|         226 | MAUREEN     | LITTLE       |        21 |

|         227 | COLLEEN     | BURTON       |        24 |

|         228 | ALLISON     | STANLEY      |        27 |

|         229 | TAMARA      | NGUYEN       |        25 |

|         230 | JOY         | GEORGE       |        33 |

|         231 | GEORGIA     | JACOBS       |        26 |

|         232 | CONSTANCE   | REID         |        25 |

|         233 | LILLIE      | KIM          |        23 |

|         234 | CLAUDIA     | FULLER       |        26 |

|         235 | JACKIE      | LYNCH        |        25 |

|         236 | MARCIA      | DEAN         |        42 |

|         237 | TANYA       | GILBERT      |        33 |

|         238 | NELLIE      | GARRETT      |        21 |

|         239 | MINNIE      | ROMERO       |        34 |

|         240 | MARLENE     | WELCH        |        26 |

|         241 | HEIDI       | LARSON       |        34 |

|         242 | GLENDA      | FRAZIER      |        32 |

|         243 | LYDIA       | BURKE        |        24 |

|         244 | VIOLA       | HANSON       |        32 |

|         245 | COURTNEY    | DAY          |        32 |

|         246 | MARIAN      | MENDOZA      |        23 |

|         247 | STELLA      | MORENO       |        22 |

|         248 | CAROLINE    | BOWMAN       |        15 |

|         249 | DORA        | MEDINA       |        23 |

|         250 | JO          | FOWLER       |        20 |

|         251 | VICKIE      | BREWER       |        31 |

|         252 | MATTIE      | HOFFMAN      |        22 |

|         253 | TERRY       | CARLSON      |        29 |

|         254 | MAXINE      | SILVA        |        32 |

|         255 | IRMA        | PEARSON      |        18 |

|         256 | MABEL       | HOLLAND      |        30 |

|         257 | MARSHA      | DOUGLAS      |        37 |

|         258 | MYRTLE      | FLEMING      |        24 |

|         259 | LENA        | JENSEN       |        33 |

|         260 | CHRISTY     | VARGAS       |        31 |

|         261 | DEANNA      | BYRD         |        26 |

|         262 | PATSY       | DAVIDSON     |        28 |

|         263 | HILDA       | HOPKINS      |        29 |

|         264 | GWENDOLYN   | MAY          |        25 |

|         265 | JENNIE      | TERRY        |        29 |

|         266 | NORA        | HERRERA      |        28 |

|         267 | MARGIE      | WADE         |        36 |

|         268 | NINA        | SOTO         |        29 |

|         269 | CASSANDRA   | WALTERS      |        30 |

|         270 | LEAH        | CURTIS       |        25 |

|         271 | PENNY       | NEAL         |        18 |

|         272 | KAY         | CALDWELL     |        20 |

|         273 | PRISCILLA   | LOWE         |        35 |

|         274 | NAOMI       | JENNINGS     |        35 |

|         275 | CAROLE      | BARNETT      |        30 |

|         276 | BRANDY      | GRAVES       |        28 |

|         277 | OLGA        | JIMENEZ      |        32 |

|         278 | BILLIE      | HORTON       |        26 |

|         279 | DIANNE      | SHELTON      |        31 |

|         280 | TRACEY      | BARRETT      |        27 |

|         281 | LEONA       | OBRIEN       |        14 |

|         282 | JENNY       | CASTRO       |        27 |

|         283 | FELICIA     | SUTTON       |        28 |

|         284 | SONIA       | GREGORY      |        28 |

|         285 | MIRIAM      | MCKINNEY     |        26 |

|         286 | VELMA       | LUCAS        |        27 |

|         287 | BECKY       | MILES        |        29 |

|         288 | BOBBIE      | CRAIG        |        24 |

|         289 | VIOLET      | RODRIQUEZ    |        30 |

|         290 | KRISTINA    | CHAMBERS     |        28 |

|         291 | TONI        | HOLT         |        23 |

|         292 | MISTY       | LAMBERT      |        27 |

|         293 | MAE         | FLETCHER     |        31 |

|         294 | SHELLY      | WATTS        |        26 |

|         295 | DAISY       | BATES        |        38 |

|         296 | RAMONA      | HALE         |        30 |

|         297 | SHERRI      | RHODES       |        33 |

|         298 | ERIKA       | PENA         |        26 |

|         299 | JAMES       | GANNON       |        30 |

|         300 | JOHN        | FARNSWORTH   |        31 |

|         301 | ROBERT      | BAUGHMAN     |        21 |

|         302 | MICHAEL     | SILVERMAN    |        29 |

|         303 | WILLIAM     | SATTERFIELD  |        26 |

|         304 | DAVID       | ROYAL        |        26 |

|         305 | RICHARD     | MCCRARY      |        25 |

|         306 | CHARLES     | KOWALSKI     |        32 |

|         307 | JOSEPH      | JOY          |        30 |

|         308 | THOMAS      | GRIGSBY      |        25 |

|         309 | CHRISTOPHER | GRECO        |        31 |

|         310 | DANIEL      | CABRAL       |        20 |

|         311 | PAUL        | TROUT        |        23 |

|         312 | MARK        | RINEHART     |        26 |

|         313 | DONALD      | MAHON        |        23 |

|         314 | GEORGE      | LINTON       |        33 |

|         315 | KENNETH     | GOODEN       |        17 |

|         316 | STEVEN      | CURLEY       |        29 |

|         317 | EDWARD      | BAUGH        |        28 |

|         318 | BRIAN       | WYMAN        |        12 |

|         319 | RONALD      | WEINER       |        30 |

|         320 | ANTHONY     | SCHWAB       |        20 |

|         321 | KEVIN       | SCHULER      |        22 |

|         322 | JASON       | MORRISSEY    |        28 |

|         323 | MATTHEW     | MAHAN        |        31 |

|         324 | GARY        | COY          |        25 |

|         325 | TIMOTHY     | BUNN         |        22 |

|         326 | JOSE        | ANDREW       |        25 |

|         327 | LARRY       | THRASHER     |        26 |

|         328 | JEFFREY     | SPEAR        |        23 |

|         329 | FRANK       | WAGGONER     |        32 |

|         330 | SCOTT       | SHELLEY      |        25 |

|         331 | ERIC        | ROBERT       |        27 |

|         332 | STEPHEN     | QUALLS       |        28 |

|         333 | ANDREW      | PURDY        |        27 |

|         334 | RAYMOND     | MCWHORTER    |        30 |

|         335 | GREGORY     | MAULDIN      |        23 |

|         336 | JOSHUA      | MARK         |        30 |

|         337 | JERRY       | JORDON       |        29 |

|         338 | DENNIS      | GILMAN       |        28 |

|         339 | WALTER      | PERRYMAN     |        30 |

|         340 | PATRICK     | NEWSOM       |        31 |

|         341 | PETER       | MENARD       |        23 |

|         342 | HAROLD      | MARTINO      |        32 |

|         343 | DOUGLAS     | GRAF         |        25 |

|         344 | HENRY       | BILLINGSLEY  |        18 |

|         345 | CARL        | ARTIS        |        23 |

|         346 | ARTHUR      | SIMPKINS     |        32 |

|         347 | RYAN        | SALISBURY    |        30 |

|         348 | ROGER       | QUINTANILLA  |        36 |

|         349 | JOE         | GILLILAND    |        29 |

|         350 | JUAN        | FRALEY       |        23 |

|         351 | JACK        | FOUST        |        24 |

|         352 | ALBERT      | CROUSE       |        23 |

|         353 | JONATHAN    | SCARBOROUGH  |        18 |

|         354 | JUSTIN      | NGO          |        36 |

|         355 | TERRY       | GRISSOM      |        20 |

|         356 | GERALD      | FULTZ        |        30 |

|         357 | KEITH       | RICO         |        26 |

|         358 | SAMUEL      | MARLOW       |        21 |

|         359 | WILLIE      | MARKHAM      |        25 |

|         360 | RALPH       | MADRIGAL     |        34 |

|         361 | LAWRENCE    | LAWTON       |        31 |

|         362 | NICHOLAS    | BARFIELD     |        32 |

|         363 | ROY         | WHITING      |        29 |

|         364 | BENJAMIN    | VARNEY       |        23 |

|         365 | BRUCE       | SCHWARZ      |        23 |

|         366 | BRANDON     | HUEY         |        37 |

|         367 | ADAM        | GOOCH        |        22 |

|         368 | HARRY       | ARCE         |        35 |

|         369 | FRED        | WHEAT        |        25 |

|         370 | WAYNE       | TRUONG       |        19 |

|         371 | BILLY       | POULIN       |        35 |

|         372 | STEVE       | MACKENZIE    |        34 |

|         373 | LOUIS       | LEONE        |        35 |

|         374 | JEREMY      | HURTADO      |        28 |

|         375 | AARON       | SELBY        |        24 |

|         376 | RANDY       | GAITHER      |        28 |

|         377 | HOWARD      | FORTNER      |        26 |

|         378 | EUGENE      | CULPEPPER    |        19 |

|         379 | CARLOS      | COUGHLIN     |        23 |

|         380 | RUSSELL     | BRINSON      |        36 |

|         381 | BOBBY       | BOUDREAU     |        35 |

|         382 | VICTOR      | BARKLEY      |        24 |

|         383 | MARTIN      | BALES        |        27 |

|         384 | ERNEST      | STEPP        |        25 |

|         385 | PHILLIP     | HOLM         |        26 |

|         386 | TODD        | TAN          |        29 |

|         387 | JESSE       | SCHILLING    |        26 |

|         388 | CRAIG       | MORRELL      |        30 |

|         389 | ALAN        | KAHN         |        26 |

|         390 | SHAWN       | HEATON       |        33 |

|         391 | CLARENCE    | GAMEZ        |        30 |

|         392 | SEAN        | DOUGLASS     |        23 |

|         393 | PHILIP      | CAUSEY       |        31 |

|         394 | CHRIS       | BROTHERS     |        22 |

|         395 | JOHNNY      | TURPIN       |        19 |

|         396 | EARL        | SHANKS       |        27 |

|         397 | JIMMY       | SCHRADER     |        29 |

|         398 | ANTONIO     | MEEK         |        16 |

|         399 | DANNY       | ISOM         |        21 |

|         400 | BRYAN       | HARDISON     |        28 |

|         401 | TONY        | CARRANZA     |        22 |

|         402 | LUIS        | YANEZ        |        20 |

|         403 | MIKE        | WAY          |        35 |

|         404 | STANLEY     | SCROGGINS    |        30 |

|         405 | LEONARD     | SCHOFIELD    |        32 |

|         406 | NATHAN      | RUNYON       |        32 |

|         407 | DALE        | RATCLIFF     |        27 |

|         408 | MANUEL      | MURRELL      |        30 |

|         409 | RODNEY      | MOELLER      |        23 |

|         410 | CURTIS      | IRBY         |        38 |

|         411 | NORMAN      | CURRIER      |        26 |

|         412 | ALLEN       | BUTTERFIELD  |        21 |

|         413 | MARVIN      | YEE          |        21 |

|         414 | VINCENT     | RALSTON      |        25 |

|         415 | GLENN       | PULLEN       |        23 |

|         416 | JEFFERY     | PINSON       |        31 |

|         417 | TRAVIS      | ESTEP        |        25 |

|         418 | JEFF        | EAST         |        30 |

|         419 | CHAD        | CARBONE      |        25 |

|         420 | JACOB       | LANCE        |        21 |

|         421 | LEE         | HAWKS        |        27 |

|         422 | MELVIN      | ELLINGTON    |        26 |

|         423 | ALFRED      | CASILLAS     |        26 |

|         424 | KYLE        | SPURLOCK     |        30 |

|         425 | FRANCIS     | SIKES        |        26 |

|         426 | BRADLEY     | MOTLEY       |        27 |

|         427 | JESUS       | MCCARTNEY    |        24 |

|         428 | HERBERT     | KRUGER       |        20 |

|         429 | FREDERICK   | ISBELL       |        21 |

|         430 | RAY         | HOULE        |        22 |

|         431 | JOEL        | FRANCISCO    |        23 |

|         432 | EDWIN       | BURK         |        23 |

|         433 | DON         | BONE         |        25 |

|         434 | EDDIE       | TOMLIN       |        27 |

|         435 | RICKY       | SHELBY       |        25 |

|         436 | TROY        | QUIGLEY      |        30 |

|         437 | RANDALL     | NEUMANN      |        23 |

|         438 | BARRY       | LOVELACE     |        33 |

|         439 | ALEXANDER   | FENNELL      |        36 |

|         440 | BERNARD     | COLBY        |        22 |

|         441 | MARIO       | CHEATHAM     |        28 |

|         442 | LEROY       | BUSTAMANTE   |        32 |

|         443 | FRANCISCO   | SKIDMORE     |        22 |

|         444 | MARCUS      | HIDALGO      |        30 |

|         445 | MICHEAL     | FORMAN       |        26 |

|         446 | THEODORE    | CULP         |        31 |

|         447 | CLIFFORD    | BOWENS       |        29 |

|         448 | MIGUEL      | BETANCOURT   |        29 |

|         449 | OSCAR       | AQUINO       |        20 |

|         450 | JAY         | ROBB         |        26 |

|         451 | JIM         | REA          |        33 |

|         452 | TOM         | MILNER       |        32 |

|         453 | CALVIN      | MARTEL       |        23 |

|         454 | ALEX        | GRESHAM      |        33 |

|         455 | JON         | WILES        |        24 |

|         456 | RONNIE      | RICKETTS     |        25 |

|         457 | BILL        | GAVIN        |        28 |

|         458 | LLOYD       | DOWD         |        19 |

|         459 | TOMMY       | COLLAZO      |        38 |

|         460 | LEON        | BOSTIC       |        25 |

|         461 | DEREK       | BLAKELY      |        28 |

|         462 | WARREN      | SHERROD      |        33 |

|         463 | DARRELL     | POWER        |        25 |

|         464 | JEROME      | KENYON       |        16 |

|         465 | FLOYD       | GANDY        |        17 |

|         466 | LEO         | EBERT        |        23 |

|         467 | ALVIN       | DELOACH      |        29 |

|         468 | TIM         | CARY         |        39 |

|         469 | WESLEY      | BULL         |        40 |

|         470 | GORDON      | ALLARD       |        32 |

|         471 | DEAN        | SAUER        |        27 |

|         472 | GREG        | ROBINS       |        30 |

|         473 | JORGE       | OLIVARES     |        34 |

|         474 | DUSTIN      | GILLETTE     |        26 |

|         475 | PEDRO       | CHESTNUT     |        24 |

|         476 | DERRICK     | BOURQUE      |        22 |

|         477 | DAN         | PAINE        |        22 |

|         478 | LEWIS       | LYMAN        |        19 |

|         479 | ZACHARY     | HITE         |        31 |

|         480 | COREY       | HAUSER       |        22 |

|         481 | HERMAN      | DEVORE       |        29 |

|         482 | MAURICE     | CRAWLEY      |        29 |

|         483 | VERNON      | CHAPA        |        18 |

|         484 | ROBERTO     | VU           |        30 |

|         485 | CLYDE       | TOBIAS       |        29 |

|         486 | GLEN        | TALBERT      |        26 |

|         487 | HECTOR      | POINDEXTER   |        26 |

|         488 | SHANE       | MILLARD      |        22 |

|         489 | RICARDO     | MEADOR       |        21 |

|         490 | SAM         | MCDUFFIE     |        24 |

|         491 | RICK        | MATTOX       |        27 |

|         492 | LESTER      | KRAUS        |        16 |

|         493 | BRENT       | HARKINS      |        23 |

|         494 | RAMON       | CHOATE       |        31 |

|         495 | CHARLIE     | BESS         |        26 |

|         496 | TYLER       | WREN         |        21 |

|         497 | GILBERT     | SLEDGE       |        28 |

|         498 | GENE        | SANBORN      |        27 |

|         499 | MARC        | OUTLAW       |        30 |

|         500 | REGINALD    | KINDER       |        28 |

|         501 | RUBEN       | GEARY        |        21 |

|         502 | BRETT       | CORNWELL     |        34 |

|         503 | ANGEL       | BARCLAY      |        32 |

|         504 | NATHANIEL   | ADAM         |        28 |

|         505 | RAFAEL      | ABNEY        |        21 |

|         506 | LESLIE      | SEWARD       |        35 |

|         507 | EDGAR       | RHOADS       |        25 |

|         508 | MILTON      | HOWLAND      |        25 |

|         509 | RAUL        | FORTIER      |        20 |

|         510 | BEN         | EASTER       |        26 |

|         511 | CHESTER     | BENNER       |        24 |

|         512 | CECIL       | VINES        |        26 |

|         513 | DUANE       | TUBBS        |        31 |

|         514 | FRANKLIN    | TROUTMAN     |        22 |

|         515 | ANDRE       | RAPP         |        28 |

|         516 | ELMER       | NOE          |        26 |

|         517 | BRAD        | MCCURDY      |        25 |

|         518 | GABRIEL     | HARDER       |        26 |

|         519 | RON         | DELUCA       |        23 |

|         520 | MITCHELL    | WESTMORELAND |        32 |

|         521 | ROLAND      | SOUTH        |        23 |

|         522 | ARNOLD      | HAVENS       |        33 |

|         523 | HARVEY      | GUAJARDO     |        22 |

|         524 | JARED       | ELY          |        19 |

|         525 | ADRIAN      | CLARY        |        19 |

|         526 | KARL        | SEAL         |        45 |

|         527 | CORY        | MEEHAN       |        24 |

|         528 | CLAUDE      | HERZOG       |        25 |

|         529 | ERIK        | GUILLEN      |        29 |

|         530 | DARRYL      | ASHCRAFT     |        23 |

|         531 | JAMIE       | WAUGH        |        25 |

|         532 | NEIL        | RENNER       |        32 |

|         533 | JESSIE      | MILAM        |        33 |

|         534 | CHRISTIAN   | JUNG         |        24 |

|         535 | JAVIER      | ELROD        |        32 |

|         536 | FERNANDO    | CHURCHILL    |        25 |

|         537 | CLINTON     | BUFORD       |        25 |

|         538 | TED         | BREAUX       |        29 |

|         539 | MATHEW      | BOLIN        |        22 |

|         540 | TYRONE      | ASHER        |        24 |

|         541 | DARREN      | WINDHAM      |        24 |

|         542 | LONNIE      | TIRADO       |        18 |

|         543 | LANCE       | PEMBERTON    |        22 |

|         544 | CODY        | NOLEN        |        22 |

|         545 | JULIO       | NOLAND       |        21 |

|         546 | KELLY       | KNOTT        |        26 |

|         547 | KURT        | EMMONS       |        23 |

|         548 | ALLAN       | CORNISH      |        19 |

|         549 | NELSON      | CHRISTENSON  |        20 |

|         550 | GUY         | BROWNLEE     |        32 |

|         551 | CLAYTON     | BARBEE       |        26 |

|         552 | HUGH        | WALDROP      |        21 |

|         553 | MAX         | PITT         |        24 |

|         554 | DWAYNE      | OLVERA       |        22 |

|         555 | DWIGHT      | LOMBARDI     |        17 |

|         556 | ARMANDO     | GRUBER       |        21 |

|         557 | FELIX       | GAFFNEY      |        24 |

|         558 | JIMMIE      | EGGLESTON    |        28 |

|         559 | EVERETT     | BANDA        |        28 |

|         560 | JORDAN      | ARCHULETA    |        30 |

|         561 | IAN         | STILL        |        27 |

|         562 | WALLACE     | SLONE        |        25 |

|         563 | KEN         | PREWITT      |        29 |

|         564 | BOB         | PFEIFFER     |        24 |

|         565 | JAIME       | NETTLES      |        29 |

|         566 | CASEY       | MENA         |        34 |

|         567 | ALFREDO     | MCADAMS      |        20 |

|         568 | ALBERTO     | HENNING      |        21 |

|         569 | DAVE        | GARDINER     |        32 |

|         570 | IVAN        | CROMWELL     |        26 |

|         571 | JOHNNIE     | CHISHOLM     |        24 |

|         572 | SIDNEY      | BURLESON     |        25 |

|         573 | BYRON       | BOX          |        29 |

|         574 | JULIAN      | VEST         |        28 |

|         575 | ISAAC       | OGLESBY      |        29 |

|         576 | MORRIS      | MCCARTER     |        34 |

|         577 | CLIFTON     | MALCOLM      |        28 |

|         578 | WILLARD     | LUMPKIN      |        22 |

|         579 | DARYL       | LARUE        |        27 |

|         580 | ROSS        | GREY         |        27 |

|         581 | VIRGIL      | WOFFORD      |        27 |

|         582 | ANDY        | VANHORN      |        25 |

|         583 | MARSHALL    | THORN        |        23 |

|         584 | SALVADOR    | TEEL         |        30 |

|         585 | PERRY       | SWAFFORD     |        24 |

|         586 | KIRK        | STCLAIR      |        19 |

|         587 | SERGIO      | STANFIELD    |        26 |

|         588 | MARION      | OCAMPO       |        29 |

|         589 | TRACY       | HERRMANN     |        28 |

|         590 | SETH        | HANNON       |        25 |

|         591 | KENT        | ARSENAULT    |        27 |

|         592 | TERRANCE    | ROUSH        |        29 |

|         593 | RENE        | MCALISTER    |        26 |

|         594 | EDUARDO     | HIATT        |        27 |

|         595 | TERRENCE    | GUNDERSON    |        30 |

|         596 | ENRIQUE     | FORSYTHE     |        28 |

|         597 | FREDDIE     | DUGGAN       |        25 |

|         598 | WADE        | DELVALLE     |        22 |

|         599 | AUSTIN      | CINTRON      |        19 |

|         600 | Larry       | Cabirria     |         1 |

|         601 | Daniel      | Rascon       |         1 |

|         602 | Luis        | Meza         |         1 |

+-------------+-------------+--------------+-----------+

602 rows in set (0.0042 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join paymenselect a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join payment b on a.customer\_id = b.customer\_^C group by a.customer\_

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.customer\_id, a.first\_name, a.last\_name, count(\*) as num\_pagos from customer a  left join payment b on a.customer\_id = b.customer\_id group by a.customer\_id order by total;

ERROR: 1054 (42S22): Unknown column 'total' in 'order clause'

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.customer\_id, a.first\_name, a.last\_name, sum(b.amount) as total from customer a  left join payment b on a.customer\_id = b.customer\_id group by a.customer\_id order by total;

+-------------+-------------+--------------+--------+

| customer\_id | first\_name  | last\_name    | total  |

+-------------+-------------+--------------+--------+

|         600 | Larry       | Cabirria     |   NULL |

|         601 | Daniel      | Rascon       |   NULL |

|         602 | Luis        | Meza         |   NULL |

|         248 | CAROLINE    | BOWMAN       |  50.85 |

|         281 | LEONA       | OBRIEN       |  50.86 |

|         318 | BRIAN       | WYMAN        |  52.88 |

|         395 | JOHNNY      | TURPIN       |  57.81 |

|          97 | ANNIE       | RUSSELL      |  58.82 |

|          61 | KATHERINE   | RIVERA       |  58.86 |

|         110 | TIFFANY     | JORDAN       |  59.86 |

|         136 | ANITA       | MORALES      |  62.85 |

|         252 | MATTIE      | HOFFMAN      |  64.78 |

|         586 | KIRK        | STCLAIR      |  64.81 |

|         492 | LESTER      | KRAUS        |  65.84 |

|         568 | ALBERTO     | HENNING      |  66.79 |

|         458 | LLOYD       | DOWD         |  66.81 |

|         164 | JOANN       | GARDNER      |  66.84 |

|         218 | VERA        | MCCOY        |  67.82 |

|         159 | JILL        | HAWKINS      |  68.79 |

|         271 | PENNY       | NEAL         |  68.82 |

|         465 | FLOYD       | GANDY        |  69.83 |

|         370 | WAYNE       | TRUONG       |  70.81 |

|         255 | IRMA        | PEARSON      |  70.82 |

|         177 | SAMANTHA    | DUNCAN       |  71.77 |

|         162 | LAUREN      | HUDSON       |  71.80 |

|         320 | ANTHONY     | SCHWAB       |  71.80 |

|         117 | EDITH       | MCDONALD     |  71.81 |

|         378 | EUGENE      | CULPEPPER    |  71.81 |

|         355 | TERRY       | GRISSOM      |  72.80 |

|         353 | JONATHAN    | SCARBOROUGH  |  72.82 |

|         557 | FELIX       | GAFFNEY      |  73.76 |

|         350 | JUAN        | FRALEY       |  73.77 |

|         250 | JO          | FOWLER       |  73.80 |

|         124 | SHEILA      | WELLS        |  73.82 |

|         344 | HENRY       | BILLINGSLEY  |  73.82 |

|         464 | JEROME      | KENYON       |  73.84 |

|         401 | TONY        | CARRANZA     |  74.78 |

|         514 | FRANKLIN    | TROUTMAN     |  74.78 |

|         191 | JEANETTE    | GREENE       |  74.80 |

|         525 | ADRIAN      | CLARY        |  74.81 |

|         555 | DWIGHT      | LOMBARDI     |  74.83 |

|         413 | MARVIN      | YEE          |  75.79 |

|         183 | IDA         | ANDREWS      |  76.77 |

|         530 | DARRYL      | ASHCRAFT     |  76.77 |

|         224 | PEARL       | GARZA        |  76.78 |

|          48 | ANN         | EVANS        |  76.83 |

|          76 | IRENE       | PRICE        |  77.77 |

|         549 | NELSON      | CHRISTENSON  |  77.80 |

|          95 | PAULA       | BRYANT       |  77.82 |

|         335 | GREGORY     | MAULDIN      |  78.77 |

|         428 | HERBERT     | KRUGER       |  78.80 |

|         398 | ANTONIO     | MEEK         |  78.84 |

|         430 | RAY         | HOULE        |  79.78 |

|          94 | NORMA       | GONZALES     |  79.79 |

|         420 | JACOB       | LANCE        |  79.79 |

|         402 | LUIS        | YANEZ        |  79.80 |

|         548 | ALLAN       | CORNISH      |  79.81 |

|         411 | NORMAN      | CURRIER      |  80.74 |

|         288 | BOBBIE      | CRAIG        |  80.76 |

|         521 | ROLAND      | SOUTH        |  80.77 |

|         358 | SAMUEL      | MARLOW       |  80.79 |

|          70 | CHRISTINA   | RAMIREZ      |  80.82 |

|         205 | EILEEN      | CARR         |  80.82 |

|         223 | MELINDA     | FERNANDEZ    |  80.83 |

|         527 | CORY        | MEEHAN       |  81.76 |

|           4 | BARBARA     | JONES        |  81.78 |

|         243 | LYDIA       | BURKE        |  82.76 |

|         543 | LANCE       | PEMBERTON    |  82.78 |

|         118 | KIM         | CRUZ         |  82.79 |

|         598 | WADE        | DELVALLE     |  83.78 |

|         152 | ALICIA      | MILLS        |  83.79 |

|         556 | ARMANDO     | GRUBER       |  83.79 |

|         599 | AUSTIN      | CINTRON      |  83.81 |

|         140 | EVA         | RAMOS        |  83.82 |

|          62 | JOAN        | COOPER       |  84.77 |

|         185 | ROBERTA     | HARPER       |  84.77 |

|          79 | RACHEL      | BARNES       |  84.78 |

|         394 | CHRIS       | BROTHERS     |  84.78 |

|         315 | KENNETH     | GOODEN       |  84.83 |

|         412 | ALLEN       | BUTTERFIELD  |  85.79 |

|         567 | ALFREDO     | MCADAMS      |  85.80 |

|         283 | FELICIA     | SUTTON       |  86.72 |

|         165 | LORRAINE    | STEPHENS     |  86.79 |

|         195 | VANESSA     | SIMS         |  86.81 |

|         478 | LEWIS       | LYMAN        |  86.81 |

|         227 | COLLEEN     | BURTON       |  87.76 |

|         455 | JON         | WILES        |  87.76 |

|          85 | ANNE        | POWELL       |  87.77 |

|          88 | BONNIE      | HUGHES       |  87.79 |

|         226 | MAUREEN     | LITTLE       |  87.79 |

|         524 | JARED       | ELY          |  87.81 |

|         194 | KRISTEN     | CHAVEZ       |  87.82 |

|         278 | BILLIE      | HORTON       |  88.74 |

|         369 | FRED        | WHEAT        |  88.75 |

|         534 | CHRISTIAN   | JUNG         |  88.76 |

|         440 | BERNARD     | COLBY        |  88.78 |

|         496 | TYLER       | WREN         |  88.79 |

|         203 | TARA        | RYAN         |  88.80 |

|         483 | VERNON      | CHAPA        |  88.82 |

|         357 | KEITH       | RICO         |  89.74 |

|         450 | JAY         | ROBB         |  89.74 |

|         384 | ERNEST      | STEPP        |  89.75 |

|         419 | CHAD        | CARBONE      |  89.75 |

|          34 | REBECCA     | SCOTT        |  89.76 |

|         351 | JACK        | FOUST        |  89.76 |

|           9 | MARGARET    | MOORE        |  89.77 |

|         233 | LILLIE      | KIM          |  89.77 |

|         313 | DONALD      | MAHON        |  89.77 |

|         143 | LESLIE      | GORDON       |  89.78 |

|         501 | RUBEN       | GEARY        |  89.79 |

|         545 | JULIO       | NOLAND       |  89.79 |

|         184 | VIVIAN      | RUIZ         |  90.77 |

|         328 | JEFFREY     | SPEAR        |  90.77 |

|         539 | MATHEW      | BOLIN        |  90.78 |

|         552 | HUGH        | WALDROP      |  90.79 |

|         115 | WENDY       | HARRISON     |  91.70 |

|         208 | LUCY        | WHEELER      |  91.74 |

|         215 | JESSIE      | BANKS        |  91.74 |

|         435 | RICKY       | SHELBY       |  91.75 |

|         463 | DARRELL     | POWER        |  91.75 |

|          99 | EMILY       | DIAZ         |  91.76 |

|         382 | VICTOR      | BARKLEY      |  91.76 |

|         564 | BOB         | PFEIFFER     |  91.76 |

|          93 | PHYLLIS     | FOSTER       |  91.77 |

|         392 | SEAN        | DOUGLASS     |  91.77 |

|          18 | CAROL       | GARCIA       |  91.78 |

|         325 | TIMOTHY     | BUNN         |  91.78 |

|          33 | ANNA        | HILL         |  91.79 |

|         222 | DELORES     | HANSEN       |  91.79 |

|         399 | DANNY       | ISOM         |  91.79 |

|         212 | WILMA       | RICHARDS     |  91.80 |

|          36 | KATHLEEN    | ADAMS        |  92.73 |

|         151 | MEGAN       | PALMER       |  92.73 |

|         228 | ALLISON     | STANLEY      |  92.73 |

|         188 | MELANIE     | ARMSTRONG    |  92.75 |

|           8 | SUSAN       | WILSON       |  92.76 |

|         104 | RITA        | GRAHAM       |  92.76 |

|         174 | YVONNE      | WATKINS      |  92.79 |

|         301 | ROBERT      | BAUGHMAN     |  92.79 |

|           6 | JENNIFER    | DAVIS        |  93.72 |

|         377 | HOWARD      | FORTNER      |  93.74 |

|         229 | TAMARA      | NGUYEN       |  93.75 |

|         235 | JACKIE      | LYNCH        |  93.75 |

|         130 | CHARLOTTE   | HUNTER       |  93.76 |

|         415 | GLENN       | PULLEN       |  93.77 |

|          81 | ANDREA      | HENDERSON    |  93.78 |

|         189 | LORETTA     | CARPENTER    |  93.78 |

|         523 | HARVEY      | GUAJARDO     |  93.78 |

|         142 | APRIL       | BURNS        |  94.74 |

|         330 | SCOTT       | SHELLEY      |  94.75 |

|         153 | SUZANNE     | NICHOLS      |  94.76 |

|         134 | EMMA        | BOYD         |  94.77 |

|          68 | NICOLE      | PETERSON     |  94.78 |

|         238 | NELLIE      | GARRETT      |  94.79 |

|         542 | LONNIE      | TIRADO       |  94.82 |

|         132 | ESTHER      | CRAWFORD     |  95.72 |

|          24 | KIMBERLY    | LEE          |  95.75 |

|         232 | CONSTANCE   | REID         |  95.75 |

|         507 | EDGAR       | RHOADS       |  95.75 |

|          37 | PAMELA      | BAKER        |  95.77 |

|         216 | NATALIE     | MEYER        |  95.77 |

|         291 | TONI        | HOLT         |  95.77 |

|         364 | BENJAMIN    | VARNEY       |  95.77 |

|         431 | JOEL        | FRANCISCO    |  95.77 |

|         169 | ERICA       | MATTHEWS     |  95.78 |

|         476 | DERRICK     | BOURQUE      |  95.78 |

|         488 | SHANE       | MILLARD      |  95.78 |

|         596 | ENRIQUE     | FORSYTHE     |  96.72 |

|         561 | IAN         | STILL        |  96.73 |

|         551 | CLAYTON     | BARBEE       |  96.74 |

|          69 | JUDY        | GRAY         |  96.75 |

|         326 | JOSE        | ANDREW       |  96.75 |

|         101 | PEGGY       | MYERS        |  96.76 |

|         578 | WILLARD     | LUMPKIN      |  96.78 |

|         461 | DEREK       | BLAKELY      |  97.72 |

|         498 | GENE        | SANBORN      |  97.73 |

|         111 | CARMEN      | OWENS        |  97.74 |

|         182 | RENEE       | LANE         |  97.74 |

|         422 | MELVIN      | ELLINGTON    |  97.74 |

|          73 | BEVERLY     | BROOKS       |  97.76 |

|         505 | RAFAEL      | ABNEY        |  97.79 |

|         310 | DANIEL      | CABRAL       |  97.80 |

|         133 | PAULINE     | HENRY        |  98.73 |

|         516 | ELMER       | NOE          |  98.74 |

|          60 | MILDRED     | BAILEY       |  98.75 |

|         264 | GWENDOLYN   | MAY          |  98.75 |

|         175 | ANNETTE     | OLSON        |  98.76 |

|         180 | STACY       | CUNNINGHAM   |  98.77 |

|         217 | AGNES       | BISHOP       |  98.77 |

|         443 | FRANCISCO   | SKIDMORE     |  98.78 |

|         544 | CODY        | NOLEN        |  98.78 |

|          17 | DONNA       | THOMPSON     |  98.79 |

|         272 | KAY         | CALDWELL     |  98.80 |

|          72 | THERESA     | WATSON       |  99.70 |

|         580 | ROSS        | GREY         |  99.73 |

|         570 | IVAN        | CROMWELL     |  99.74 |

|          10 | DOROTHY     | TAYLOR       |  99.75 |

|         597 | FREDDIE     | DUGGAN       |  99.75 |

|          43 | CHRISTINE   | ROBERTS      |  99.76 |

|         511 | CHESTER     | BENNER       |  99.76 |

|         192 | LAURIE      | LAWRENCE     |  99.77 |

|         352 | ALBERT      | CROUSE       |  99.77 |

|         437 | RANDALL     | NEUMANN      |  99.77 |

|         547 | KURT        | EMMONS       |  99.77 |

|          67 | KELLY       | TORRES       |  99.78 |

|         489 | RICARDO     | MEADOR       |  99.79 |

|         449 | OSCAR       | AQUINO       |  99.80 |

|          64 | JUDITH      | COX          | 100.67 |

|         361 | LAWRENCE    | LAWTON       | 100.69 |

|          77 | JANE        | BENNETT      | 100.72 |

|         303 | WILLIAM     | SATTERFIELD  | 100.74 |

|         474 | DUSTIN      | GILLETTE     | 100.74 |

|         456 | RONNIE      | RICKETTS     | 100.75 |

|         123 | SHANNON     | FREEMAN      | 100.76 |

|         106 | CONNIE      | WALLACE      | 100.77 |

|          55 | DORIS       | REED         | 100.78 |

|         509 | RAUL        | FORTIER      | 100.80 |

|         219 | WILLIE      | HOWELL       | 101.74 |

|         298 | ERIKA       | PENA         | 101.74 |

|         385 | PHILLIP     | HOLM         | 101.74 |

|         387 | JESSE       | SCHILLING    | 101.74 |

|          83 | LOUISE      | JENKINS      | 101.75 |

|         156 | BERTHA      | FERGUSON     | 101.75 |

|         359 | WILLIE      | MARKHAM      | 101.75 |

|         367 | ADAM        | GOOCH        | 101.78 |

|         480 | COREY       | HAUSER       | 101.78 |

|         554 | DWAYNE      | OLVERA       | 101.78 |

|         445 | MICHEAL     | FORMAN       | 102.74 |

|         100 | ROBIN       | HAYES        | 102.76 |

|          12 | NANCY       | THOMAS       | 103.72 |

|         374 | JEREMY      | HURTADO      | 103.72 |

|          74 | DENISE      | KELLY        | 103.73 |

|         282 | JENNY       | CASTRO       | 103.73 |

|         383 | MARTIN      | BALES        | 103.73 |

|         202 | CARLA       | GUTIERREZ    | 103.74 |

|         199 | BETH        | FRANKLIN     | 103.75 |

|         324 | GARY        | COY          | 103.75 |

|         537 | CLINTON     | BUFORD       | 103.75 |

|         475 | PEDRO       | CHESTNUT     | 103.76 |

|         365 | BRUCE       | SCHWARZ      | 103.77 |

|         519 | RON         | DELUCA       | 103.77 |

|          65 | ROSE        | HOWARD       | 103.78 |

|         391 | CLARENCE    | GAMEZ        | 104.70 |

|          31 | BRENDA      | WRIGHT       | 104.74 |

|         312 | MARK        | RINEHART     | 104.74 |

|         425 | FRANCIS     | SIKES        | 104.74 |

|         270 | LEAH        | CURTIS       | 104.75 |

|         409 | RODNEY      | MOELLER      | 104.77 |

|         466 | LEO         | EBERT        | 104.77 |

|         247 | STELLA      | MORENO       | 104.78 |

|         397 | JIMMY       | SCHRADER     | 105.71 |

|          96 | DIANA       | ALEXANDER    | 105.73 |

|         150 | DANIELLE    | DANIELS      | 105.75 |

|         308 | THOMAS      | GRIGSBY      | 105.75 |

|         414 | VINCENT     | RALSTON      | 105.75 |

|         517 | BRAD        | MCCURDY      | 105.75 |

|         429 | FREDERICK   | ISBELL       | 105.79 |

|         381 | BOBBY       | BOUDREAU     | 106.65 |

|         160 | ERIN        | DUNN         | 106.73 |

|          98 | LILLIAN     | GRIFFIN      | 106.75 |

|          11 | LISA        | ANDERSON     | 106.76 |

|         341 | PETER       | MENARD       | 106.77 |

|         345 | CARL        | ARTIS        | 106.77 |

|         379 | CARLOS      | COUGHLIN     | 106.77 |

|         452 | TOM         | MILNER       | 107.68 |

|         418 | JEFF        | EAST         | 107.70 |

|          52 | JULIE       | SANCHEZ      | 107.71 |

|         581 | VIRGIL      | WOFFORD      | 107.73 |

|         109 | EDNA        | WEST         | 107.74 |

|         261 | DEANNA      | BYRD         | 107.74 |

|         546 | KELLY       | KNOTT        | 107.74 |

|         127 | ELAINE      | STEVENS      | 107.76 |

|         553 | MAX         | PITT         | 107.76 |

|         246 | MARIAN      | MENDOZA      | 107.77 |

|         249 | DORA        | MEDINA       | 107.77 |

|         275 | CAROLE      | BARNETT      | 108.70 |

|         145 | LUCILLE     | HOLMES       | 108.72 |

|         587 | SERGIO      | STANFIELD    | 108.74 |

|         201 | VICKI       | FIELDS       | 108.75 |

|         572 | SIDNEY      | BURLESON     | 108.75 |

|         541 | DARREN      | WINDHAM      | 108.76 |

|          47 | FRANCES     | PARKER       | 108.78 |

|         405 | LEONARD     | SCHOFIELD    | 109.68 |

|         290 | KRISTINA    | CHAMBERS     | 109.72 |

|         574 | JULIAN      | VEST         | 109.72 |

|         333 | ANDREW      | PURDY        | 109.73 |

|         471 | DEAN        | SAUER        | 109.73 |

|         121 | JOSEPHINE   | GOMEZ        | 109.74 |

|         155 | GAIL        | KNIGHT       | 109.75 |

|         193 | KATIE       | ELLIOTT      | 109.75 |

|         305 | RICHARD     | MCCRARY      | 109.75 |

|         460 | LEON        | BOSTIC       | 109.75 |

|         562 | WALLACE     | SLONE        | 109.75 |

|         477 | DAN         | PAINE        | 109.78 |

|         138 | HAZEL       | WARREN       | 110.66 |

|         135 | JUANITA     | MASON        | 110.70 |

|         424 | KYLE        | SPURLOCK     | 110.70 |

|         563 | KEN         | PREWITT      | 110.71 |

|          90 | RUBY        | WASHINGTON   | 110.72 |

|         376 | RANDY       | GAITHER      | 110.72 |

|         559 | EVERETT     | BANDA        | 110.72 |

|          40 | AMANDA      | CARTER       | 110.73 |

|         190 | YOLANDA     | WEAVER       | 110.73 |

|         231 | GEORGIA     | JACOBS       | 110.74 |

|         417 | TRAVIS      | ESTEP        | 110.75 |

|         258 | MYRTLE      | FLEMING      | 110.76 |

|         375 | AARON       | SELBY        | 110.76 |

|          28 | CYNTHIA     | YOUNG        | 111.68 |

|         592 | TERRANCE    | ROUSH        | 111.71 |

|         213 | GINA        | WILLIAMSON   | 111.72 |

|         116 | VICTORIA    | GIBSON       | 111.73 |

|         396 | EARL        | SHANKS       | 111.73 |

|         579 | DARYL       | LARUE        | 111.73 |

|         234 | CLAUDIA     | FULLER       | 111.74 |

|         518 | GABRIEL     | HARDER       | 111.74 |

|         528 | CLAUDE      | HERZOG       | 111.75 |

|         453 | CALVIN      | MARTEL       | 111.77 |

|         161 | GERALDINE   | PERKINS      | 112.70 |

|         256 | MABEL       | HOLLAND      | 112.70 |

|         441 | MARIO       | CHEATHAM     | 112.72 |

|         407 | DALE        | RATCLIFF     | 112.73 |

|         327 | LARRY       | THRASHER     | 112.74 |

|          63 | ASHLEY      | RICHARDSON   | 112.75 |

|         590 | SETH        | HANNON       | 112.75 |

|         540 | TYRONE      | ASHER        | 112.76 |

|         493 | BRENT       | HARKINS      | 112.77 |

|          91 | LOIS        | BUTLER       | 113.65 |

|         157 | DARLENE     | ROSE         | 113.69 |

|         113 | CINDY       | FISHER       | 113.71 |

|         447 | CLIFFORD    | BOWENS       | 113.71 |

|         139 | AMBER       | DIXON        | 113.73 |

|         294 | SHELLY      | WATTS        | 113.74 |

|         486 | GLEN        | TALBERT      | 113.74 |

|         593 | RENE        | MCALISTER    | 113.74 |

|         582 | ANDY        | VANHORN      | 113.75 |

|          22 | LAURA       | RODRIGUEZ    | 113.78 |

|         186 | HOLLY       | FOX          | 114.69 |

|         323 | MATTHEW     | MAHAN        | 114.69 |

|          57 | EVELYN      | MORGAN       | 114.72 |

|         317 | EDWARD      | BAUGH        | 114.72 |

|         338 | DENNIS      | GILMAN       | 114.72 |

|         457 | BILL        | GAVIN        | 114.72 |

|         220 | CHARLENE    | ALVAREZ      | 114.73 |

|          44 | MARIE       | TURNER       | 114.74 |

|         171 | DOLORES     | WAGNER       | 114.74 |

|         343 | DOUGLAS     | GRAF         | 114.75 |

|         427 | JESUS       | MCCARTNEY    | 114.76 |

|         503 | ANGEL       | BARCLAY      | 115.68 |

|          20 | SHARON      | ROBINSON     | 115.70 |

|          53 | HEATHER     | MORRIS       | 115.70 |

|         444 | MARCUS      | HIDALGO      | 115.70 |

|          25 | DEBORAH     | WALKER       | 115.71 |

|         287 | BECKY       | MILES        | 115.71 |

|         481 | HERMAN      | DEVORE       | 115.71 |

|         485 | CLYDE       | TOBIAS       | 115.71 |

|         588 | MARION      | OCAMPO       | 115.71 |

|         500 | REGINALD    | KINDER       | 115.72 |

|          58 | JEAN        | BELL         | 115.73 |

|         304 | DAVID       | ROYAL        | 115.74 |

|         512 | CECIL       | VINES        | 115.74 |

|         254 | MAXINE      | SILVA        | 116.68 |

|         214 | KRISTIN     | JOHNSTON     | 116.69 |

|         446 | THEODORE    | CULP         | 116.69 |

|         408 | MANUEL      | MURRELL      | 116.70 |

|         432 | EDWIN       | BURK         | 116.77 |

|         321 | KEVIN       | SCHULER      | 116.78 |

|          42 | CAROLYN     | PEREZ        | 117.70 |

|         595 | TERRENCE    | GUNDERSON    | 117.70 |

|         386 | TODD        | TAN          | 117.71 |

|         538 | TED         | BREAUX       | 117.71 |

|          14 | BETTY       | WHITE        | 117.72 |

|         126 | ELLEN       | SIMPSON      | 117.72 |

|         286 | VELMA       | LUCAS        | 117.73 |

|         240 | MARLENE     | WELCH        | 117.74 |

|         536 | FERNANDO    | CHURCHILL    | 117.75 |

|         490 | SAM         | MCDUFFIE     | 117.76 |

|         585 | PERRY       | SWAFFORD     | 117.76 |

|         583 | MARSHALL    | THORN        | 117.77 |

|           1 | MARY        | SMITH        | 118.68 |

|         442 | LEROY       | BUSTAMANTE   | 118.68 |

|         529 | ERIK        | GUILLEN      | 118.71 |

|         266 | NORA        | HERRERA      | 118.72 |

|         332 | STEPHEN     | QUALLS       | 118.72 |

|         577 | CLIFTON     | MALCOLM      | 118.72 |

|         280 | TRACEY      | BARRETT      | 118.73 |

|         292 | MISTY       | LAMBERT      | 118.73 |

|          41 | STEPHANIE   | MITCHELL     | 118.75 |

|         531 | JAMIE       | WAUGH        | 118.75 |

|         167 | SALLY       | PIERCE       | 119.68 |

|         340 | PATRICK     | NEWSOM       | 119.69 |

|          23 | SARAH       | LEWIS        | 119.70 |

|         336 | JOSHUA      | MARK         | 119.70 |

|         173 | AUDREY      | RAY          | 119.71 |

|         262 | PATSY       | DAVIDSON     | 119.72 |

|         421 | LEE         | HAWKS        | 119.73 |

|         170 | BEATRICE    | ARNOLD       | 119.74 |

|         487 | HECTOR      | POINDEXTER   | 119.74 |

|         251 | VICKIE      | BREWER       | 120.69 |

|          16 | SANDRA      | MARTIN       | 120.71 |

|         573 | BYRON       | BOX          | 120.71 |

|         105 | DAWN        | SULLIVAN     | 120.74 |

|         225 | ARLENE      | HARVEY       | 120.74 |

|         423 | ALFRED      | CASILLAS     | 120.74 |

|         495 | CHARLIE     | BESS         | 120.74 |

|         311 | PAUL        | TROUT        | 120.77 |

|         393 | PHILIP      | CAUSEY       | 121.69 |

|         416 | JEFFERY     | PINSON       | 121.69 |

|         356 | GERALD      | FULTZ        | 121.70 |

|         149 | VALERIE     | BLACK        | 121.74 |

|         571 | JOHNNIE     | CHISHOLM     | 121.76 |

|         241 | HEIDI       | LARSON       | 122.66 |

|         406 | NATHAN      | RUNYON       | 122.68 |

|         260 | CHRISTY     | VARGAS       | 122.69 |

|         163 | CATHY       | SPENCER      | 122.71 |

|         263 | HILDA       | HOPKINS      | 122.71 |

|         276 | BRANDY      | GRAVES       | 122.72 |

|         331 | ERIC        | ROBERT       | 122.73 |

|         510 | BEN         | EASTER       | 122.74 |

|          30 | MELISSA     | KING         | 123.66 |

|         499 | MARC        | OUTLAW       | 123.70 |

|         268 | NINA        | SOTO         | 123.71 |

|         166 | LYNN        | PAYNE        | 123.72 |

|         129 | CARRIE      | PORTER       | 124.66 |

|         230 | JOY         | GEORGE       | 124.67 |

|         388 | CRAIG       | MORRELL      | 124.70 |

|         400 | BRYAN       | HARDISON     | 124.72 |

|         491 | RICK        | MATTOX       | 124.73 |

|         389 | ALAN        | KAHN         | 124.74 |

|          19 | RUTH        | MARTINEZ     | 125.76 |

|         122 | THELMA      | MURRAY       | 126.68 |

|         158 | VERONICA    | STONE        | 126.68 |

|          27 | SHIRLEY     | ALLEN        | 126.69 |

|         107 | FLORENCE    | WOODS        | 126.70 |

|         565 | JAIME       | NETTLES      | 126.71 |

|         575 | ISAAC       | OGLESBY      | 126.71 |

|         284 | SONIA       | GREGORY      | 126.72 |

|         515 | ANDRE       | RAPP         | 126.72 |

|         206 | TERRI       | VASQUEZ      | 126.73 |

|         426 | BRADLEY     | MOTLEY       | 126.73 |

|          38 | MARTHA      | GONZALEZ     | 127.66 |

|         147 | JOANNE      | ROBERTSON    | 127.66 |

|         128 | MARJORIE    | TUCKER       | 127.68 |

|         329 | FRANK       | WAGGONER     | 127.68 |

|         339 | WALTER      | PERRYMAN     | 127.70 |

|          32 | AMY         | LOPEZ        | 127.71 |

|         253 | TERRY       | CARLSON      | 127.71 |

|         302 | MICHAEL     | SILVERMAN    | 127.71 |

|          45 | JANET       | PHILLIPS     | 127.73 |

|         508 | MILTON      | HOWLAND      | 127.75 |

|         297 | SHERRI      | RHODES       | 128.67 |

|         451 | JIM         | REA          | 128.67 |

|         131 | MONICA      | HICKS        | 128.70 |

|          54 | TERESA      | ROGERS       | 128.71 |

|         322 | JASON       | MORRISSEY    | 128.72 |

|           2 | PATRICIA    | JOHNSON      | 128.73 |

|         434 | EDDIE       | TOMLIN       | 128.73 |

|         354 | JUSTIN      | NGO          | 129.64 |

|          35 | VIRGINIA    | GREEN        | 129.68 |

|         244 | VIOLA       | HANSON       | 129.68 |

|          71 | KATHY       | JAMES        | 129.70 |

|         269 | CASSANDRA   | WALTERS      | 129.70 |

|         296 | RAMONA      | HALE         | 129.70 |

|         584 | SALVADOR    | TEEL         | 129.70 |

|         497 | GILBERT     | SLEDGE       | 129.72 |

|         589 | TRACY       | HERRMANN     | 129.72 |

|         141 | DEBBIE      | REYES        | 130.68 |

|         342 | HAROLD      | MARTINO      | 130.68 |

|         154 | MICHELE     | GRANT        | 130.70 |

|          49 | JOYCE       | EDWARDS      | 130.72 |

|         594 | EDUARDO     | HIATT        | 130.73 |

|          82 | KATHRYN     | COLEMAN      | 130.74 |

|         314 | GEORGE      | LINTON       | 131.67 |

|         299 | JAMES       | GANNON       | 131.70 |

|          13 | KAREN       | JACKSON      | 131.73 |

|         245 | COURTNEY    | DAY          | 132.68 |

|         108 | TRACY       | COLE         | 132.70 |

|         319 | RONALD      | WEINER       | 132.70 |

|         560 | JORDAN      | ARCHULETA    | 132.70 |

|         316 | STEVEN      | CURLEY       | 132.71 |

|         221 | BESSIE      | MORRISON     | 132.72 |

|         112 | ROSA        | REYNOLDS     | 133.70 |

|         179 | DANA        | HART         | 133.71 |

|         265 | JENNIE      | TERRY        | 133.71 |

|          92 | TINA        | SIMMONS      | 133.72 |

|         504 | NATHANIEL   | ADAM         | 133.72 |

|          59 | CHERYL      | MURPHY       | 133.73 |

|         433 | DON         | BONE         | 133.75 |

|         473 | JORGE       | OLIVARES     | 134.66 |

|         438 | BARRY       | LOVELACE     | 134.67 |

|          15 | HELEN       | HARRIS       | 134.68 |

|          89 | JULIA       | FLORES       | 134.68 |

|         520 | MITCHELL    | WESTMORELAND | 134.68 |

|         569 | DAVE        | GARDINER     | 134.68 |

|         307 | JOSEPH      | JOY          | 134.70 |

|         591 | KENT        | ARSENAULT    | 134.73 |

|         168 | REGINA      | BERRY        | 135.66 |

|         125 | ETHEL       | WEBB         | 135.68 |

|         535 | JAVIER      | ELROD        | 135.68 |

|         279 | DIANNE      | SHELTON      | 135.69 |

|          56 | GLORIA      | COOK         | 135.70 |

|         334 | RAYMOND     | MCWHORTER    | 135.70 |

|         448 | MIGUEL      | BETANCOURT   | 135.71 |

|         558 | JIMMIE      | EGGLESTON    | 135.72 |

|           3 | LINDA       | WILLIAMS     | 135.74 |

|         285 | MIRIAM      | MCKINNEY     | 135.74 |

|         380 | RUSSELL     | BRINSON      | 136.64 |

|         200 | JEANNE      | LAWSON       | 136.73 |

|         207 | GERTRUDE    | CASTILLO     | 137.66 |

|         102 | CRYSTAL     | FORD         | 137.67 |

|         210 | ELLA        | OLIVER       | 137.69 |

|         300 | JOHN        | FARNSWORTH   | 137.69 |

|          80 | MARILYN     | ROSS         | 137.70 |

|         502 | BRETT       | CORNWELL     | 138.66 |

|          51 | ALICE       | STEWART      | 138.67 |

|         306 | CHARLES     | KOWALSKI     | 138.68 |

|         349 | JOE         | GILLILAND    | 138.71 |

|         482 | MAURICE     | CRAWLEY      | 138.71 |

|         576 | MORRIS      | MCCARTER     | 139.66 |

|         114 | GRACE       | ELLIS        | 139.67 |

|         404 | STANLEY     | SCROGGINS    | 139.70 |

|         484 | ROBERTO     | VU           | 139.70 |

|         146 | JAMIE       | RICE         | 139.71 |

|         467 | ALVIN       | DELOACH      | 139.71 |

|          29 | ANGELA      | HERNANDEZ    | 140.64 |

|         242 | GLENDA      | FRAZIER      | 140.68 |

|         494 | RAMON       | CHOATE       | 140.69 |

|         198 | ELSIE       | KELLEY       | 141.63 |

|         566 | CASEY       | MENA         | 141.66 |

|          84 | SARA        | PERRY        | 141.67 |

|         533 | JESSIE      | MILAM        | 141.67 |

|          78 | LORI        | WOOD         | 141.69 |

|         472 | GREG        | ROBINS       | 141.70 |

|          39 | DEBRA       | NELSON       | 141.71 |

|          46 | CATHERINE   | CAMPBELL     | 142.66 |

|         239 | MINNIE      | ROMERO       | 142.66 |

|         289 | VIOLET      | RODRIQUEZ    | 142.70 |

|         347 | RYAN        | SALISBURY    | 142.70 |

|         120 | SYLVIA      | ORTIZ        | 143.68 |

|         337 | JERRY       | JORDON       | 143.71 |

|         363 | ROY         | WHITING      | 143.71 |

|           5 | ELIZABETH   | BROWN        | 144.62 |

|          66 | JANICE      | WARD         | 144.66 |

|         237 | TANYA       | GILBERT      | 144.67 |

|         277 | OLGA        | JIMENEZ      | 144.68 |

|         436 | TROY        | QUIGLEY      | 144.70 |

|         172 | BERNICE     | WILLIS       | 145.67 |

|         362 | NICHOLAS    | BARFIELD     | 145.68 |

|          87 | WANDA       | PATTERSON    | 145.70 |

|         348 | ROGER       | QUINTANILLA  | 146.64 |

|         103 | GLADYS      | HAMILTON     | 146.69 |

|         479 | ZACHARY     | HITE         | 146.69 |

|         204 | ROSEMARY    | SCHMIDT      | 147.65 |

|         309 | CHRISTOPHER | GRECO        | 147.69 |

|          86 | JACQUELINE  | LONG         | 148.67 |

|         513 | DUANE       | TUBBS        | 148.69 |

|         371 | BILLY       | POULIN       | 149.65 |

|         360 | RALPH       | MADRIGAL     | 150.66 |

|         257 | MARSHA      | DOUGLAS      | 151.63 |

|         439 | ALEXANDER   | FENNELL      | 151.64 |

|         196 | ALMA        | AUSTIN       | 151.65 |

|         211 | STACEY      | MONTGOMERY   | 151.66 |

|           7 | MARIA       | MILLER       | 151.67 |

|         454 | ALEX        | GRESHAM      | 151.67 |

|         366 | BRANDON     | HUEY         | 152.63 |

|         274 | NAOMI       | JENNINGS     | 152.65 |

|         506 | LESLIE      | SEWARD       | 152.65 |

|          26 | JESSICA     | HALL         | 152.66 |

|         390 | SHAWN       | HEATON       | 152.67 |

|         532 | NEIL        | RENNER       | 152.68 |

|         119 | SHERRY      | MARSHALL     | 153.66 |

|         197 | SUE         | PETERS       | 154.60 |

|          75 | TAMMY       | SANDERS      | 155.59 |

|          21 | MICHELLE    | CLARK        | 155.65 |

|         346 | ARTHUR      | SIMPKINS     | 155.68 |

|         273 | PRISCILLA   | LOWE         | 157.65 |

|         368 | HARRY       | ARCE         | 157.65 |

|         372 | STEVE       | MACKENZIE    | 158.66 |

|         293 | MAE         | FLETCHER     | 158.69 |

|         267 | MARGIE      | WADE         | 159.64 |

|         462 | WARREN      | SHERROD      | 159.67 |

|         550 | GUY         | BROWNLEE     | 159.68 |

|         187 | BRITTANY    | RILEY        | 159.72 |

|         470 | GORDON      | ALLARD       | 160.68 |

|         373 | LOUIS       | LEONE        | 161.65 |

|         209 | TONYA       | CHAPMAN      | 161.68 |

|         295 | DAISY       | BATES        | 162.62 |

|         403 | MIKE        | WAY          | 166.65 |

|         410 | CURTIS      | IRBY         | 167.62 |

|         522 | ARNOLD      | HAVENS       | 167.67 |

|          50 | DIANE       | COLLINS      | 169.65 |

|         259 | LENA        | JENSEN       | 170.67 |

|         176 | JUNE        | CARROLL      | 173.63 |

|         181 | ANA         | BRADLEY      | 174.66 |

|         236 | MARCIA      | DEAN         | 175.58 |

|         468 | TIM         | CARY         | 175.61 |

|         469 | WESLEY      | BULL         | 177.60 |

|         459 | TOMMY       | COLLAZO      | 186.62 |

|         137 | RHONDA      | KENNEDY      | 194.61 |

|         178 | MARION      | SNYDER       | 194.61 |

|         144 | CLARA       | SHAW         | 195.58 |

|         148 | ELEANOR     | HUNT         | 216.54 |

|         526 | KARL        | SEAL         | 221.55 |

+-------------+-------------+--------------+--------+

602 rows in set (0.0181 sec)

&#x20;MySQL  localhost:3306 ssl  sakila  SQL > select a.customer\_id, a.first\_name, a.last\_name, count(\*) as num\_pagos from customer a  left join payment b on a.customer\_id = b.customer\_id group by a.customer\_id order by total;

