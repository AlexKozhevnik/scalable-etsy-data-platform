SELECT DISTINCT
  property_id,
  DATE(startDate) date,
  eventCount event_count,
  totalUsers total_users,
  totalRevenue total_revenue,
  engagementRate engagement_rate,
  engagedSessions engaged_sessins,
  eventsPerSession events_per_session,
  userEngagementDuration user_engagement_duration,
  LOWER(sessionDefaultChannelGrouping) session_chanel
FROM `bluebird_etsy_analysis_airbyte_row.ga4traffic_acquisition_session_default_channel_grouping_report`
ORDER BY date DESC
