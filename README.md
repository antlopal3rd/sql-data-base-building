# sql-data-base-building

The original .csv files are included in the data folder. From the first file - actors - one column of identical values was removed and name and surname were joined in a new column to be used as primary key in the SQL database. One duplicate name + surname was deleted since actors tend to have different names. In the following .csv files I have always deleted the colum "last_update" which first appeard in actors.csv. In film.csv I have also fixed the "description" column where the two first characters were wrong.In old_HDD.csv I have also joined the first and last name into a single column to be linked with the first .csv file in SQL.

After that I have used the python library of sqlalchemy to upload the clean databases to SQL. In there I used the ERR in workbench to set the relationships between the tables as follows: ![image](https://user-images.githubusercontent.com/108612580/187260662-a4314233-d982-4d5c-b79a-c3edf98fe574.png)

One table remained with no possible relationship with any other since the data in "rental_id" from two different tables was no the same. The final SQL schema is uploaded as a .sql

From the queries I decided to focus on:

1. That 199 different actors are included in the database.
2. A table of actors with the films they made (1000 rows)
3. Top 10 actors that appear in the most number of films which are: SANDRA KILMER ,UMA WOOD, VAL BOLGER, RIP CRAWFORD, JULIA MCQUEEN, HELEN VOIGHT, KARL BERRY, WOODY HOFFMAN, LUCILLE TRACY, GRACE MOSTEL
4. List of actors in the database with no film record
5. Top 10 shortest films which are: IRON MOON, RIDGEMONT SUBMARINE, ALIEN CENTER, HALLOWEEN NUTS, HANOVER GALAXY, SHANGHAI TYCOON, HANOVER, GALAXY, HALLOWEEN NUTS, HANOVER GALAXY, VALENTINE VANISHING
6. List of films with the most special features included (61 rows)

The file with the queries is included.