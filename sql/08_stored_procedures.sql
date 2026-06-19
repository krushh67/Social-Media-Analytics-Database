-- 1. Get User Statistics --
DELIMITER $$

CREATE PROCEDURE GetUserStats(IN uid INT)
BEGIN
    SELECT
        u.username,
        COUNT(DISTINCT p.post_id) AS total_posts,
        COUNT(DISTINCT l.like_id) AS total_likes_received,
        COUNT(DISTINCT c.comment_id) AS total_comments_received
    FROM Users u
    LEFT JOIN Posts p
        ON u.user_id = p.user_id
    LEFT JOIN Likes l
        ON p.post_id = l.post_id
    LEFT JOIN Comments c
        ON p.post_id = c.post_id
    WHERE u.user_id = uid
    GROUP BY u.user_id, u.username;
END $$

DELIMITER ;

-- 2. Get Top Creators --
DELIMITER $$

CREATE PROCEDURE GetTopCreators()
BEGIN
    SELECT
        u.username,
        COUNT(DISTINCT p.post_id) AS posts
    FROM Users u
    JOIN Posts p
        ON u.user_id = p.user_id
    GROUP BY u.user_id, u.username
    ORDER BY posts DESC;
END $$

DELIMITER ;

-- 3. Get Post Engagement --
DELIMITER $$

CREATE PROCEDURE GetPostEngagement(IN pid INT)
BEGIN
    SELECT
        p.post_id,
        p.caption,
        COUNT(DISTINCT l.like_id) AS likes,
        COUNT(DISTINCT c.comment_id) AS comments
    FROM Posts p
    LEFT JOIN Likes l
        ON p.post_id = l.post_id
    LEFT JOIN Comments c
        ON p.post_id = c.post_id
    WHERE p.post_id = pid
    GROUP BY p.post_id, p.caption;
END $$

DELIMITER ;

