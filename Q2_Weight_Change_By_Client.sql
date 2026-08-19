SELECT
 Client_ID,
 MAX(CASE WHEN Time_Period = 'May' THEN Body_Weight END) AS May_Weight,
 MAX(CASE WHEN Time_Period = 'July' THEN Body_Weight END) AS July_Weight,
 ROUND(
  MAX(CASE WHEN Time_Period = 'May' THEN Body_Weight END) -
  MAX(CASE WHEN Time_Period = 'July' THEN Body_Weight END),
  1
 ) AS Weight_Loss
 FROM `my-project-262026.barreras_fitness.client_data`
 GROUP BY Client_ID
 ORDER BY Weight_Loss DESC;
