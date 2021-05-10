/* 
	10 mei 2021, 
	Nikki van Braam
*/
USE DoctorWho
GO

CREATE FUNCTION fnReign
	(
		@Date1 AS date,
		@Date2 AS date=null
	)
RETURNS INT
AS
BEGIN
	RETURN DateDiff(day,@Date1,IsNull(@Date2,GetDate()))
END