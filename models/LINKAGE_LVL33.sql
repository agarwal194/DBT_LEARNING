{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(6)}}
FROM 
{{ref('LINKAGE_LVL32')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL32=B.PARENT