Update dw
SET
dw.Territory = st.Territory, dw.Country = st.Country, dw.Continent = st.Continent
FROM AdventureWorksDW.dbo.Dim_SalesTerritory dw
LEFT JOIN StagingDW.dbo.Dim_SalesTerritory_stage_updates st on dw.TerritoryKey = dw.TerritoryKey 

Where dw.TerritoryKey = st.TerritoryKey
and (
dw.Continent <> st.Continent
or  dw.Country <> st.Country
or  dw.Territory <> st.Territory)
