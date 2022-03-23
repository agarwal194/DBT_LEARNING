{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(14)}}
FROM 
{{ref('LINKAGE_LVL14')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL14=B.PARENT
