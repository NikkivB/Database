USE WorldEvents
GO

CREATE FUNCTION fnLengthInfo
	(
	@Name AS varchar(max)
	,@Details AS varchar(max)
	)
RETURNS int
AS
BEGIN
	RETURN LEN(@name) + LEN(@Details)
END