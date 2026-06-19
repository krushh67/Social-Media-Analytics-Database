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
-- 2. Post With Maximum Likes --
SELECT p.post_id,
       p.caption
FROM Posts p
WHERE p.post_id =
(
    SELECT post_id
    FROM Likes
    GROUP BY post_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
-- 3. Users Having Above Average Followers --
SELECT
    u.username,
    COUNT(f.follower_id) AS followers
FROM Users u
LEFT JOIN Followers f
ON u.user_id = f.following_id
GROUP BY u.user_id, u.username
HAVING COUNT(f.follower_id) >
(
    SELECT AVG(follower_count)
    FROM
    (
        SELECT COUNT(*) AS follower_count
        FROM Followers
        GROUP BY following_id
    ) t
);
-- 4.CTE – User Post Count --
WITH UserPosts AS
(
    SELECT
        user_id,
        COUNT(*) total_posts
    FROM Posts
    GROUP BY user_id
)
SELECT *
FROM UserPosts;
-- 5.CTE + JOIN --
WITH UserPosts AS
(
    SELECT
        user_id,
        COUNT(*) total_posts
    FROM Posts
    GROUP BY user_id
)
SELECT
    u.username,
    up.total_posts
FROM Users u
JOIN UserPosts up
ON u.user_id = up.user_id;
-- 6.RANK() – Followers Ranking --
SELECT
    following_id,
    COUNT(*) followers,
    RANK() OVER
    (
        ORDER BY COUNT(*) DESC
    ) follower_rank
FROM Followers
GROUP BY following_id;
-- 7.DENSE_RANK() --
SELECT
    following_id,
    COUNT(*) followers,
    DENSE_RANK() OVER
    (
        ORDER BY COUNT(*) DESC
    ) dense_rank_no
FROM Followers
GROUP BY following_id;
-- 8.Running Total of Likes --
SELECT
    post_id,
    COUNT(*) likes,
    SUM(COUNT(*)) OVER
    (
        ORDER BY post_id
    ) running_total
FROM Likes
GROUP BY post_id;
-- 9.Users Who Never Posted --
SELECT
    u.username
FROM Users u
LEFT JOIN Posts p
ON u.user_id = p.user_id
WHERE p.post_id IS NULL;
-- Most Active User --
-- Activity = Posts + Comments + Likes --
SELECT
    u.username,
    (
        COUNT(DISTINCT p.post_id)
        +
        COUNT(DISTINCT c.comment_id)
        +
        COUNT(DISTINCT l.like_id)
    ) AS activity_score
FROM Users u
LEFT JOIN Posts p
ON u.user_id = p.user_id
LEFT JOIN Comments c
ON u.user_id = c.user_id
LEFT JOIN Likes l
ON u.user_id = l.user_id
GROUP BY u.user_id, u.username
ORDER BY activity_score DESC;