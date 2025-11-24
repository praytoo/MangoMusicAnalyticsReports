Feature Description: Create a report showing the top 20 artists ranked by total album plays. This helps artist relations team know which artists are most valuable to our platform.
SELECT a.name, a.artist_id, a.primary_genre, COUNT(DISTINCT ap.album_id) AS total_albums_played,
COUNT(ap.play_id) AS total_plays, COUNT(DISTINCT ap.user_id) AS unique_listeners
FROM `mangomusic`.artists AS a
JOIN `mangomusic`.albums AS al
ON a.artist_id = al.artist_id
JOIN `mangomusic`.album_plays as ap
ON al.album_id = ap.album_id
GROUP BY a.name, a.artist_id, a.primary_genre
ORDER BY total_plays DESC
LIMIT 20;
i. Vampire Weekend	99	indie	5	32027	500
   Kikagaku Moyo	26	rock	6	15942	499
   Ramones	83	punk	6	12449	492
   Ariana Grande	90	pop	6	8357	476
   Joji	21	r&b	6	6420	455
   Alan Walker	31	electronic	6	4969	426
   Buena Vista Social Club	97	latin	6	4928	404
   Ella Fitzgerald	53	jazz	6	3605	412
   Hank Williams	88	country	6	3052	354
   Aretha Franklin	67	soul	6	2801	307
   Bad Religion	84	punk	6	1873	354
   Misha Panfilov	3	jazz	6	1707	281
   Dolly Parton	86	country	6	1680	279
   Kanye West	70	hip hop	6	1607	277
   Yussef Dayes	35	jazz	6	1587	304
   Iron Maiden	81	metal	6	1494	208
   Nirvana	30	rock	6	1472	350
   Kendrick Lamar	33	hip hop	6	1382	273
   Aphex Twin	57	electronic	6	1190	283
   Panchiko	13	indie	5	1122	358