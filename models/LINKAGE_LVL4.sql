{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(4)}}
FROM 
{{ref('LINKAGE_LVL3')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL3=B.PARENT