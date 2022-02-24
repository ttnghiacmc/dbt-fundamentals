select 
T.orderid as order_id,
T.ID as customer_id,
T.amount
from raw.stripe.payment T