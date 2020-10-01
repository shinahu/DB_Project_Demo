CREATE TABLE [dbo].[Assignment]
(
	[DateAssigned ] DATE NOT NULL PRIMARY KEY, 
    [LocCode] INT NOT NULL, 
    [StaffID] INT NOT NULL,
    CONSTRAINT [FK_Assignment_Office] FOREIGN KEY ([LocCode]) REFERENCES [Office]([LocCode]), 
    CONSTRAINT [FK_Assignment_Employee] FOREIGN KEY ([StaffID]) REFERENCES [Employee]([StaffID]),
   

)
