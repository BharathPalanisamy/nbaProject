#Shows the first name, school, year born, country, position of each player and where each player played
SELECT display_last_comma_first as 'FullName', birthdate as 'Year Born',
school, country, position,team_name FROM Nba_sql_project.common_player_info;

#The top 75 players in the nba
SELECT display_last_comma_first as 'FullName', birthdate as 'Year Born',
team_name, greatest_75_flag FROM Nba_sql_project.common_player_info
WHERE greatest_75_flag = 'Y';

#The players name, which year they played from and till, and only returns players which played in the 1900's it shows up until 2000. It shows in the correct order.
SELECT display_last_comma_first as 'FullName', from_year as 'StartYear', to_year AS 'End_Year' 
FROM Nba_sql_project.common_player_info
WHERE from_year > 1960 AND to_year < 2000
ORDER BY display_last_comma_first ASC;

#Displays the Players that played in the most recent era, from 2000's to most recent year
SELECT display_last_comma_first as 'FullName', from_year as 'StartYear', to_year AS 'End_Year' 
FROM Nba_sql_project.common_player_info
WHERE from_year >= 2000 AND to_year >= 2006
ORDER BY display_last_comma_first ASC;

#Displays players from the common player info and 
SELECT N.first_name, N.last_name, D.height_w_shoes, D.height_wo_shoes, D.bench_press FROM 
Nba_sql_project.common_player_info N left JOIN
Nba_sql_project.draft_combine_stats D
ON N.first_name = D.first_name
ORDER BY N.first_name ASC;

#Practicing SQL inner join by inner joining the draft combine stats to nba player info and algining the draft player stats to nba players.
SELECT display_last_comma_first as 'FullName', school,
height_w_shoes, height_wo_shoes, bench_press FROM 
Nba_sql_project.common_player_info N INNER JOIN
Nba_sql_project.draft_combine_stats D
ON N.person_id = D.player_id
ORDER BY display_last_comma_first, bench_press ASC;

#Practicing SQL inner join by inner joining the draft combine stats to nba player info and algining the draft player stats to nba players.
SELECT display_last_comma_first as 'FullName', school,
height_w_shoes, height_wo_shoes, bench_press, from_year as 'StartYear', to_year AS 'End_Year' FROM 
Nba_sql_project.common_player_info N INNER JOIN
Nba_sql_project.draft_combine_stats D
ON N.person_id = D.player_id
WHERE from_year >= 2000 AND to_year >= 2001
ORDER BY display_last_comma_first, bench_press ASC;

SELECT display_last_comma_first as 'FullName', school,
height_w_shoes, height_wo_shoes, bench_press, from_year as 'StartYear', to_year AS 'End_Year' FROM 
Nba_sql_project.common_player_info N INNER JOIN
Nba_sql_project.draft_combine_stats D
ON N.person_id = D.player_id
WHERE from_year <= 2000 AND to_year >= 2010
ORDER BY display_last_comma_first, bench_press ASC;


SELECT * FROM Nba_sql_project.common_player_info;