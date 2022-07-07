SELECT 
	ProductKey,
	OrderDateKey,
	DueDateKey,
	ShipDateKey,
	CustomerKey,
	SalesOrderNumber,
	SalesAmount
FROM
	AdventureWorksDW2019..FactInternetSales
WHERE
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE())-2 --To extract last two year results
ORDER BY
	OrderDateKey ASC