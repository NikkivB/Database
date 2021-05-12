USE DoctorWho
GO

CREATE FUNCTION fnEpisodeDescription
	(
		@title varchar(100)
	)
RETURNS varchar(50)
AS

BEGIN

	DECLARE @PartDescription varchar(50)
	SET @PartDescription =
		CASE		
			WHEN CHARINDEX('part 1', @title) > 0 
				THEN 'Part1'
			WHEN CHARINDEX('part 2', @title) > 0 
				THEN 'Part2'
			ELSE
				'Single episode'
		END
	RETURN @PartDescription
END