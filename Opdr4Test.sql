USE DoctorWho
GO

SELECT
	EpisodeNumber AS [number]
	,title AS [title]
	,[dbo].[fnNumberEnemies](EpisodeId) AS [Enemies]
	,[dbo].[fnNumberCompanions](EpisodeId) AS [Companions]
	,[dbo].[fnWords](title) AS [Words]
FROM
	tblEpisode
ORDER BY
	Words DESC