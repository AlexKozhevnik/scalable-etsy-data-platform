SELECT DISTINCT
  property_id,
  hostName AS host_name,
  REGEXP_EXTRACT(pagePathPlusQueryString, r'/listing/([0-9]+)') AS listing_id,
  REGEXP_EXTRACT(pagePathPlusQueryString, r'/listing/[0-9]+/([^?]+)') AS slug,
  DATE(startDate) AS date,
  bounceRate AS bounce_rate,
  screenPageViews as screen_pages_views
FROM {{ source('ga4', 'ga4pages')}}
