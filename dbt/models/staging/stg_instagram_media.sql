SELECT
    business_account_id,
    page_id,
    username,
    id as post_id,
    timestamp as post_create_date,
    like_count,
    comments_count,
    media_type,
    media_product_type,
    permalink
FROM {{ source('instagram', 'inst_row_media') }}
QUALIFY ROW_NUMBER () OVER (PARTITION BY id ORDER BY _airbyte_extracted_at DESC) = 1
