with customer as (
  select * 
  FROM {{ref("int_customer")}}
)


select * from customer