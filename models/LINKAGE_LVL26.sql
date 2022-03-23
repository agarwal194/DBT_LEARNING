{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(25)}}
FROM 
{{ref('LINKAGE_LVL25')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL25=B.PARENT
