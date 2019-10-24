CREATE TABLE [Security].[User]
(
	UserId INT NOT NULL
	,FirstName nvarchar(50) not null
	,LastName nvarchar(50) not null
	,FullName as LastName+', '+FirstName persisted not null
	,IsActive bit not null constraint DF_User_IsActive default (1)
	,constraint Pk_User_UserId Primary Key Clustered (UserId asc)
)
go

create nonclustered index IX_User_IsActive on Security.[User] (IsActive asc)
go


