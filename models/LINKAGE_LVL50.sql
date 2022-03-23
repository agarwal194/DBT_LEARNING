{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(49)}}
FROM 
{{ref('LINKAGE_LVL49')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL49=B.PARENT
