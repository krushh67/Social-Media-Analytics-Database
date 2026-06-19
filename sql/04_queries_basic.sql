DESC Users;
SELECT * FROM Users;

SELECT * FROM Posts;

SELECT COUNT(*) AS Total_Users
FROM Users;

SELECT COUNT(*) AS Total_Posts
FROM Posts;

SELECT COUNT(*) AS Total_Likes
FROM Likes;

SELECT COUNT(*) AS Total_Comments
FROM Comments;

SELECT *
FROM Users
WHERE country = 'India';

SELECT *
FROM Posts
WHERE content_type = 'Video';

SELECT *
FROM Posts
WHERE content_type = 'Reel';

SELECT *
FROM Users
WHERE join_date > '2024-04-01';

SELECT
    content_type,
    COUNT(*) AS Total_Posts
FROM Posts
GROUP BY content_type;

SELECT
    country,
    COUNT(*) AS Total_Users
FROM Users
GROUP BY country;

SELECT *
FROM Posts
ORDER BY post_date DESC
LIMIT 5;

SELECT *
FROM Posts
ORDER BY post_date ASC
LIMIT 5;

SELECT COUNT(*) AS Total_Follows
FROM Followers;

SELECT COUNT(*) AS Total_Hashtags
FROM Hashtags;

SELECT *
FROM Posts
WHERE user_id = 1;

SELECT *
FROM Comments
WHERE post_id = 1;

SELECT *
FROM Likes
WHERE post_id = 1;

SELECT *
FROM Users
ORDER BY join_date DESC
LIMIT 5;