/* Step 19 */
/* Team with the most wins */

CREATE VIEW results AS
SELECT Name, Outcome FROM 
	(SELECT Team, COUNT(Outcome) AS "Outcome" FROM game_scores WHERE Outcome = 'W' GROUP BY Team ORDER BY Team) AS t1,
	(SELECT * FROM teams ORDER BY teamID) AS t2
	WHERE Team = teamID;


SELECT Name, Outcome FROM results
	WHERE Outcome = (SELECT MAX(Outcome) FROM results);

DROP VIEW results;

/*
Expected Output
+-----------------+---------+
| Name            | Outcome |
+-----------------+---------+
| Atlanta Falcons |       5 |
+-----------------+---------+
*/
