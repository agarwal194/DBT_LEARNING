{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(17)}}
FROM 
{{ref('LINKAGE_LVL17')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL17=B.PARENT
