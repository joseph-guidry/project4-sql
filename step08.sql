/* Step 8 */
/* 
   Output player in alphabetical order by last name, 
   Full Name( First, Last), Age, Height, Weight
*/

SELECT concat(FirstName, ' ', LastName) AS "Player Name", age, height, weight FROM players, personal_info
	WHERE players.pid = personal_info.pid
	ORDER BY lastname;

/*  Expected Output
	+----------------+------+--------+--------+
	| Player Name    | age  | height | weight |
	+----------------+------+--------+--------+
	| Michael Thomas |   24 |     76 |    212 |
	| Drew Brees     |   38 |     72 |    209 |
	| Mark Ingram    |   27 |     69 |    215 |
	| Will Lutz      |   23 |     73 |    184 |
	| Matt Ryan      |   32 |     76 |    217 |
	| Julio Jones    |   28 |     75 |    220 |
	| Tevin Coleman  |   24 |     73 |    210 |
	| Matt Bryant    |   42 |     69 |    203 |
	| Cam Newton     |   28 |     77 |    245 |
	| Devin Funchess |   23 |     76 |    225 |
	| Luke Kuechly   |   26 |     75 |    238 |
	| Graham Gano    |   30 |     74 |    202 |
	| Jameis Winston |   23 |     76 |    231 |
	| Gerald McCoy   |   29 |     76 |    300 |
	| Doug Martin    |   28 |     69 |    223 |
	| Patrick Murphy |   26 |     67 |    182 |
	+----------------+------+--------+--------+
*/
