/* Step 22 */
/* Report that shows Score Results of each game */

CREATE VIEW winners AS
SELECT GameID, Team, TeamScore FROM game_scores
	WHERE Outcome = 'W';

CREATE VIEW losers AS
SELECT  GameID, Team, TeamScore FROM game_scores
	WHERE Outcome = 'L';

SELECT HomeTeam,  AwayTeam, concat( HomeTeamScore, '-', AwayTeamScore) AS "Score" FROM 
	(SELECT GameID, name AS "HomeTeam", TeamScore AS "HomeTeamScore" FROM winners 
	LEFT JOIN (teams)
	ON winners.team = teams.teamID
	ORDER BY GameID) AS t1
	JOIN
	(SELECT GameID, name AS "AwayTeam", TeamScore AS "AwayTeamScore" FROM losers 
	LEFT JOIN (teams)
	ON losers.team = teams.teamID
	ORDER BY GameID) AS t2
	WHERE t2.gameID = t1.gameID;


DROP VIEW winners, losers;

/*
Expected Output
+----------------------+----------------------+-------+
| HomeTeam             | AwayTeam             | Score |
+----------------------+----------------------+-------+
| New Orleans Saints   | Carolina Panthers    | 41-38 |
| New Orleans Saints   | Tampa Bay Buccaneers | 31-24 |
| Atlanta Falcons      | New Orleans Saints   | 45-32 |
| Atlanta Falcons      | Carolina Panthers    | 48-33 |
| Atlanta Falcons      | Tampa Bay Buccaneers | 43-28 |
| Atlanta Falcons      | Carolina Panthers    | 33-16 |
| Atlanta Falcons      | New Orleans Saints   | 38-32 |
| Carolina Panthers    | New Orleans Saints   | 23-20 |
| Tampa Bay Buccaneers | Atlanta Falcons      | 31-24 |
| Tampa Bay Buccaneers | Carolina Panthers    | 17-14 |
| Tampa Bay Buccaneers | New Orleans Saints   | 16-11 |
| Tampa Bay Buccaneers | Carolina Panthers    | 17-16 |
+----------------------+----------------------+-------+
*/
