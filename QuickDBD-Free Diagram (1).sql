-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/L6lh5X
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

CREATE TABLE "Player_Information" (
    "player_id" int   NOT NULL,
    "date_of_birth" date   NOT NULL,
    "place_of_birth" varchar(200)   NOT NULL
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

CREATE TABLE "Player_Draft_Information" (
    "player_id" int   NOT NULL,
    "round" int   NOT NULL,
    "pick" int   NOT NULL,
    "position" int   NOT NULL,
    "school" varchar(100)   NOT NULL,
    "player" varchar(50)   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL
);

CREATE TABLE "Player_NBA_Information" (
    "player_id" int   NOT NULL,
    "year_start" date   NOT NULL,
    "year_end" date   NOT NULL,
    "height" varchar(5)   NOT NULL,
    "weight" float   NOT NULL
);

CREATE TABLE "Player_NBA_Stats" (
    "player_id" int   NOT NULL,
    "age" int   NOT NULL,
    "year" date   NOT NULL,
    "team" varchar(100)   NOT NULL,
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

