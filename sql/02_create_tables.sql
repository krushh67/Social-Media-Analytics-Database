CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    full_name VARCHAR(100),
    join_date DATE,
    country VARCHAR(50)
);

CREATE TABLE Posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    content_type VARCHAR(20),
    post_date DATETIME,
    caption TEXT,
    FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE Likes (
    like_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    like_date DATETIME,
    FOREIGN KEY(post_id) REFERENCES Posts(post_id),
    FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE Comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    comment_text TEXT,
    comment_date DATETIME,
    FOREIGN KEY(post_id) REFERENCES Posts(post_id),
    FOREIGN KEY(user_id) REFERENCES Users(user_id)
);

CREATE TABLE Followers (
    follower_id INT,
    following_id INT,
    follow_date DATETIME,
    PRIMARY KEY(follower_id, following_id),
    FOREIGN KEY(follower_id) REFERENCES Users(user_id),
    FOREIGN KEY(following_id) REFERENCES Users(user_id)
);

CREATE TABLE Hashtags (
    hashtag_id INT PRIMARY KEY AUTO_INCREMENT,
    hashtag_name VARCHAR(100) UNIQUE
);

CREATE TABLE Post_Hashtags (
    post_id INT,
    hashtag_id INT,
    PRIMARY KEY(post_id, hashtag_id),
    FOREIGN KEY(post_id) REFERENCES Posts(post_id),
    FOREIGN KEY(hashtag_id) REFERENCES Hashtags(hashtag_id)
);

CREATE TABLE Engagement_Summary (
    post_id INT PRIMARY KEY,
    total_likes INT DEFAULT 0,
    total_comments INT DEFAULT 0,
    engagement_score DECIMAL(10,2),
    FOREIGN KEY(post_id) REFERENCES Posts(post_id)
);



