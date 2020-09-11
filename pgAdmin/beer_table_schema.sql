CREATE TABLE untappd(
	"index" int NOT NULL,
	"beer" varchar NOT NULL,
	"brewery" varchar NOT NULL,
	"style" varchar NOT NULL,
	"link" varchar NOT NULL,
	"abv" varchar NOT NULL,
	"rating" float NOT NULL)
	
CREATE TABLE advocate(
	"index" int NOT NULL,
	"brewery" varchar NOT NULL,
	"beer" varchar NOT NULL,
	"brewery_beer" varchar NOT NULL,
	"style" varchar NOT NULL,
	"abv" varchar NOT NULL,
	"rating" float NOT NULL)
	
CREATE TABLE brewers_guild(
	"index" int,
	"brewery" varchar, 
	"website" varchar,
	"address" varchar,
	"city" varchar,
	"state" varchar)	

CREATE TABLE beer_rank2017(
	"index" int,
	"rank" float,
	"beer" varchar,
	"count" float,
	"abv" varchar,
	"score" float,
	"style" varchar)