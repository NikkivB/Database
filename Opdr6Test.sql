USE WorldEvents
GO

SELECT
	EventName AS [Name]
	,[dbo].[fnWinners](EventName, EventDate) AS [Winners]
FROM	
	tblEvent