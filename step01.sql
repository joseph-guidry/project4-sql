DROP TABLE IF EXISTS game_scores, personal_info, players, games, teams;
/* Step 1 */
DROP TABLE IF EXISTS teams;

CREATE TABLE teams (
	name VARCHAR(30) NOT NULL,
	teamID INTEGER(4) PRIMARY KEY
	);

