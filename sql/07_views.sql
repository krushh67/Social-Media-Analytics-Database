CREATE VIEW Popular_Posts AS
SELECT
    p.post_id,
    p.caption,
    COUNT(l.like_id) AS total_likes
FROM Posts p
LEFT JOIN Likes l
ON p.post_id = l.post_id
GROUP BY p.post_id, p.caption;


CREATE VIEW Creator_Performance AS
SELECT
    u.username,
    COUNT(p.post_id) AS total_posts
FROM Users u
LEFT JOIN Posts p
ON u.user_id = p.user_id
GROUP BY u.user_id, u.username;


CREATE VIEW Follower_Statistics AS
SELECT
    following_id,
    COUNT(*) AS followers
FROM Followers
GROUP BY following_id;


CREATE VIEW Hashtag_Analytics AS
SELECT
    h.hashtag_name,
    COUNT(*) AS usage_count
FROM Hashtags h
JOIN Post_Hashtags ph
ON h.hashtag_id = ph.hashtag_id
GROUP BY h.hashtag_id, h.hashtag_name;