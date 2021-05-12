USE WorldEvents
GO

CREATE FUNCTION fnWinners
	(
		@title varchar(100)
		,@date date
	)
RETURNS varchar(50)
AS

BEGIN
	DECLARE @Rank varchar(50) = ''
	SET @Rank =
		CASE 
			WHEN @Title in( SELECT top 1 EventName 
			FROM tblEvent order by EventDate) THEN 'Oldest'

			WHEN @Title in( SELECT top 1 EventName 
			FROM tblEvent order by EventDate desc) THEN 'Newest'

			WHEN @Title in( SELECT top 1 EventName 
			FROM tblEvent order by EventName ) THEN 'First alphabetically'

			WHEN @Title in( SELECT top 1 EventName 
			FROM tblEvent order by EventName desc ) THEN 'Last alphabetically'

			ELSE 'Not a winner'
		END
	RETURN @rank
END