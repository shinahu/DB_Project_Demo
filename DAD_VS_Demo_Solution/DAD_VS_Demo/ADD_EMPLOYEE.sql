CREATE PROCEDURE [dbo].[ADD_EMPLOYEE]
	@pStaffID int = 0,
	@pSurName nvarchar (50),
	@pGivenName nvarchar (50)

AS
	INSERT INTO Employee (StaffID, SurName, GivenName) VALUES
(@pStaffID,	@pSurName, @pGivenName)
RETURN 0
