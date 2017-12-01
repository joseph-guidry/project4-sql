/* Step 8 */
/* 
   Output player in alphabetical order by last name, 
   Full Name( First, Last), Age, Height, Weight
*/

SELECT concat(FirstName, ' ', LastName) AS "Player Name", age, height, weight 
	FROM players, personal_info
	WHERE players.pid = personal_info.pid
	ORDER BY lastname;

/*  Expected Output
+----------------+-----+--------+--------+
| Player Name    | age | height | weight |
+----------------+-----+--------+--------+
| Drew Brees     |  38 |     72 |    209 |
| Matt Bryant    |  42 |     69 |    203 |
| Tevin Coleman  |  24 |     73 |    210 |
| Devin Funchess |  23 |     76 |    225 |
| Graham Gano    |  30 |     74 |    202 |
| Joseph Guidry  |  30 |     67 |    165 |
| Mark Ingram    |  27 |     69 |    215 |
| Julio Jones    |  28 |     75 |    220 |
| Luke Kuechly   |  26 |     75 |    238 |
| Will Lutz      |  23 |     73 |    184 |
| Doug Martin    |  28 |     69 |    223 |
| Gerald McCoy   |  29 |     76 |    300 |
| Patrick Murphy |  26 |     67 |    182 |
| Cam Newton     |  28 |     77 |    245 |
| Matt Ryan      |  32 |     76 |    217 |
| Michael Thomas |  24 |     76 |    212 |
| Jameis Winston |  23 |     76 |    231 |
+----------------+-----+--------+--------+
*/
