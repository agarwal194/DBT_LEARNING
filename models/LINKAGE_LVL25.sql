{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(24)}}
FROM 
{{ref('LINKAGE_LVL24')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL24=B.PARENT
