# ETL-Pros
3 man analysis focused on utilizing the extract-transform-load process.
# College Report
----------------
## Sources & Files
* Source of Data: https://www.sports-reference.com/cbb/play-index/psl_finder.cgi
* Files Considered: ncaaplayerstats.csv, ncaa_career_avgs.csv, ncaa_career_totals.csv, ncaa_stats_per_season.csv, etl_pros.ipnyb
## NCAA Player Stats
### Extraction 
* Utilized "Sports-Reference.com" Player Season Finder to query site's database
* Searched for single season data from "any" to "2019-20" seasons
* Query results sorted by Points (scored)
* Used site's share function to extract tables in csv format
* Stacked 30 pages of player data into single csv file containing 3000 rows and 27 columns
### Transformation 
* Renamed columns appropriately
* Observed row counts and series data types
* Removed unneed columns
* Dropped Rows with null values to avoid skewing data
- [x] Used as a clean foundation for following tables to be loaded
## NCAA Player Career Averages
### Extraction 
* Derived from grouping original csv by Player series
* Created new dataframe to hold mean of each statistical category over each player's college career
### Transformation 
* Determined beginning and end of each player's career by finding min and max season years
* Dropped series with irrelevant means
* Merged Min/Max dataframes with Mean dataframe
* Final merge with "Player_Lookup.csv" to display stats for players who have NBA Draft and NBA Stat data
* Saved as a new csv
### Load 
* Created a new table in PosgreSQL named "ncaa_career_avgs"
* Loaded transformed csv into new table
## NCAA Player Career Averages
### Extraction 
* Derived from grouping original csv by Player series
* Created new dataframe to hold mean of each statistical category over each player's college career
### Transformation 
* Determined beginning and end of each player's career by finding min and max season years
* Dropped series with irrelevant means
* Merged Min/Max dataframes with Mean dataframe
* Final merge with "Player_Lookup.csv" to display stats for players who have NBA Draft and NBA Stat data
* Saved as a new csv
### Load 
* Created a new table in PosgreSQL named "ncaa_career_avgs"
* Loaded transformed csv into new table
## NCAA Player Career Averages
### Extraction 
* Derived from grouping original csv by Player series
* Created new dataframe to hold mean of each statistical category over each player's college career
### Transformation 
* Determined beginning and end of each player's career by finding min and max season years
* Dropped series with irrelevant means
* Merged Min/Max dataframes with Mean dataframe
* Final merge with "Player_Lookup.csv" to display stats for players who have NBA Draft and NBA Stat data
* Saved as a new csv
### Load 
* Created a new table in PosgreSQL named "ncaa_career_avgs"
* Loaded transformed csv into new table
