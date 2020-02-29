select player_name, count(1) from players group by player_name having count(1) > 1;

truncate table player_nba_information;

truncate table players cascade;

drop table player_nba_information;

CREATE TABLE player_nba_information (
    "player_id" int  REFERENCES players(player_id),
    "year_start" int   NOT NULL,
    "year_end" int   NOT NULL,
    "height" varchar(5)   NOT NULL,
    "weight" float   NOT NULL
);

select * from player_nba_information;

DELETE
FROM
    players a
        USING players b
WHERE
    a.player_id < b.player_id
    AND a.player_name = b.player_name;
	
drop TABLE player_nba_stats;	
	
CREATE TABLE player_nba_stats (
    "player_id" int  REFERENCES players(player_id),
    "age" int   NOT NULL,
    "year" int   NOT NULL,
    "team" varchar(100)   NOT NULL,
    "position_played" varchar(20)   NOT NULL,
    "minutes_played" int,
    "points_scored" int,
    "two_points_scored" int,
    "three_points_scored" int,
    "free_throws_made" int,
    "assists" int,
    "steals" int,
    "blocks" int,
    "turnovers" int,
    "field_goal_percentage" float
);	

drop TABLE player_information

CREATE TABLE player_information (
    "player_id" int  REFERENCES players(player_id),
    "date_of_birth" date,
    "place_of_birth" varchar(200)
);