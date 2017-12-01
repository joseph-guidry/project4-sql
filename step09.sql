/* Step 9 */
/*  Display Team ID, Player Name, Player Number */

SELECT teamID, CONCAT(FirstName, ' ', LastName) AS Player, playerNum FROM players
	WHERE teamID = 1000
    ORDER BY playerNum;

/*  Expected Output for TeamID 1000( New Orleans Saints Players)

	+--------+----------------+-----------+
	| teamID | Player         | playerNum |
	+--------+----------------+-----------+
	|   1000 | Will Lutz      |         3 |
	|   1000 | Drew Brees     |         9 |
	|   1000 | Michael Thomas |        13 |
	|   1000 | Mark Ingram    |        22 |
	+--------+----------------+-----------+
*/
