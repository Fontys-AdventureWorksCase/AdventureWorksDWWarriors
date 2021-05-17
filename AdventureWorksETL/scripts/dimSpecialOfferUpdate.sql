Update dw
SET
dw.Category = st.category, dw.Description = st.description, dw.Type = st.Type
FROM AdventureWorksDW.dbo.Dim_SpecialOffer dw
LEFT JOIN StagingDW.dbo.Dim_SpecialOffer_stage_updates st on dw.SpecialOfferKey = dw.SpecialOfferKey 

Where dw.SpecialOfferKey = st.SpecialOfferKey
and (
dw.Category <> st.Category
or  dw.Description <> st.Description
or  dw.Type <> st.Type)