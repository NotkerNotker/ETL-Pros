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

CREATE TABLE "ncaa_career_totals" (
    "player_id" int   NOT NULL,
    "Player" varchar(200)   NOT NULL,
    "Career_Start" int   NOT NULL,
    "Career_End" int   NOT NULL,
    "Col_Games_Played" int   NOT NULL,
    "Col_MP" int   NOT NULL,
    "Col_FG" int   NOT NULL,
    "Col_FGA" int   NOT NULL,
    "Col_2P" int   NOT NULL,
    "Col_2PA" int   NOT NULL,
    "Col_3P" int   NOT NULL,
    "Col_3PA" int   NOT NULL,
    "Col_FT" int   NOT NULL,
    "Col_FTA" int   NOT NULL,
    "Col_ORB" int   NOT NULL,
    "Col_DRB" int   NOT NULL,
    "Col_TRB" int   NOT NULL,
    "Col_AST" int   NOT NULL,
    "Col_STL" int   NOT NULL,
    "Col_BLK" int   NOT NULL,
    "Col_TOV" int   NOT NULL,
    "Col_PTS" int   NOT NULL
);

CREATE TABLE "ncaa_stats_per_season" (
    "player_id" int   NOT NULL,
    "Player" varchar(200)   NOT NULL,
    "Col_Season_Start" int   NOT NULL,
    "Col_Season_End" int   NOT NULL,
    "Col_Pos" varchar(200)   NOT NULL,
    "College" varchar(200)   NOT NULL,
    "Col_Conf" varchar(200)   NOT NULL,
    "Col_Games_Played" int   NOT NULL,
    "Col_MP" int   NOT NULL,
    "Col_FG" int   NOT NULL,
    "Col_FGA" int   NOT NULL,
    "Col_2P" int   NOT NULL,
    "Col_2PA" int   NOT NULL,
    "Col_3P" int   NOT NULL,
    "Col_3PA" int   NOT NULL,
    "Col_FT" int   NOT NULL,
    "Col_ORB" int   NOT NULL,
    "Col_DRB" int   NOT NULL,
    "Col_TRB" int   NOT NULL,
    "Col_AST" int   NOT NULL,
    "Col_STL" int   NOT NULL,
    "Col_BLK" int   NOT NULL,
    "Col_TOV" int   NOT NULL,
    "Col_PTS" int   NOT NULL
);

CREATE TABLE "ncaa_career_avgs" (
    "player_id" int   NOT NULL,
    "Player" varchar(200)   NOT NULL,
    "Career_Start" int   NOT NULL,
    "Career_End" int   NOT NULL,
    "Col_Games_Played" int   NOT NULL,
    "Col_MP" int   NOT NULL,
    "Col_FG" int   NOT NULL,
    "Col_FGA" int   NOT NULL,
    "Col_2P" int   NOT NULL,
    "Col_2PA" int   NOT NULL,
    "Col_3P" int   NOT NULL,
    "Col_3PA" int   NOT NULL,
    "Col_FT" int   NOT NULL,
    "Col_FTA" int   NOT NULL,
    "Col_ORB" int   NOT NULL,
    "Col_DRB" int   NOT NULL,
    "Col_TRB" int   NOT NULL,
    "Col_AST" int   NOT NULL,
    "Col_STL" int   NOT NULL,
    "Col_BLK" int   NOT NULL,
    "Col_TOV" int   NOT NULL,
    "Col_PTS" int   NOT NULL
);

CREATE TABLE "Player_Draft_Information" (
    "player_id" int   NOT NULL,
    "draft_round" int   NOT NULL,
    "draft_position" int   NOT NULL,
    "team_drafted" varchar(100)   NOT NULL
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

ALTER TABLE "ncaa_career_totals" ADD CONSTRAINT "fk_ncaa_career_totals_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "ncaa_stats_per_season" ADD CONSTRAINT "fk_ncaa_stats_per_season_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "ncaa_career_avgs" ADD CONSTRAINT "fk_ncaa_career_avgs_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_Draft_Information" ADD CONSTRAINT "fk_Player_Draft_Information_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_NBA_Information" ADD CONSTRAINT "fk_Player_NBA_Information_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

ALTER TABLE "Player_NBA_Stats" ADD CONSTRAINT "fk_Player_NBA_Stats_player_id" FOREIGN KEY("player_id")
REFERENCES "Players" ("player_id");

