{% snapshot host_snapshot %}
 
{{
    config(
        target_database = 'INT',
        unique_key='id',
        target_schema = 'SNAPSHOT',
        strategy = 'timestamp',
        updated_at = 'updated_at',
        invalidate_hard_deletes=True
    )
}}
 
SELECT
id ,
NAME , 
is_superhost, 
created_at, 
updated_at
FROM 
{{source('raw_airbnb','hosts')}} 
{% endsnapshot %}