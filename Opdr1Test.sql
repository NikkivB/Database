USE DoctorWho
GO

SELECT
	DoctorName AS [Name]
	,FirstEpisodeDate AS [First]
	,LastEpisodeDate AS [Last]
	,[dbo].[fnReign](FirstEpisodeDate, LastEpisodeDate) AS [Days in reign]
FROM
	tblDoctor
WHERE
	LastEpisodeDate IS NOT NULL