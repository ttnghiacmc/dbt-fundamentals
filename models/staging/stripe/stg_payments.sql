select 
T.orderid as order_id,
-- amount is stored in cents, convert it to dollars
T.amount / 100 as amount,
from {{ source('stripe', 'payment') }} T
Where T.status = 'success'