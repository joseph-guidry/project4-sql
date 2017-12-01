/* Step 12 */
/* Display highest point total in a single game */

SELECT MAX(GamePoints) AS 'Most Point in a Game' FROM game_scores;

/*  
	Expected Output 
	+----------------------+
	| Most Point in a Game |
	+----------------------+
	|                   81 |
	+----------------------+

*/
