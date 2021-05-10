USE DoctorWho
GO

CREATE FUNCTION fnNumberEnemies
	(
	@EpisodeId int
	)
RETURNS int
AS
BEGIN
	RETURN (
		SELECT COUNT(EpisodeId) FROM tblEpisodeEnemy
		WHERE EpisodeId = @EpisodeId
	)
END