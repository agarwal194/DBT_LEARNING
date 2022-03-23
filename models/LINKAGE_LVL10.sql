{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(9)}}
FROM 
{{ref('LINKAGE_LVL9')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL9=B.PARENT
