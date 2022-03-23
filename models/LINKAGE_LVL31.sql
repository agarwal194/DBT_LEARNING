{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(30)}}
FROM 
{{ref('LINKAGE_LVL30')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL30=B.PARENT
