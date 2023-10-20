WITH registration_week AS -- identifying first event of each unique user
  (
    SELECT
      user_pseudo_id,
      MIN(PARSE_DATE("%Y%m%d", event_date)) OVER(PARTITION BY user_pseudo_id ORDER BY event_date) AS first_event,
      DATE_TRUNC (PARSE_DATE('%Y%m%d', event_date), WEEK) AS event_date,
      purchase_revenue_in_usd
    
    FROM
      tc-da-1.turing_data_analytics.raw_events
    
    WHERE 
    DATE_TRUNC (PARSE_DATE('%Y%m%d', event_date), WEEK) < '2021-01-31'  
  )

-- calculating customer lifetime value for all users, both the ones who have made purchase and those who have not
SELECT 

    DATE_TRUNC(first_event, WEEK) AS cohort_week,
    COUNT(DISTINCT user_pseudo_id) AS number_of_customers,
    SUM(CASE WHEN event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 1 WEEK) THEN purchase_revenue_in_usd ELSE 0 END) / COUNT(DISTINCT user_pseudo_id) AS week_0, 
    SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 1 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 2 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_1, 
    SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 2 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 3 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_2, 
    SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 3 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 4 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_3, 
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 4 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 5 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_4,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 5 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 6 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_5,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 6 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 7 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_6,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 7 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 8 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_7,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 8 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 9 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_8,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 9 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 10 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_9,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 10 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 11 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_10,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 11 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 12 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_11,
  SUM(CASE WHEN event_date >= DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 12 WEEK) AND event_date < DATE_ADD(DATE_TRUNC(first_event, WEEK),INTERVAL 13 WEEK) THEN purchase_revenue_in_usd
    ELSE
    0
  END) / COUNT(DISTINCT user_pseudo_id) AS week_12

FROM 
registration_week

GROUP BY 
cohort_week

ORDER BY
cohort_week
