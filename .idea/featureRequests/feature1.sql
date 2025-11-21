Feature Description: Create a report that shows total plays and average plays per user, grouped by subscription type (free vs premium). This simple comparison will reveal which user group is more engaged with the platform.
SELECT COUNT(DISTINCT ap.user_id) AS totalUsers,
COUNT(ap.play_id) AS totalPlays,
FORMAT (FLOOR((COUNT(ap.play_id) / COUNT(DISTINCT ap.user_id)) * 100) / 100, 2) AS avgPlayPerUser,
u.subscription_type
FROM mangomusic.album_plays AS ap
JOIN mangomusic.users AS u
ON ap.user_id = u.user_id
GROUP BY u.subscription_type;
i. 351	94959	270.53	free
   149	38769	260.19	premium