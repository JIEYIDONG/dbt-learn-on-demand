{% snapshot snap_products %}

{{
    config(
    target_database='raw',
    target_schema='dbt_jcohen_snapshots',
    unique_key='id',
    strategy='timestamp',
    updated_at='_etl_loaded_at',
    check_cols=['status'],
    )
}}

select * from {{ source('jaffle_shop', 'orders') }}
{% endsnapshot %}
