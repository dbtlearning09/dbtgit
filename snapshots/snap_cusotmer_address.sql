{% snapshot snap_cusotmer_address %}
    {{
        config(
            target_schema='snapshot_july',
            unique_key='customer_id',
            strategy='timestamp',
            invalidate_hard_deletes=False,
            updated_at='updated_at'
        )
    }}

    select * from {{ source('stripe', 'customer_address') }}

 {% endsnapshot %}
