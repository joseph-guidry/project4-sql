/* Step 6 */
/* Insert 4 teams of the NFC South Division */
INSERT INTO teams VALUES('New Orleans Saints', 1000), ('Atlanta Falcons', 1001), 
				  ('Carolina Panthers', 1002), ('Tampa Bay Buccaneers', 1003);

/* Insert 4 Saints Players */
INSERT INTO players VALUES (0, 'Michael', 'Thomas', 1000, 13), (0, 'Drew', 'Brees', 1000, 09), 
					 	   (0, 'Mark', 'Ingram', 1000, 22), (0, 'Will', 'Lutz', 1000, 03);

/* Insert 4 Falcons Players */
INSERT INTO players VALUES (0, 'Matt', 'Ryan', 1001, 02), (0, 'Julio', 'Jones', 1001, 11),
						   (0, 'Tevin', 'Coleman', 1001, 26), (0, 'Matt', 'Bryant', 1001, 3);

/* Insert 4 Panthers Players */
INSERT INTO players VALUES (0, 'Cam', 'Newton', 1002, 01), (0, 'Devin', 'Funchess', 1002, 17), 
						   (0, 'Luke', 'Kuechly', 1002, 59), (0, 'Graham', 'Gano', 1002, 09);

/* Insert 4 Buccaneers Players */
INSERT INTO players VALUES (0, 'Jameis', 'Winston', 1003, 03), (0, 'Gerald', 'McCoy', 1003, 93),
						   (0, 'Doug', 'Martin', 1003, 22), (0, 'Patrick', 'Murphy', 1003, 07);


/* ADD Personal Info for Players */
/* PID, Age, Height(inches), Weight(lbs) */
INSERT INTO personal_info VALUES (01, 24, 76, 212), (02, 38, 72, 209), (03, 27, 69, 215),
								 (04, 23, 73, 184), (05, 32, 76, 217), (06, 28, 75, 220),
								 (07, 24, 73, 210), (08, 42, 69, 203), (09, 28, 77, 245),
								 (10, 23, 76, 225), (11, 26, 75, 238), (12, 30, 74, 202),
								 (13, 23, 76, 231), (14, 29, 76, 300), (15, 28, 69, 223),
								 (16, 26, 67, 182);

SELECT firstname, lastname, age, height, weight FROM personal_info, players
	WHERE players.pid = personal_info.pid;

INSERT INTO games VALUES (0, '2016-09-11 13:00:00', 1003, 1001), -- Game 1
						 (0, '2016-09-26 20:30:00', 1001, 1000), -- Game 2
						 (0, '2016-10-02 13:00:00', 1002, 1001), -- Game 3
						 (0, '2016-10-10 20:30:00', 1003, 1002), -- Game 4
						 (0, '2016-10-16 13:00:00', 1002, 1000), -- Game 5
						 (0, '2016-11-03 19:30:00', 1001, 1003), -- Game 6
						 (0, '2016-11-17 19:30:00', 1000, 1002), -- Game 7
						 (0, '2016-12-11 18:00:00', 1000, 1003), -- Game 8
						 (0, '2016-12-24 12:00:00', 1001, 1002), -- Game 9
						 (0, '2016-12-24 16:00:00', 1003, 1000), -- Game 10
						 (0, '2017-01-01 13:00:00', 1002, 1003), -- Game 11
						 (0, '2017-01-03 18:00:00', 1000, 1001)  -- Game 12
						 ; 


INSERT INTO game_scores VALUES (1003, 01, 31, 24, 55, 'W'), (1001, 01, 24, 31, 55, 'L'), 
						       (1001, 02, 45, 32, 77, 'W'), (1000, 02, 32, 45, 77, 'L'),
						       (1002, 03, 33, 48, 81, 'L'), (1001, 03, 48, 33, 81, 'W'),
						       (1003, 04, 17, 14, 31, 'W'), (1002, 04, 14, 17, 31, 'L'),
						       (1002, 05, 38, 41, 79, 'L'), (1000, 05, 41, 31, 79, 'W'),
						       (1001, 06, 43, 28, 71, 'W'), (1003, 06, 28, 43, 71, 'L'),
						       (1000, 07, 20, 23, 43, 'L'), (1002, 07, 23, 20, 43, 'W'),
						       (1000, 08, 11, 16, 27, 'L'), (1003, 08, 16, 11, 27, 'W'),
						       (1001, 09, 33, 16, 49, 'W'), (1002, 09, 16, 33, 49, 'L'),
						       (1003, 10, 24, 31, 55, 'L'), (1000, 10, 31, 24, 55, 'W'),
						       (1002, 11, 16, 17, 33, 'L'), (1003, 11, 17, 16, 33, 'W'),
						       (1000, 12, 32, 38, 70, 'L'), (1001, 12, 38, 32, 70, 'W')
						       ;

