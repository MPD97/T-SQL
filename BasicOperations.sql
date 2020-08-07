--VARIABLES
declare @variable int = 1
declare @v1 int, @v2 bigint, @v3 char(1) = 'A'

--SET
set @variable = 5
set @v1 =  @v2 + 1

--PRINT
print @variable
print 'value: ' + str(@variable)

--SET USING SELECT
select @v2 = count(1) from [BikeStores].[production].[brands]
print 'V2 VALUE: ' + str(@v2)

--IF STATEMENT
if @v2 % 2 = 0
begin
	print '>True'
end
else begin
	print '>False'
end;

--STORED PROCEDURE
CREATE OR ALTER PROCEDURE sp_example
(
	@para1 INT ,
	@para2 INT OUTPUT
)
AS
BEGIN
	SELECT @para2 = MAX(customer_id) FROM [BikeStores].[sales].[customers]
END

--EXECUTE SP
declare @result INT

EXEC sp_example 10, @result OUTPUT

PRINT 'SP OUTPUT PARA: ' + str(@result)