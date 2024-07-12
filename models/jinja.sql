{#

{% set description = 'Hello World'  %}
{% set description2 = 'This is dbt cloud training'  %}
{% set description3 = 'Hari Prasad' %}

{{description}}. Welcome!!!! {{description2}} and my name is {{description3}}

{% set payment_method = ['Debit_Card', 'Credit_Card','Cash', 'Bank_Transfer', 'Coupons'] %}

{{ payment_method[0]}}
{{ payment_method[1]}}
{{ payment_method[2]}}
{{ payment_method[3]}}
{{ payment_method[4]}}


{% set payment_method = ['Debit_Card', 'Credit_Card','Cash', 'Bank_Transfer', 'Coupons'] %}

{% for payments in payment_method %}
    My transaction is {{payments}}
{% endfor %} 

{% set payment_method = ['Debit_Card', 'Credit_Card','Cash', 'Bank_Transfer', 'Coupons'] %}

{% for payments in payment_method %}
    {% if payments == 'Credit_Card' %}
        {% set transaction_type = 'Not a good payment_method'%}
    {% else%}
        {% set transaction_type = 'Is a Good payment_method'%}
    {% endif %}
Your {{payments}} Transcation {{transaction_type}}
{% endfor %}

#}