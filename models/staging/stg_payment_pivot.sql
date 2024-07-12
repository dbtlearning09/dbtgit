with payment as (
select * from {{ ref('stg_payment') }}
),

pivoted as (
    select 
        id as order_id,
        {% set payment_method = ['bank_transfer','coupon','credit_card','gift_card']%}
            {% for payments in payment_method %}
                sum(case when paymentmethod = '{{payments}}' then amount else null end) as {{payments}}_amount
                {% if not loop.last %}
                    ,
                {% endif %}
            {% endfor%}      

    from payment
    where status = 'success'
    group by order_id
)

select * from pivoted