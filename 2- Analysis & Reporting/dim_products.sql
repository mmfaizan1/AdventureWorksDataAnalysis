SELECT 
	p.ProductKey,
	p.ProductAlternateKey AS ProductItemCode,
	p.EnglishProductName AS ProductName,
	ps.EnglishProductSubcategoryName AS SubCategory,
	pc.EnglishProductCategoryName AS Category,
	p.Color AS ProductColor,
	p.Size AS ProductSize,
	p.ProductLine AS ProductLine,
	p.ModelName AS ModelName,
	p.EnglishDescription AS ProductDescription,
	ISNULL(p.Status, 'OutDated') AS ProductStatus
FROM 
	AdventureWorksDW2019..DimProduct AS p
LEFT JOIN
	AdventureWorksDW2019..DimProductSubcategory AS ps
		ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN
	AdventureWorksDW2019..DimProductCategory AS pc
		ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY p.ProductKey ASC