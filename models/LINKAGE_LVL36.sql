{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(35)}}
FROM 
{{ref('LINKAGE_LVL35')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL35=B.PARENT
