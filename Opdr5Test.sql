USE DoctorWho
GO

SELECT
	[dbo].[fnEpisodeDescription](Title) AS 'Episode type',
	COUNT(*) AS 'Number of episodes'
FROM
	tblEpisode
GROUP BY
	[dbo].[fnEpisodeDescription](Title)
