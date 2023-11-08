{{config(materialized="table")}}

with location as (
  
  select distinct date, extract(YEAR from date) as year, 
  extract(MONTH from date) as month,
  FORMAT_DATE('%B', DATE_TRUNC(date, MONTH)) AS month_name

  FROM {{ref("stg_mavisStore__productSales")}}
)


select * from location