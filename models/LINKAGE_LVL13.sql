{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(12)}}
FROM 
{{ref('LINKAGE_LVL12')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL12=B.PARENT
