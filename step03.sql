/* Step 3 */
DROP TABLE IF EXISTS personal_info;

CREATE TABLE personal_info (
	pid INTEGER(4) NOT NULL,
	age INTEGER(2),
	height INTEGER(2),	  -- measurement in inches.
	weight INTEGER(3),	  -- measurement in lbs.
	CONSTRAINT fk_pid FOREIGN KEY(pid) REFERENCES players(pid)
	);

