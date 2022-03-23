{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(16)}}
FROM 
{{ref('LINKAGE_LVL16')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL16=B.PARENT
