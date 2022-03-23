{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(6)}}
FROM 
{{ref('LINKAGE_LVL6')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL6=B.PARENT