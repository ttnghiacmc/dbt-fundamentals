select 
T.orderid as order_id,
T.amount
from raw.stripe.payment T
Where T.status = 'success'