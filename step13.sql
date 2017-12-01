/* Step 13 */
/* Output players that are free agents(No team) */

SELECT * FROM players 
	WHERE teamID IS NULL;

/*
	Expected Output
	+-----+-----------+----------+--------+-----------+
	| pid | firstname | lastname | teamID | playerNum |
	+-----+-----------+----------+--------+-----------+
	|  17 | Joseph    | Guidry   |   NULL |      NULL |
	+-----+-----------+----------+--------+-----------+
*/
