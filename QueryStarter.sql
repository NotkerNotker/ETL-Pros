CREATE TABLE DraftData (
    year integer   NOT NULL,
    round integer   NOT NULL,
    pick float   NOT NULL,
    player varchar(50)   NOT NULL,
    position varchar(20)   NOT NULL,
    school varchar(50)   NOT NULL
);

COPY DraftData FROM 'C:\Users\lukee\Desktop\ETL-Pros\NBADraftData.csv' DELIMITER ',' CSV HEADER;

Select * from DraftData;