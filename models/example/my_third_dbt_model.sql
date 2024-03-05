WITH
   {{config(materialized='table')}}

survey as (
SELECT * FROM {{ref('my_second_dbt_model')}} 
)

SELECT * FROM survey
