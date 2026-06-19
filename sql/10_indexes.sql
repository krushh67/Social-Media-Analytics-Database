CREATE INDEX idx_posts_user
ON Posts(user_id);

CREATE INDEX idx_likes_post
ON Likes(post_id);

CREATE INDEX idx_comments_post
ON Comments(post_id);

SHOW INDEX FROM Posts;
SHOW INDEX FROM Likes;
SHOW INDEX FROM Comments;