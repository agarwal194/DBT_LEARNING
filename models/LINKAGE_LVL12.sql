{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(11)}}
FROM 
{{ref('LINKAGE_LVL11')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL11=B.PARENT
