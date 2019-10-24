CREATE PROCEDURE [Security].[uspGetUserById]
	@UserId int
AS
	set transaction isolation level read uncommitted;
	SELECT 
		*
	from
		Security.[User]
	where
		UserId=@UserId;