/* Step 5 */
DROP TABLE IF EXISTS game_scores;

CREATE TABLE game_scores (
	Team INTEGER(4) NOT NULL,
	GameID INTEGER(4) NOT NULL,
	TeamScore INTEGER(2) NOT NULL,
	OpponentScore INTEGER(2) NOT NULL,
	GamePoints INTEGER(3) NOT NULL,
	Outcome ENUM('W', 'L', 'T') NOT NULL,
    CONSTRAINT fk_Team FOREIGN KEY(Team) REFERENCES teams (teamID),
	CONSTRAINT fk_GameID FOREIGN KEY(GameID) REFERENCES games (GameID)
	);

