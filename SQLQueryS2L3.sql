select Count(*) as TotalOrder
from Orders

select Count(*) as TotalClient
from Customers

select Count(*) as LondonClients
from Customers
where City ='London'

select AVG(Freight) as AverageFreight
from Orders

select AVG(Freight) as AverageFreightBOTTMN
from Orders
where CustomerID='BOTTM'

select CustomerID, Sum(Freight) as FreightPerClient
from Orders
Group by CustomerID

select City, Count(*) as ClientPerCity
from Customers
group by City

select OrderID, Sum(Unitprice * Quantity) as TotalValue
from [Order Details]
group by OrderID

select Sum(Unitprice * Quantity) as TotalValueID10248
from [Order Details]
group by OrderID
having OrderID = 10248

select categoryId, Count(*) as TotalPerCategory
from Products
group by CategoryID

select ShipCountry, Count(*) as TotalOrderPerCountry
from Orders
group by ShipCountry

select ShipCountry, AVG(freight) as AveragePerCountry
from Orders
group by ShipCountry