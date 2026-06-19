INSERT INTO Users (username, full_name, join_date, country) VALUES
('john_doe', 'John Doe', '2024-01-10', 'USA'),
('emma_smith', 'Emma Smith', '2024-02-15', 'UK'),
('alex_jones', 'Alex Jones', '2024-03-05', 'Canada'),
('sophia_lee', 'Sophia Lee', '2024-04-12', 'Australia'),
('mike_brown', 'Mike Brown', '2024-05-20', 'India'),
('olivia_white', 'Olivia White', '2024-06-08', 'Germany'),
('liam_green', 'Liam Green', '2024-07-14', 'France'),
('ava_taylor', 'Ava Taylor', '2024-08-03', 'Japan'),
('noah_wilson', 'Noah Wilson', '2024-09-11', 'Brazil'),
('mia_clark', 'Mia Clark', '2024-10-25', 'India');

INSERT INTO Posts (user_id, content_type, post_date, caption) VALUES
(1,'Image','2025-01-01 10:00:00','Beautiful sunrise'),
(2,'Video','2025-01-02 11:00:00','Travel vlog'),
(3,'Reel','2025-01-03 12:00:00','Gym motivation'),
(4,'Image','2025-01-04 13:00:00','Nature photography'),
(5,'Video','2025-01-05 14:00:00','Coding tips'),
(6,'Reel','2025-01-06 15:00:00','Fitness routine'),
(7,'Image','2025-01-07 16:00:00','Food review'),
(8,'Video','2025-01-08 17:00:00','Tech news'),
(9,'Reel','2025-01-09 18:00:00','Dance challenge'),
(10,'Image','2025-01-10 19:00:00','Weekend vibes');

INSERT INTO Hashtags (hashtag_name) VALUES
('#travel'),
('#fitness'),
('#coding'),
('#food'),
('#technology'),
('#nature'),
('#photography'),
('#motivation'),
('#reels'),
('#viral');

INSERT INTO Followers (follower_id, following_id, follow_date) VALUES
(2,1,'2025-01-01'),
(3,1,'2025-01-01'),
(4,1,'2025-01-01'),
(5,2,'2025-01-02'),
(6,2,'2025-01-02'),
(7,3,'2025-01-03'),
(8,4,'2025-01-04'),
(9,5,'2025-01-05'),
(10,1,'2025-01-06'),
(1,5,'2025-01-07');

INSERT INTO Likes (post_id, user_id, like_date) VALUES
(1,2,NOW()),
(1,3,NOW()),
(1,4,NOW()),
(2,1,NOW()),
(2,3,NOW()),
(2,5,NOW()),
(3,1,NOW()),
(3,2,NOW()),
(3,4,NOW()),
(3,5,NOW()),
(4,6,NOW()),
(4,7,NOW()),
(5,8,NOW()),
(5,9,NOW()),
(5,10,NOW()),
(6,1,NOW()),
(7,2,NOW()),
(8,3,NOW()),
(9,4,NOW()),
(10,5,NOW());

INSERT INTO Comments
(post_id,user_id,comment_text,comment_date)
VALUES
(1,2,'Amazing photo!',NOW()),
(1,3,'Love this view',NOW()),
(2,1,'Great vlog',NOW()),
(2,5,'Very informative',NOW()),
(3,4,'Motivating content',NOW()),
(4,6,'Awesome click',NOW()),
(5,7,'Useful coding tips',NOW()),
(6,8,'Keep it up!',NOW()),
(7,9,'Looks delicious',NOW()),
(8,10,'Interesting update',NOW());

INSERT INTO Post_Hashtags (post_id, hashtag_id) VALUES
(1,6),
(1,7),
(2,1),
(3,2),
(3,8),
(4,6),
(5,3),
(5,5),
(6,2),
(7,4),
(8,5),
(9,9),
(9,10),
(10,7);

INSERT INTO Engagement_Summary
(post_id,total_likes,total_comments,engagement_score)
VALUES
(1,3,2,5.0),
(2,3,2,5.0),
(3,4,1,5.0),
(4,2,1,3.0),
(5,3,1,4.0),
(6,1,1,2.0),
(7,1,1,2.0),
(8,1,1,2.0),
(9,1,0,1.0),
(10,1,0,1.0);

