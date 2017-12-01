/* Step 18 */
/* Print HomeTeam, AwayTeam, Game Date and Time  */

CREATE VIEW home AS
SELECT teams.Name AS "HomeTeam", games.GateDate from teams, games
	WHERE teams.teamID = games.HomeTeamID
	ORDER BY GateDate;

CREATE VIEW away AS
SELECT teams.Name AS "AwayTeam" , games.GateDate FROM teams, games
	WHERE teams.TeamID = games.VisitorTeamID
	ORDER BY GateDate;

SELECT HomeTeam, AwayTeam, home.GateDate FROM home, away
	WHERE home.GateDate = away.GateDate;

DROP VIEW home, away;

/*
	Expected Output 
	+----------------------+----------------------+---------------------+
	| HomeTeam             | AwayTeam             | GateDate            |
	+----------------------+----------------------+---------------------+
	| Tampa Bay Buccaneers | Atlanta Falcons      | 2016-09-11 13:00:00 |
	| Atlanta Falcons      | New Orleans Saints   | 2016-09-26 20:30:00 |
	| Carolina Panthers    | Atlanta Falcons      | 2016-10-02 13:00:00 |
	| Tampa Bay Buccaneers | Carolina Panthers    | 2016-10-10 20:30:00 |
	| Carolina Panthers    | New Orleans Saints   | 2016-10-16 13:00:00 |
	| Atlanta Falcons      | Tampa Bay Buccaneers | 2016-11-03 19:30:00 |
	| New Orleans Saints   | Carolina Panthers    | 2016-11-17 19:30:00 |
	| New Orleans Saints   | Tampa Bay Buccaneers | 2016-12-11 18:00:00 |
	| Atlanta Falcons      | Carolina Panthers    | 2016-12-24 12:00:00 |
	| Tampa Bay Buccaneers | New Orleans Saints   | 2016-12-24 16:00:00 |
	| Carolina Panthers    | Tampa Bay Buccaneers | 2017-01-01 13:00:00 |
	| New Orleans Saints   | Atlanta Falcons      | 2017-01-03 18:00:00 |
	+----------------------+----------------------+---------------------+
*/
