SELECT
  compny_NAME AS company
  ,priority
  -- ,REPLACE(priority,'loow','Low') AS priority
FROM
  `dbt-demo-live.raw_data_circle.raw_cc_funnel_priority`