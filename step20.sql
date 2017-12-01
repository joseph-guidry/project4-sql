/* Step 20 */
/* Get the Team with the highest Average score */

CREATE VIEW team_avg as
SELECT Team, AVG(TeamScore) AS Average 
	FROM (SELECT * FROM game_scores ORDER BY Team) AS t GROUP BY team ORDER BY team;

SELECT Name, Average FROM teams
	JOIN team_avg
	WHERE team_avg.Team = teams.teamID AND
		  Average = (SELECT MAX(Average) FROM team_avg);

DROP VIEW team_avg;

/* 
Expect Output
+-----------------+---------+
| Name            | Average |
+-----------------+---------+
| Atlanta Falcons | 38.5000 |
+-----------------+---------+
*/
