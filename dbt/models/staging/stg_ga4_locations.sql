SELECT DISTINCT 
  property_id,
  DATE(startDate) date,
  COALESCE(nullif(city, ''), 'not set') as city,
  COALESCE(nullif(region, ''), 'not set') as region,
  COALESCE(nullif(country, ''), 'not set') as country,
  newUsers new_users,
  sessions,
  bounceRate bounce_rate,
  totalUsers total_users,
  screenPageViews screen_page_views,
  sessionsPerUser sessions_per_user,
  averageSessionDuration avg_session_duration,
  screenPageViewsPerSession screen_page_views_per_session
FROM {{ source('ga4', 'ga4locations')}}
