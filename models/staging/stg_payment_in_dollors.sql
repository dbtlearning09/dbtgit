select 
        id paymnet_id,
        orderid,
        paymentmethod,
        status,
        {{ macro_cents_to_dollors('amount') }} as amount_in_dollors,
        created,
        _batched_at

from {{ source('stripe', 'payment') }}