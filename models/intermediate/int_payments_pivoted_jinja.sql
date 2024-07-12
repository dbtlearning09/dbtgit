with
    payments as (select * from {{ ref("stg_payment") }}),

    pivoted as (
        select
            id,
            {% set transfer_method = ['credit_card','coupon','gift_card','bank_transfer'] -%}
                {%- for payments in transfer_method -%}
                    sum(case when paymentmethod = '{{ payments }}' then amount else 0 end) {{ payments }}_method
                    {%- if not loop.last -%}
                        ,
                    {% endif %}
                {% endfor %}

        from payments
        group by id

    )

select *
from pivoted
