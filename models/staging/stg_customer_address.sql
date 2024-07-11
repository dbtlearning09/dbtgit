select * from {{ ref('snap_cusotmer_address') }}
where dbt_valid_to is null