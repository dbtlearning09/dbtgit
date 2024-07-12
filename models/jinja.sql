{#

{% set description = 'Hello World!!!!!' %}
{% set name = 'My name is Hari Prasad Bharla' %}
{% set course = 'Welcome to dbt traning. I am sure you love it'%}

Hey {{ description }}. Let me introduce myself. {{ name }}. {{course}} which is a 5 days course  

{% set payment_method = ['credit_card','gift_card','coupons','bank_transfer'] %}

{{ payment_method[0]}}
{{ payment_method[1]}}
{{ payment_method[2]}}
{{ payment_method[3]}} 

{%- set payment_method = ['credit_card','gift_card','coupons','bank_transfer'] -%}

{%- for payments in payment_method -%}
    {{payments}}
{% endfor %} 
{%- set payment_method = ['credit_card','gift_card','coupons','bank_transfer'] -%}
{%- for payments in payment_method -%}
    {%- if payments == 'credit_card' -%}    
        {%- set transaction_type = 'Not a good money transaction type' -%}
    {%- else -%}
        {%- set transaction_type = 'is a good money transaction type' -%}
    {%- endif -%}
 Your payments which is {{ payments }} and it {{ transaction_type }}. So be catious.
{% endfor -%}
 #}