{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(40)}}
FROM 
{{ref('LINKAGE_LVL40')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL40=B.PARENT
