/* Step 10 */
/* Display highest score  for any team in a single game */

SELECT Name, MAX(TeamScore) AS "Most Points Scored" FROM game_scores, teams
	WHERE game_scores.team = teams.teamID
	GROUP BY Team;

/*  
	Expected Output 
	+----------------------+--------------------+
	| Name                 | Most Points Scored |
	+----------------------+--------------------+
	| New Orleans Saints   |                 41 |
	| Atlanta Falcons      |                 48 |
	| Carolina Panthers    |                 38 |
	| Tampa Bay Buccaneers |                 31 |
	+----------------------+--------------------+

*/
