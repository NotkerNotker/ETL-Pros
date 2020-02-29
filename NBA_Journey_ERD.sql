-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Players" (
    "player_id" int   NOT NULL,
    "player_name" varchar(200)   NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Players" PRIMARY KEY (
        "player_id"
     ),
    CONSTRAINT "uc_Players_player_name" UNIQUE (
        "player_name"
    )
);

CREATE TABLE player_information (
    "player_id" int  REFERENCES players(player_id),
    "date_of_birth" varchar(20),
    "city_of_birth" varchar(200),
    "state_of_birth" varchar(20)
);

CREATE TABLE "Player_College_Information" (
    "player_id" int   NOT NULL,
    "college_name" varchar(200)   NOT NULL,
    "years_played" int   NOT NULL
);

CREATE TABLE "Player_College_Stats" (
    "player_id" int   NOT NULL,
    "age" int   NOT NULL,
    "year" date   NOT NULL,
    "position_played" varchar(20)   NOT NULL,
    "minutes_played" int   NOT NULL,
    "points_scored" int   NOT NULL,
    "two_points_scored" int   NOT NULL,
    "three_points_scored" int   NOT NULL,
    "free_throws_made" int   NOT NULL,
    "assists" int   NOT NULL,
    "steals" int   NOT NULL,
    "blocks" int   NOT NULL,
    "turnovers" int   NOT NULL,
    "field_goal_percentage" float   NOT NULL
);

CREATE TABLE Player_Draft_Information (
    player_id int   NOT NULL,
    player varchar(50)   NOT NULL,
    year int NOT NULL,
    round int   NOT NULL,
    pick int   NOT NULL,
    position varchar(20)   NOT NULL,
    school varchar(100)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    first_name varchar(50)   NOT NULL
);

CREATE TABLE "Player_NBA_Information" (
    "player_id" int   NOT NULL,
    "year_start" int   NOT NULL,
    "year_end" int   NOT NULL,
    "height" varchar(5)   NOT NULL,
    "weight" float   NOT NULL
);

CREATE TABLE "Player_NBA_Stats" (
    "player_id" int   NOT NULL,
    "age" int   NOT NULL,
    "year" date   NOT NULL,
    "team" varchar(100)   NOT NULL,
    "position_played" varchar(20)   NOT NULL,
    "minutes_played" int   ,
    "points_scored" int ,
    "two_points_scored" int,
    "three_points_scored" int,
    "free_throws_made" int,
    "assists" int,
    "steals" int,
    "blocks" int,
    "turnovers" int,
    "field_goal_percentage" float
);

ALTER TABLE "Player_Information" ADD CONSTRAINT "fk_Player_Information_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_College_Information" ADD CONSTRAINT "fk_Player_College_Information_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_College_Stats" ADD CONSTRAINT "fk_Player_College_Stats_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_Draft_Information" ADD CONSTRAINT "fk_Player_Draft_Information_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_NBA_Information" ADD CONSTRAINT "fk_Player_NBA_Information_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_NBA_Stats" ADD CONSTRAINT "fk_Player_NBA_Stats_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

