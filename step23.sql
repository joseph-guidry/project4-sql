/* Step 23 */
/* Print out all the tables used in this project */

SELECT * FROM teams;
SELECT * FROM players;
SELECT * FROM personal_info;
SELECT * FROM games;
SELECT * FROM game_scores;

/*
	Expected Output

	-Teams Table
	+----------------------+--------+
	| name                 | teamID |
	+----------------------+--------+
	| New Orleans Saints   |   1000 |
	| Atlanta Falcons      |   1001 |
	| Carolina Panthers    |   1002 |
	| Tampa Bay Buccaneers |   1003 |
	+----------------------+--------+

	-Players Table
	+-----+-----------+----------+--------+-----------+
	| pid | firstname | lastname | teamID | playerNum |
	+-----+-----------+----------+--------+-----------+
	|   1 | Michael   | Thomas   |   1000 |        13 |
	|   2 | Drew      | Brees    |   1000 |         9 |
	|   3 | Mark      | Ingram   |   1000 |        22 |
	|   4 | Will      | Lutz     |   1000 |         3 |
	|   5 | Matt      | Ryan     |   1001 |         2 |
	|   6 | Julio     | Jones    |   1001 |        11 |
	|   7 | Tevin     | Coleman  |   1001 |        26 |
	|   8 | Matt      | Bryant   |   1001 |         3 |
	|   9 | Cam       | Newton   |   1002 |         1 |
	|  10 | Devin     | Funchess |   1002 |        17 |
	|  11 | Luke      | Kuechly  |   1002 |        59 |
	|  12 | Graham    | Gano     |   1002 |         9 |
	|  13 | Jameis    | Winston  |   1003 |         3 |
	|  14 | Gerald    | McCoy    |   1003 |        93 |
	|  15 | Doug      | Martin   |   1003 |        22 |
	|  16 | Patrick   | Murphy   |   1003 |         7 |
	|  17 | Joseph    | Guidry   |   NULL |      NULL |
	+-----+-----------+----------+--------+-----------+

	-Personal_Info Table
	+-----+-----+--------+--------+
	| pid | age | height | weight |
	+-----+-----+--------+--------+
	|   1 |  24 |     76 |    212 |
	|   2 |  38 |     72 |    209 |
	|   3 |  27 |     69 |    215 |
	|   4 |  23 |     73 |    184 |
	|   5 |  32 |     76 |    217 |
	|   6 |  28 |     75 |    220 |
	|   7 |  24 |     73 |    210 |
	|   8 |  42 |     69 |    203 |
	|   9 |  28 |     77 |    245 |
	|  10 |  23 |     76 |    225 |
	|  11 |  26 |     75 |    238 |
	|  12 |  30 |     74 |    202 |
	|  13 |  23 |     76 |    231 |
	|  14 |  29 |     76 |    300 |
	|  15 |  28 |     69 |    223 |
	|  16 |  26 |     67 |    182 |
	|  17 |  30 |     67 |    165 |
	+-----+-----+--------+--------+

	-Games Table
	+--------+---------------------+------------+---------------+
	| GameID | GateDate            | HomeTeamID | VisitorTeamID |
	+--------+---------------------+------------+---------------+
	|      1 | 2016-09-11 13:00:00 |       1003 |          1001 |
	|      2 | 2016-09-26 20:30:00 |       1001 |          1000 |
	|      3 | 2016-10-02 13:00:00 |       1002 |          1001 |
	|      4 | 2016-10-10 20:30:00 |       1003 |          1002 |
	|      5 | 2016-10-16 13:00:00 |       1002 |          1000 |
	|      6 | 2016-11-03 19:30:00 |       1001 |          1003 |
	|      7 | 2016-11-17 19:30:00 |       1000 |          1002 |
	|      8 | 2016-12-11 18:00:00 |       1000 |          1003 |
	|      9 | 2016-12-24 12:00:00 |       1001 |          1002 |
	|     10 | 2016-12-24 16:00:00 |       1003 |          1000 |
	|     11 | 2017-01-01 13:00:00 |       1002 |          1003 |
	|     12 | 2017-01-03 18:00:00 |       1000 |          1001 |
	+--------+---------------------+------------+---------------+

	-Game_Scores Table
	+------+--------+-----------+---------------+------------+---------+
	| Team | GameID | TeamScore | OpponentScore | GamePoints | Outcome |
	+------+--------+-----------+---------------+------------+---------+
	| 1003 |      1 |        31 |            24 |         55 | W       |
	| 1001 |      1 |        24 |            31 |         55 | L       |
	| 1001 |      2 |        45 |            32 |         77 | W       |
	| 1000 |      2 |        32 |            45 |         77 | L       |
	| 1002 |      3 |        33 |            48 |         81 | L       |
	| 1001 |      3 |        48 |            33 |         81 | W       |
	| 1003 |      4 |        17 |            14 |         31 | W       |
	| 1002 |      4 |        14 |            17 |         31 | L       |
	| 1002 |      5 |        38 |            41 |         79 | L       |
	| 1000 |      5 |        41 |            31 |         79 | W       |
	| 1001 |      6 |        43 |            28 |         71 | W       |
	| 1003 |      6 |        28 |            43 |         71 | L       |
	| 1000 |      7 |        20 |            23 |         43 | L       |
	| 1002 |      7 |        23 |            20 |         43 | W       |
	| 1000 |      8 |        11 |            16 |         27 | L       |
	| 1003 |      8 |        16 |            11 |         27 | W       |
	| 1001 |      9 |        33 |            16 |         49 | W       |
	| 1002 |      9 |        16 |            33 |         49 | L       |
	| 1003 |     10 |        24 |            31 |         55 | L       |
	| 1000 |     10 |        31 |            24 |         55 | W       |
	| 1002 |     11 |        16 |            17 |         33 | L       |
	| 1003 |     11 |        17 |            16 |         33 | W       |
	| 1000 |     12 |        32 |            38 |         70 | L       |
	| 1001 |     12 |        38 |            32 |         70 | W       |
	+------+--------+-----------+---------------+------------+---------+
*/

