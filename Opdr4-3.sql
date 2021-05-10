USE DoctorWho
GO

CREATE FUNCTION fnWords
	(
	@string varchar(max)
	)
RETURNS int
AS
BEGIN
	DECLARE @s varchar(max)
	SET @s = LTRIM(RTRIM(@string))
	DECLARE @WithSpaces int
	DECLARE @withoutSpaces int
	SET @WithSpaces = len(@s)
	SET @WithoutSpaces = LEN(REPLACE(@s,' ',''))
		RETURN @WithSpaces - @WithoutSpaces + 1
END