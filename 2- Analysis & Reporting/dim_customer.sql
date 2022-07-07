SELECT
	c.CustomerKey,
	c.FirstName,
	c.LastName,
	FirstName + ' ' + LastName AS FullName,
	CASE c.Gender
		WHEN 'M'THEN 'Male'
		WHEN 'F' THEN 'Female'
	END
	AS Gender,
	DateFirstPurchase AS DateofFirstPurchase,
	g.City
	
FROM 
	AdventureWorksDW2019..DimCustomer c
	LEFT JOIN AdventureWorksDW2019..DimGeography g
		ON c.GeographyKey = g.GeographyKey
ORDER BY 
	c.CustomerKey ASC