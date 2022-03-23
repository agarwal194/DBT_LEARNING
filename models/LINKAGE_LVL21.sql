{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(20)}}
FROM 
{{ref('LINKAGE_LVL20')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL20=B.PARENT
