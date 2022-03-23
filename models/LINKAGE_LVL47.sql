{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(46)}}
FROM 
{{ref('LINKAGE_LVL46')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL46=B.PARENT
