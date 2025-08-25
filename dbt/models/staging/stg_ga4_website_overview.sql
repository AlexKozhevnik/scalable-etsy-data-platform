--Raw GA4 daily metrics. Note: Some dates may have multiple records 
--due to incremental API loading. These should be summed in downstream models.
--Check records_per_date > 1 for dates requiring aggregation.
SELECT DISTINCT
  property_id,
  DATE(startDate) date,
  newUsers new_users,
  sessions,
  totalUsers total_users,
  bounceRate bounce_rate,
  screenPageViews screen_page_views,
  sessionsPerUser sessions_per_user,
  averageSessionDuration avg_session_duration,
  screenPageViewsPerSession screen_page_views_per_session
FROM {{ source('ga4', 'ga4website_overview')}}
ORDER BY date DESC
