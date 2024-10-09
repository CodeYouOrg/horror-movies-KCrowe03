-- Kristen Crowe 
-- 10/2/24

--Write a SQL query that returns the id, name and imdb rating of top 3
--movies in the horror genre that were released in or before 1985. 
--Note that the column names in the resulting file have been changed 
--from "id", "name", and "imdb_rating" to "Movie_ID", "Movie_Title", 
--and "Rating".

SELECT 
    id AS Movie_ID, 
    name AS Movie_Title, 
    imdb_rating AS Rating
FROM 
    movies
WHERE 
    genre = 'horror' 
    AND year <= 1985
ORDER BY 
    imdb_rating DESC
LIMIT 3;

