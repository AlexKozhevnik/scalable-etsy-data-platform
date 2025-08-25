SELECT 
  CAST(_airbyte_extracted_at as DATE) date_of_extract,
  _airbyte_generation_id generation_id,
  id business_account_id,
  username,
  media_count,
  followers_count
FROM {{ source('instagram', 'inst_row_users') }}
ORDER BY generation_id DESC
