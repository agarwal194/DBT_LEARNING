{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(27)}}
FROM 
{{ref('LINKAGE_LVL27')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL27=B.PARENT
