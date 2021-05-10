USE WorldEvents
GO

SELECT
	EventName AS [Name]
	,EventDetails AS [Details]
	,[dbo].[fnLengthInfo](EventName, EventDate) AS [Length]
FROM
	tblEvent