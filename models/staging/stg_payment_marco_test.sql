select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    {{ column_name('amount') }} as amount,
    created as created_at
from {{ source('stripe','payment') }}