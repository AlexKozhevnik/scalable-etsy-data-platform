SELECT
  property_id,
  DATE(startDate) AS date,
  SUM(active1DayUsers) as daily_active_users
FROM {{ source('ga4', 'ga4daily_active_users') }}
GROUP BY date, property_id
ORDER BY date DESC
