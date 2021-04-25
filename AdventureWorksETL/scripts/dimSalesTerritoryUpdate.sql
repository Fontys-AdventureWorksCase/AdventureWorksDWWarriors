declare @key int
declare @territory VARCHAR(50)
declare @country varchar(50)
declare @continent varchar(50)

DECLARE updatecur CURSOR FOR 
SELECT st.TerritoryKey,st.Territory,st.Country,st.Continent
FROM Dim_SalesTerritory_stage_updates st
left join AdventureWorksDW.dbo.Dim_SalesTerritory dw on dw.TerritoryKey = st.TerritoryKey
WHERE 
 dw.Continent <> st.Continent
or  dw.Country <> st.Country
or  dw.Territory <> st.Territory


OPEN updatecur

FETCH NEXT FROM updatecur INTO @key,@territory,@country,@continent; 

-- Set the status for the cursor
WHILE @@FETCH_STATUS = 0  
 
BEGIN  
	-- 4 - Begin the custom business logic
	-- * UPDATE WITH YOUR SPECIFIC CODE HERE *
   	Update AdventureWorksDW.dbo.Dim_SalesTerritory 
	set Territory = @territory, Country = @country, Continent = @continent
	where TerritoryKey = @key;

	-- 5 - Fetch the next record from the cursor
 	FETCH NEXT FROM updatecur INTO @key,@territory,@country,@continent; 
END 

-- 6 - Close the cursor
CLOSE updatecur  

-- 7 - Deallocate the cursor
DEALLOCATE updatecur 