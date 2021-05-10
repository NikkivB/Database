USE WorldEvents
GO

CREATE FUNCTION fnMonthName
	(
		@Date AS date
	)
RETURNS date
AS
BEGIN
	RETURN FORMAT(@Date, 'dd MMMM yyyy')
END
