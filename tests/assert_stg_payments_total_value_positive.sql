with 
payments as (
    select * from{{ref('stg_payments')}}
)

select
    order_id,
    sum(amount) as total_amount
from payments
group by order_id
having total_amount < 0

/*select
    order_id,
    sum(amount) as total_amount
from {{ ref('stg_payments') }}
group by 1
having not(total_amount >= 0)*/
