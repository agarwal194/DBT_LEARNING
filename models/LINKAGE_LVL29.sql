{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(28)}}
FROM 
{{ref('LINKAGE_LVL28')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL28=B.PARENT
