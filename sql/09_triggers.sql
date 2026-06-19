DELIMITER $$

CREATE TRIGGER prevent_self_follow
BEFORE INSERT
ON Followers
FOR EACH ROW
BEGIN
    IF NEW.follower_id = NEW.following_id THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'User cannot follow themselves';
    END IF;
END $$

DELIMITER ;

INSERT INTO Followers
VALUES (1,2,NOW());

INSERT INTO Followers
VALUES (2,3,NOW());

