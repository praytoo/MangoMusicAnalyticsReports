Feature Description: Create a simple summary report showing how many album plays were completed vs incomplete, along with the overall completion percentage for the entire platform.
SELECT COUNT(completed), COUNT(*) AS total_plays,
CASE
WHEN SUM(completed = 1) THEN 'completed'
WHEN SUM(completed = 0) THEN 'incomplete'
END AS complete_status,
FORMAT (FLOOR((SUM(completed = 1) / (SELECT COUNT(*) FROM `mangomusic`.`album_plays`)) * 100), 2) AS complete_percentage,
FORMAT (FLOOR((SUM(completed = 0) / (SELECT COUNT(*) FROM `mangomusic`.`album_plays`)) * 100), 2) AS incomplete_percentage
FROM `mangomusic`.`album_plays`
WHERE completed = true OR completed = false
GROUP BY completed = true, completed = false;
i. 105333	105333	completed	78.00	0.00
   28395	28395	incomplete	0.00	21.00