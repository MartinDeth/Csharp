use CompanyDB

select * from Orders
exec sp_columns Orders

select * from Products
exec sp_columns Products

select * from Categories

select CategoryID, CategoryName, Description from Categories

select * from Orders



select OrderDate, RequiredDate, ShippedDate from Orders
where ShippedDate is null

	

select * from Employees
where EmployeeId not in(
select EmployeeId
from Orders
)

select * from Region

select * from Territories
select * from Region




SELECT count(*) from Territories
where RegionId in(
select RegionId
from Region
where RegionDescription = 'Eastern'
)

SELECT count(*) from Territories
where RegionId in(
select RegionId
from Region
where RegionDescription = 'Western'
)

SELECT count(*) from Territories
where RegionId in(
select RegionId
from Region
where RegionDescription =  'Northern'
)

SELECT * from Territories
where RegionId in(
select RegionId
from Region
where RegionDescription = 'Southern'
)





create view testtt_ing as
select Territories.RegionID, Territories.TerritoryDescription
from Territories
where Territories.RegionID = '2'

select * from testtt_ing







