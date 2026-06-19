-- 1. User With Maximum Followers --
SELECT username
FROM Users
WHERE user_id =
(
    SELECT following_id
    FROM Followers
    GROUP BY following_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
-- 2.Posts With Above Average Likes --
SELECT
    p.post_id,
    COUNT(l.like_id) AS likes
FROM Posts p
LEFT JOIN Likes l
ON p.post_id = l.post_id
GROUP BY p.post_id
HAVING COUNT(l.like_id) >
(
    SELECT AVG(like_count)
    FROM
    (
        SELECT COUNT(*) AS like_count
        FROM Likes
        GROUP BY post_id
    ) t
);
-- 3. CTE – User Post Count --
WITH UserPosts AS
(
    SELECT
        user_id,
        COUNT(*) AS total_posts
    FROM Posts
    GROUP BY user_id
)
SELECT *
FROM UserPosts;
-- 4. CTE + JOIN --
WITH UserPosts AS
(
    SELECT
        user_id,
        COUNT(*) AS total_posts
    FROM Posts
    GROUP BY user_id
)
SELECT
    u.username,
    up.total_posts
FROM Users u
JOIN UserPosts up
ON u.user_id = up.user_id;
-- 5.Dense Ranking -- 
SELECT
    following_id,
    COUNT(*) AS followers,
    DENSE_RANK() OVER
    (
        ORDER BY COUNT(*) DESC
    ) AS dense_rank_no
FROM Followers
GROUP BY following_id;