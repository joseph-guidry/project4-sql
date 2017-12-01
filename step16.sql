/* Step 16 */
/* How many games were played on a given date (2016-10-01 AND 2017-01-03 AND 2016-12-24) */

SELECT COUNT(*) FROM games
	WHERE GateDate LIKE '2016-10-01%';

/*
	Expected Output
	+----------+
	| COUNT(*) |
	+----------+
	|        0 |
	+----------+
*/

SELECT COUNT(*) FROM games
	WHERE GateDate LIKE '2017-01-03%';

/*
Expected Output
+----------+
| COUNT(*) |
+----------+
|        1 |
+----------+
*/

SELECT COUNT(*) FROM games
	WHERE GateDate LIKE '2016-12-24%';

/*
Expected Output
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
*/
