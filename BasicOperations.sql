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
end