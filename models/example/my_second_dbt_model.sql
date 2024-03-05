
-- Use the `ref` function to select from other models

With
{{config(materialized='view')}}

inter as (
SELECT
     {{ dbt_utils.star(from=ref('my_first_dbt_model')) }}
FROM
     {{ ref('my_first_dbt_model') }}
WHERE
    y in (1990,1995,2000,2005,2010) and
    z between 6000 and 7000
)
select * from inter
