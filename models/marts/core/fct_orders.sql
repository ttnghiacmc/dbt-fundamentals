with payment as (

    select * from {{ ref('stg_payments')}}

),
final as (

    select
        order_id,
        customer_id,
        sum(amount) as amount
    from payment
    group by 1,2
)
select * from final