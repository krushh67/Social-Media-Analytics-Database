# 📊 Social Media Analytics Database

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue)
![SQL](https://img.shields.io/badge/SQL-Analytics-green)
![DBMS](https://img.shields.io/badge/DBMS-Project-orange)
![Status](https://img.shields.io/badge/Status-Completed-success)

A SQL-based analytics system designed to store, manage, and analyze social media platform data. The database tracks users, posts, likes, comments, hashtags, and follower relationships while generating meaningful insights through advanced SQL analytics.

---

## 🎯 Project Objectives

- Design a normalized relational database for social media platforms.
- Analyze user engagement and content performance.
- Implement advanced SQL concepts used in real-world applications.
- Demonstrate database optimization techniques using indexes.
- Automate database operations using triggers and stored procedures.

---

# 🛠️ Technologies Used

- MySQL 8.0
- MySQL Workbench
- SQL

---

# 🗄️ Database Schema

The database consists of 8 interconnected tables designed to represent a social media platform.

## ER Diagram

![ER Diagram](screenshots/er_diagram.png)

---

# 📂 Database Tables

| Table Name | Description |
|------------|-------------|
| Users | Stores user information |
| Posts | Stores post details |
| Likes | Records likes on posts |
| Comments | Records comments on posts |
| Followers | Stores follower-following relationships |
| Hashtags | Stores hashtag information |
| Post_Hashtags | Maps hashtags to posts |
| Engagement_Summary | Stores engagement metrics |

---

# 🚀 Features

### User Analytics
- User registration tracking
- User activity analysis
- Follower statistics

### Post Analytics
- Post performance tracking
- Engagement measurement
- Content type analysis

### Hashtag Analytics
- Most used hashtags
- Hashtag popularity tracking

### Engagement Analytics
- Likes analysis
- Comments analysis
- Engagement score calculation

### Creator Analytics
- Creator leaderboard
- Most followed users
- Most active users

---

# 🧠 SQL Concepts Implemented

## Basic SQL

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING

## Joins

- INNER JOIN
- LEFT JOIN

## Aggregate Functions

- COUNT()
- AVG()
- SUM()
- MAX()
- MIN()

## Advanced SQL

- Subqueries
- Nested Queries
- Common Table Expressions (CTEs)
- Window Functions

### Window Functions Used

- RANK()
- DENSE_RANK()
- ROW_NUMBER()

## Database Objects

- Views
- Stored Procedures
- Triggers
- Indexes

---

# 📊 Analytics Queries Implemented

### Basic Analytics

- Total Users
- Total Posts
- Total Likes
- Total Comments
- Users by Country
- Posts by Content Type

### Intermediate Analytics

- Top Creators
- Most Liked Posts
- Most Commented Posts
- Followers Analysis
- User Engagement Reports
- Hashtag Usage Analysis

### Advanced Analytics

- Creator Leaderboard
- Followers Ranking
- Above Average Engagement Posts
- User Activity Ranking
- Most Popular Hashtags
- Window Function Based Analytics

---

# 📈 Sample Results

## Top Creators Analysis

Identifies users with the highest number of posts.

![Top Creators](screenshots/top_creators.png)

---

## Hashtag Analytics

Displays the most frequently used hashtags.

![Hashtag Analytics](screenshots/hashtag_analytics.png)

---

## Creator Leaderboard

Measures creator popularity using engagement metrics.

![Creator Leaderboard](screenshots/creator_leaderboard.png)

---

# ⚙️ Stored Procedures

### GetUserStats()

Returns engagement statistics for a specific user.

### GetTopCreators()

Returns creators ranked by number of posts.

### GetPostEngagement()

Returns engagement metrics for a specific post.

---

# 🔄 Triggers

### prevent_self_follow

Prevents users from following themselves.

### create_engagement_record

Automatically creates an engagement summary record when a new post is added.

---

# 👁️ Views

The following views were created to simplify analytical queries:

- Popular_Posts
- Creator_Performance
- Follower_Statistics
- Hashtag_Analytics

---

# ⚡ Indexes

Indexes were implemented to improve query performance.

### Indexes Created

- idx_posts_user
- idx_likes_post
- idx_comments_post

---

# 📁 Project Structure

```text
Social-Media-Analytics-Database
│
├── README.md
│
├── sql
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_sample_data.sql
│   ├── 04_queries_basic.sql
│   ├── 05_queries_intermediate.sql
│   ├── 06_queries_advanced.sql
│   ├── 07_views.sql
│   ├── 08_stored_procedures.sql
│   ├── 09_triggers.sql
│   └── 10_indexes.sql
│
├── screenshots
│   ├── er_diagram.png
│   ├── top_creators.png
│   ├── hashtag_analytics.png
│   ├── follower_ranking.png
│   └── creator_leaderboard.png
│
└── docs
```

---

# 🎓 Learning Outcomes

Through this project, I gained practical experience in:

- Relational Database Design
- Data Modeling
- Database Normalization
- SQL Query Writing
- Data Analysis using SQL
- Window Functions
- Stored Procedures
- Triggers
- Indexing and Query Optimization
- MySQL Workbench

---

# 📌 Future Enhancements

- Integration with Power BI
- Dashboard Development
- Real-time Analytics
- Sentiment Analysis on Comments
- Social Media Recommendation System

---

# 👨‍💻 Author

**Krushna Patil**

Computer Engineering Student  
SQL | DBMS | Data Analytics | Software Development

---

