{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(23)}}
FROM 
{{ref('LINKAGE_LVL23')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL23=B.PARENT
