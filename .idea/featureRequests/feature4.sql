Feature Description: Create a report showing the number of new user signups for each month over the past 12 months. This provides a clear timeline of user acquisition trends.
SELECT DATE_FORMAT(u.signup_date, '%Y-%m') AS signup_month,
COUNT(u.user_id) AS new_users,
SUM(CASE WHEN u.subscription_type = 'free' THEN 1 ELSE 0 END )AS 'free_signups',
SUM(CASE WHEN u.subscription_type = 'premium' THEN 1 ELSE 0 END )AS 'premium_signups'
FROM mangomusic.users AS u
WHERE signup_date >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
GROUP BY signup_month
ORDER BY signup_month ASC;
i. 2024-11	3	2	1
   2024-12	8	6	2
   2025-01	3	3	0
   2025-02	6	6	0
   2025-03	5	4	1
   2025-04	5	3	2
   2025-05	10	7	3
   2025-06	8	6	2
   2025-07	5	1	4
   2025-08	8	5	3
   2025-09	7	5	2
   2025-10	9	5	4