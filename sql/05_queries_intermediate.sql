-- 1. User and Their Posts --
SELECT
    u.username,
    p.post_id,
    p.content_type,
    p.caption
FROM Users u
INNER JOIN Posts p
ON u.user_id = p.user_id;
-- 2. Number of Posts Per User --
SELECT
    u.username,
    COUNT(p.post_id) AS total_posts
FROM Users u
LEFT JOIN Posts p
ON u.user_id = p.user_id
GROUP BY u.user_id, u.username;
-- 3. Top Creators by Number of Posts --
SELECT
    u.username,
    COUNT(p.post_id) AS total_posts
FROM Users u
JOIN Posts p
ON u.user_id = p.user_id
GROUP BY u.user_id, u.username
ORDER BY total_posts DESC;
-- 4. Likes Received by Each Post --
SELECT
    p.post_id,
    COUNT(l.like_id) AS total_likes
FROM Posts p
LEFT JOIN Likes l
ON p.post_id = l.post_id
GROUP BY p.post_id;
-- 5.Most Liked Posts --
SELECT
    p.post_id,
    p.caption,
    COUNT(l.like_id) AS total_likes
FROM Posts p
LEFT JOIN Likes l
ON p.post_id = l.post_id
GROUP BY p.post_id, p.caption
ORDER BY total_likes DESC;
-- 6. Comments Per Post --
SELECT
    p.post_id,
    COUNT(c.comment_id) AS total_comments
FROM Posts p
LEFT JOIN Comments c
ON p.post_id = c.post_id
GROUP BY p.post_id;
-- 7.Hashtags Used in Posts --
SELECT
    p.post_id,
    h.hashtag_name
FROM Post_Hashtags ph
JOIN Posts p
ON ph.post_id = p.post_id
JOIN Hashtags h
ON ph.hashtag_id = h.hashtag_id;
-- 8.Users Who Received Likes on Their Posts --
SELECT
    u.username,
    COUNT(l.like_id) AS total_likes_received
FROM Users u
JOIN Posts p
ON u.user_id = p.user_id
JOIN Likes l
ON p.post_id = l.post_id
GROUP BY u.user_id, u.username
ORDER BY total_likes_received DESC;
-- 9.Average Likes Per Post --
SELECT
    AVG(like_count) AS avg_likes
FROM
(
    SELECT
        COUNT(*) AS like_count
    FROM Likes
    GROUP BY post_id
) t;
-- 10.Average Comments Per Post --
SELECT
    AVG(comment_count) AS avg_comments
FROM
(
    SELECT
        COUNT(*) AS comment_count
    FROM Comments
    GROUP BY post_id
) t;
