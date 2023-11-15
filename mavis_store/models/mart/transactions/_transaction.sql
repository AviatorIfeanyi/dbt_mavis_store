{{config(materialized="table")}}

with transactions as (
  select *
  FROM {{ref("int_transaction")}}
)


select * from transactions