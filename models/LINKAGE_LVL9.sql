{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(8)}}
FROM 
{{ref('LINKAGE_LVL8')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL8=B.PARENT
