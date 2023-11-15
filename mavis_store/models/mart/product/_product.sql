{{config(materialized="table")}}

with product as (
  
  select DISTINCT product, product_category, sub_category

  FROM {{ref("int_product")}}
)


select * from product