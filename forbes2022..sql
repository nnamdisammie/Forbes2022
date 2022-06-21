-- Percentages of top 5 sectors invested in
SELECT category,
 count(*) * 100 /SUM(Count(*)) OVER () AS category_percentage
 FROM forbes2022
 GROUP BY 1
 ORDER BY 2 DESC;
 
 -- Getting the total number of billionaires
SELECT COUNT(*) AS Total_number_of_billionaires
FROM forbes2022;

-- Getting the total number of male billionaires
SELECT COUNT(*) AS Total_number_of_billionaires
FROM forbes2022
WHERE gender = 'M';

-- Getting the total number of female billionaires
SELECT COUNT(*) AS Total_number_of_billionaires
FROM forbes2022
WHERE gender = 'F';

-- Getting the number of self made billionaires
SELECT COUNT(*) AS self_made_billionaires
FROM forbes2022
WHERE selfmade = 'True';

-- Getting the number of non-self billionaires
SELECT COUNT(*) AS non_selfmade_billionaires
FROM forbes2022
WHERE selfmade = 'False';

-- Getting the ten most richest billionaires
SELECT PersonName, finalWorth
FROM forbes2022
ORDER BY 2 DESC
LIMIT 10;

-- Getting the top richest billionaires by countries
SELECT countryOfCitizenship, COUNT(finalWorth)
FROM forbes2022
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
 
 -- Getting the most philanthropists
 SELECT PersonName, philanthropyScore
FROM forbes2022
WHERE finalWorth >= 90700
ORDER BY 2 DESC
LIMIT 5