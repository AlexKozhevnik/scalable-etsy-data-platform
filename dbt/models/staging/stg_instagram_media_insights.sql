WITH CTE_deduplicate AS (
SELECT 
*
FROM {{ source('instagram', 'inst_row_media_insights') }}
QUALIFY ROW_NUMBER () OVER (PARTITION BY id ORDER BY _airbyte_extracted_at DESC) = 1
)
SELECT 
  business_account_id,
  page_id,
  id AS post_id,
  COALESCE(likes,0) likes,
  COALESCE(reach, 0) reach,
  saved,
  shares,
  COALESCE(follows, 0) follows,
  COALESCE(comments, 0) comments,
  COALESCE(profile_visits, 0) profile_visits,
  COALESCE(ig_reels_avg_watch_time, 0) reels_avg_watch_time,
  COALESCE(ig_reels_video_view_total_time, 0) reels_view_total_time
FROM CTE_deduplicate
