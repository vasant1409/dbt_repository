
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

with source_data as (

    select *
	from public.movie),
	staging as (
	select
		title as x,
		year as y,
		collection as z,
		hashed_title as xz
	from source_data
)

select * from staging

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
