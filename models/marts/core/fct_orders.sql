with orders as (

    select * from {{ ref('stg_orders')}}

),
with payments as (

    select * from {{ ref('stg_payments')}}

),
final as (

    select
        A.order_id,
        A.customer_id,
        A.order_date,
        sum(B.amount) as amount
    from orders A left join payment B using (order_id)
    group by 1,2,3
)
select * from final