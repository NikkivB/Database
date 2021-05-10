USE WorldEvents
GO

SELECT
	[dbo].[fnMonthName](EventDate)
FROM
	tblEvent
