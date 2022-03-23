{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(7)}}
FROM 
{{ref('LINKAGE_LVL7')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL7=B.PARENT