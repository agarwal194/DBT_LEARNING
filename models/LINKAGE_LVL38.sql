{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(37)}}
FROM 
{{ref('LINKAGE_LVL37')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL37=B.PARENT
