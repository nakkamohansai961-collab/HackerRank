1)https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
-------
*/SELECT *
FROM CITY
WHERE CountryCode = 'USA'
  AND Population > 100000;

2)https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true
-------
SELECT NAME
FROM CITY
WHERE CountryCode = 'USA'
  AND Population > 120000;
3)https://www.hackerrank.com/challenges/select-all-sql/problem?isFullScreen=true
--------
/SELECT *
FROM CITY;
4)https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true
------
SELECT *
FROM CITY
WHERE ID = 1661;
5)https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
------
SELECT *
FROM CITY
WHERE CountryCode = 'JPN';
6)https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true
-------
SELECT NAME
FROM CITY
WHERE CountryCode = 'JPN';
7)https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true
------
SELECT CITY, STATE
FROM STATION;
8)https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
-----
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;
9)https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
-----
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS difference
FROM STATION;

10)https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
---
SELECT *
FROM (
    SELECT CITY, LENGTH(CITY) AS CITY_LENGTH
    FROM STATION
    ORDER BY LENGTH(CITY) ASC, CITY ASC
    FETCH FIRST 1 ROW ONLY
) AS SHORTEST
11)https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
----
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(SUBSTR(CITY, 1, 1)) IN ('a', 'e', 'i', 'o', 'u');
12)https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true
------
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(RIGHT(CITY, 1)) IN ('a', 'e', 'i', 'o', 'u');
13)https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true
-----
/SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) IN ('a','e','i','o','u') AND
LOWER(SUBSTR(CITY,LENGTH(CITY),1)) IN ('a','e','i','o','u');
14)https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
--------
SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') OR
LOWER(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');
15)https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true
------
/SELECT DISTINCT CITY FROM STATION WHERE LOWER(SUBSTR(CITY,1,1)) NOT IN ('a','e','i','o','u') AND 
LOWER(SUBSTR(CITY,LENGTH(CITY),1)) NOT IN ('a','e','i','o','u');


