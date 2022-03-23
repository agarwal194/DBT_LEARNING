{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(42)}}
FROM 
{{ref('LINKAGE_LVL42')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL42=B.PARENT
