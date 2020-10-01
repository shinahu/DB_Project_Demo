/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF ('$(DeployTestData)'='true')

BEGIN 
DELETE FROM Assignment;
DELETE FROM Employee;
DELETE FROM Office;

INSERT INTO Employee (StaffID, SurName, GivenName) VALUES
(1,	'Homer', 'Simpson'),
(2,	'Bart',	'Simpson'),
(3,	'Monty', 'Burns'),
(4, 'Apu', 'Nahasapeemapetilon'),
(5, 'Ned', 'Flanders'),
(6, 'Seymore', 'Skinner');

INSERT INTO Office (LocCode, Address, Description) VALUES
(100, 'Building 1 level 2',	'IT LAB'),
(200, 'Building 2 level 3',	'CHEM LAB'),
(300, 'Building 3 level 5',	'BIO LAB');

Insert into Assignment (DateAssigned, LocCode, StaffID)
Values ('11/11/2020', 100, 1),
       ('10/10/2020', 200, 3),
       ('12/12/2020', 300, 1),
       ('12/11/2020', 300, 1),
       ('11/10/2020', 100, 3),
       ('10/12/2020', 200, 1);

END 
GO
