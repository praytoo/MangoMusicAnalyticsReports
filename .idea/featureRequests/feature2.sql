Feature Description: Create a report showing the top 15 countries by total number of album plays. This helps us understand where our platform is most popular and which markets are worth additional investment.
SELECT COUNT(DISTINCT u.user_id) AS totalUsers,
COUNT(ap.play_id) AS totalPlays,
FORMAT (FLOOR((COUNT(ap.play_id) / COUNT(DISTINCT ap.user_id)) * 100) / 100, 2) AS avgPlayPerUser,
u.country
FROM mangomusic.users AS u
JOIN mangomusic.album_plays AS ap
ON ap.user_id = u.user_id
GROUP BY u.country
ORDER BY COUNT(ap.play_id) DESC
LIMIT 15;
i. 166	45148	271.97	US
   71	20128	283.49	GB
   38	9009	237.07	CA
   27	8136	301.33	DE
   24	7401	308.37	BR
   25	6630	265.20	IN
   20	6091	304.55	MX
   20	6072	303.60	AU
   26	5518	212.23	FR
   21	5079	241.85	JP
   15	4196	279.73	IT
   11	3138	285.27	NL
   16	3037	189.81	ES
   8	1819	227.37	PL
   10	1754	175.40	SE