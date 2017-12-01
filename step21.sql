/* Step 21 */
/* Print W/L record for all teams, sorted Wins */

/* Create a view of the wins for each team */
CREATE VIEW wins AS
SELECT Team, COUNT(Outcome) AS win FROM 
	(SELECT Team, Outcome FROM game_scores
		ORDER BY Team) as t1
	WHERE Outcome = 'W'
	GROUP BY Team;

/* Create a view for the losses for each team */
CREATE VIEW losses AS
SELECT Team, COUNT(Outcome) AS loss FROM 
	(SELECT Team, Outcome FROM game_scores
		ORDER BY Team) as t2
	WHERE Outcome = 'L'
	GROUP BY Team;

SELECT teams.name, wins.win, losses.loss FROM wins, losses, teams
	WHERE wins.Team = losses.Team AND teams.teamID = wins.Team;


DROP VIEW wins, losses;

/*
	Expected Output 
	+----------------------+-----+------+
	| name                 | win | loss |
	+----------------------+-----+------+
	| New Orleans Saints   |   2 |    4 |
	| Atlanta Falcons      |   5 |    1 |
	| Carolina Panthers    |   1 |    5 |
	| Tampa Bay Buccaneers |   4 |    2 |
	+----------------------+-----+------+
*/
