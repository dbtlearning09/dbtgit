with
    payments as (select * from {{ ref("stg_payment") }}),

    pivoted as (
        select
            id,
            sum(
                case when paymentmethod = 'credit_card' then amount else 0 end
            ) credit_card_method,
            sum(
                case when paymentmethod = 'coupon' then amount else 0 end
            ) coupon_method,
            sum(
                case when paymentmethod = 'gift_card' then amount else 0 end
            ) gift_card_method,
            sum(
                case when paymentmethod = 'bank_transfer' then amount else 0 end
            ) bank_transfer_method
        from payments
        group by id

    )

select *
from pivoted
