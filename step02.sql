/* Step 2 */
DROP TABLE IF EXISTS players;

CREATE TABLE players (
	pid INTEGER(4) AUTO_INCREMENT PRIMARY KEY,
	firstname VARCHAR(20) NOT NULL,
	lastname  VARCHAR(20) NOT NULL,
	teamID INTEGER(4),
	playerNum INTEGER(2),
	CONSTRAINT CHK_Team CHECK (playerNum <> NULL and teamID <> NULL),
	CONSTRAINT fk_teamID FOREIGN KEY(teamID) REFERENCES teams(teamID)
	);


