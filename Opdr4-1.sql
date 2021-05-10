USE DoctorWho
GO

CREATE FUNCTION fnNumberCompanions
	(
	@EpisodeId int
	)
RETURNS int
AS
BEGIN
	RETURN (
		SELECT COUNT(*) FROM tblEpisodeCompanion
		WHERE EpisodeId = @EpisodeId
	)
END