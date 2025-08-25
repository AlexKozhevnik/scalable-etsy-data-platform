-- Note: some rows may not be unique in staging.
-- In marts layer we need to aggregate by (date, device_category, operating_system).
SELECT DISTINCT
  property_id,
  DATE(startDate) AS date,
  newUsers AS new_users,
  totalUsers AS total_users,
  sessions,
  bounceRate AS bounce_rate,
  deviceCategory AS device_category,
  operatingSystem AS operating_system,
  screenPageViews as screen_page_views,
  sessionsPerUser as sessions_per_user,
  averageSessionDuration as avg_session_duration,
  screenPageViewsPerSession as screen_page_views_per_session
FROM {{ source('ga4', 'ga4devices')}}
ORDER BY date DESC
