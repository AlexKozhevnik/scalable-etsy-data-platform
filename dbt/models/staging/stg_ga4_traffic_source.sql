SELECT DISTINCT
  property_id,
  DATE(startDate) date,
  newUsers new_users,
  sessions,
  bounceRate bounce_rate,
  totalUsers total_users,
  CASE  WHEN sessionMedium = '(none)' THEN 'none'
        WHEN sessionMedium = '(not set)' THEN 'not set' 
        ELSE sessionMedium
  END session_medium, 
  CASE  WHEN sessionSource = '(direct)' THEN 'direct'
        WHEN sessionSource = '(not set)' THEN 'not set' 
        ELSE sessionSource
  END session_suorce,
  screenPageViews screen_page_view,
  sessionsPerUser sessions_per_user,
  averageSessionDuration avg_session_duration,
  screenPageViewsPerSession screen_page_views_per_session
FROM {{source('ga4', 'ga4traffic_sources')}}
ORDER BY date DESC
