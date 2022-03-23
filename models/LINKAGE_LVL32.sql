{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(31)}}
FROM 
{{ref('LINKAGE_LVL31')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL31=B.PARENT
