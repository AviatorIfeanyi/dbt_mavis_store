
with source as (
  select * from {{ source('', '')}}
)