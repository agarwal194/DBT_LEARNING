{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(26)}}
FROM 
{{ref('LINKAGE_LVL26')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL26=B.PARENT
