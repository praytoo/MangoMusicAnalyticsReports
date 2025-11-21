Feature Description: Create a report showing all genres ranked by total number of album plays. This gives content team a clear picture of what users want to listen to most.
SELECT COUNT(DISTINCT a.album_id) AS totalAlbums,
COUNT(ap.play_id) AS totalPlays,
COUNT(DISTINCT ar.artist_id) AS totalArtists,
ar.primary_genre
FROM mangomusic.album_plays AS ap
JOIN mangomusic.albums AS a
ON ap.album_id = a.album_id
JOIN mangomusic.artists AS ar
ON a.artist_id = ar.artist_id
GROUP BY ar.primary_genre
ORDER BY totalPlays DESC;
i. 28	33500	5	indie
   137	21487	23	rock
   24	14718	4	punk
   42	9793	7	pop
   114	9114	19	hip hop
   36	8950	6	r&b
   66	8855	11	jazz
   42	7460	7	electronic
   24	6102	4	latin
   24	5273	4	country
   18	3588	3	soul
   18	2244	3	metal
   12	1149	2	world
   6	1080	1	folk
   6	415	1	reggae
