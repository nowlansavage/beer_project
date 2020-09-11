# beer_project

The Great Bootcamp Beer Directory


## Team:
Nowlan Savage, Chris Lang, Ben Melvin, Jay Spears, Ryan Eberle 

### Extract

#### Data Sources:
Untappd - Webscrape
Beer Advocate - CSV file was downloaded
Rate Beer - Webscrape
Brewers’ Association - Webscrape 

##### Brewers’ Association
Scraped brewery name, address, and website using Selenium and Beautiful Soup.  Selenium was used because the page updated as it scrolled.   Not every brewery had each attribute so blanks were inserted.

##### Beer Advocate 2017
A csv containing 1.5 million ratings of beers from Beer Advocate was available on kaggle (https://www.kaggle.com/rdoume/beerreviews). This file is too large for a Git repository so it is available using the above web address.

##### RateBeer
RateBeer top 50 list for each beer style (124 styles) was scraped using Selenium, Beautiful Soup and Pandas. First the beer styles and URLs to each top 50 list were scraped using beautiful soup. This list was used to scrape the top 50 lists from each of the beer styles. The rating pages were all dynamic web pages so selenium in combination with panda read_html was used.

##### Untappd
Scraped tasteatlas.com using BeautifulSoup and Splinter for ten most popular beer styles in the world, turned data into a list.  Used a for loop to iterate through the list of top ten styles, searching the untappd.com website and scraping data with BeautifulSoup and Splinter, for beer, brewery, style, link, abv, and rating.  Returned a list of five beers in each of the top ten styles (50 total) and putting it into a Panda’s dataframe.  Exported as .csv and .sqlite files.  Repeated the process with BeautifulSoup and Splinter, scraping untappd.com’s list of 50 top rated beers in any style.  Exported as .csv and .sqlite files. Combined the two files, dropping any duplicates where both beer name and brewery matched.  Exported final file as both .csv and .sqlite (96 total).  Tried automating login to untappd.com to retrieve more data.  It has recaptcha login security, and I was unable to make it work.  Darn.



#### Transform

Sync disparate data into single dataset
Clean dataset
Weight rating scales, if different
Join specific beer information with Brewers’ Association directory info
Beer Advocate had entries that wouldn’t load into pgAdmin, those entries were found using Pandas and dropped from the final csv file. 


##### Brewers’ Association
The data was converted into a dataframe using pandas, then was written to a sqlite file and loaded into pgAdmin.

##### Beer Advocate 2017
This CSV was uploaded into pandas and cleaned to remove incomplete entries and to remove excess data. The following columns were kept: brewery name, beer name, combined name (brewery name plus beer name), beer style, beer_abv, overall review. This was then converted into a sqlite file and loaded to pgAdmin.

##### RateBeer
These values were clean so they were used as is. One problem was that the brewery and beer name was combined with no delimiter in between. A future direction of this project would be to find a way to extract the brewery name from the beer name.

##### Untappd
These values were clean so they were used as is. Turned into dataframe, .csv, and .sqlite files for use with SQL.


#### Load

Once the data was cleaned and table headers were all synced the dataframes were written to sqlite files. Using pgAdmin, tables were created to build the schema for our csv files. The corresponding files were then uploaded into their respective tables. 




#### Use Case

The Great Bootcamp Beer Directory will allow you to perform searches based on beer name, beer style, brewery, abv, ratings, and location.  

Want to meet up with other Bootcamp participants at a brewery in Denver that serves a highly rated IPA?  We can find that for you!  Taking a road trip and want to tour a number of breweries in New Orleans?  We can make that list for you!  

Our database contains contact information for breweries, so you can even set up tours!

This info could be combined with a search app and published as a webpage.  Additionally, the search could be combined with a mapping tool to help you plan your brewery tours.

#### Files
The code for the webscrape of Brewers' association data is in the scrape_brewers_association.ipynb and data is stored in beer_project.sqlitehgi

The code for the uploading and transformation of the Beer Advocate data and the scrapping of the RateBeer top 50 lists are both in the file named: beer_data.ipynb. A chromedriver was used for the webscrape of RateBeer and is available in the repo. 

The transformed Beer Advocate data was put into an sqlite file: beer_advocate_2017.sqlite but was too large so it was zipped and is in the repo as beer_advocate_2017.zip

The transformed RateBeer Data was put into an sqlite file: RateBeer_scrape.sqlite

The Load.ipynb file was used to coordinate table headers across our data frames so when they were loaded into pgAdmin, all queries could work. 

The beer_table_schema.sql shows the table creation for loading our csv files into pgAdmin. 



