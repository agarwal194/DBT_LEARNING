{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(48)}}
FROM 
{{ref('LINKAGE_LVL48')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL48=B.PARENT
