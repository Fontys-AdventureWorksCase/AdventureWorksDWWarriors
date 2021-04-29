declare @key int
declare @description VARCHAR(255)
declare @category varchar(255)
declare @type varchar(255)

DECLARE updatecur CURSOR FOR 
SELECT st.SpecialOfferKey,st.Category,st.Description,st.Type
FROM Dim_SpecialOffer_stage_updates st
left join AdventureWorksDW.dbo.Dim_SpecialOffer dw on dw.SpecialOfferKey = st.SpecialOfferKey
WHERE 
 dw.Category <> st.Category
or  dw.Description <> st.Description
or  dw.Type <> st.Type


OPEN updatecur

FETCH NEXT FROM updatecur INTO @key,@category,@description,@type; 

WHILE @@FETCH_STATUS = 0  
 
BEGIN  
	
   	Update AdventureWorksDW.dbo.Dim_SpecialOffer
	set Category = @category, Description = @description, Type = @type
	where SpecialOfferKey = @key;

 	FETCH NEXT FROM updatecur INTO @key,@category,@description,@type; 
END 

CLOSE updatecur  

DEALLOCATE updatecur 