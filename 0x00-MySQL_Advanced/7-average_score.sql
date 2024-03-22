-- computes and store the average score for a student

DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INTEGER)
BEGIN
	UPDATE users
	SET average_score=(SELECT avg(score) FROM corrections
			   WHERE corrections.user_id = user_id)
	WHERE id = user_id;
END $$
DELIMITER ;
