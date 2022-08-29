# sql-data-base-building

##data cleaning

The oroginal .csv files are included in the data folder. From the first file - actors - one column of identical values was removed and name and surname were joined in a new column to be used as primary key in the SQL database. One duplicate name + surname was deleted since actors tend to have different names. In the following .csv files I have always deleted the colum "last_update" which first appeard in actors.csv. In film.csv I have also fixed the "description" column where the two first characters were wrong.In old_HDD.csv I have also joined the first and last name into a single column to be linked with the first .csv file in SQL.

After that I have used the python library of sqlalchemy to upload the clean databases to SQL. In there I used the ERR in workbench to set the relationships between the tables as follows: ![image](https://user-images.githubusercontent.com/108612580/187260662-a4314233-d982-4d5c-b79a-c3edf98fe574.png)
