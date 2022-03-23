{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(19)}}
FROM 
{{ref('LINKAGE_LVL19')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL19=B.PARENT
