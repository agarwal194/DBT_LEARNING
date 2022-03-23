{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(6)}}
FROM 
{{ref('LINKAGE_LVL41')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL41=B.PARENT