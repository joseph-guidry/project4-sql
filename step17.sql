/* Step 17 */
/* Who is the tallest player */

SELECT concat(p.FirstName, ' ', p.LastName) AS "Player Name", pi.Height FROM players AS p, personal_info AS pi
	WHERE pi.height = (SELECT MAX(Height) FROM personal_info) AND p.pid = pi.pid;

/*
	Expected Output
	+-------------+--------+
	| Player Name | Height |
	+-------------+--------+
	| Cam Newton  |     77 |
	+-------------+--------+
*/
