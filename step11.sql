/* Step 11 */
/* Display which team has scored the most total points through all of their games */

CREATE VIEW team_points as
SELECT Team, SUM(TeamScore) AS Points 
	FROM (SELECT * FROM game_scores ORDER BY Team) AS t GROUP BY team ORDER BY team;

SELECT * FROM team_points;


SELECT Name, Points FROM teams
	JOIN team_points
	WHERE team_points.Team = teams.teamID AND
		  Points = (SELECT MAX(Points) FROM team_points);

DROP VIEW team_points;

/* 
	Expected Output
	+-----------------+--------+
	| Name            | Points |
	+-----------------+--------+
	| Atlanta Falcons |    231 |
	+-----------------+--------+
*/
