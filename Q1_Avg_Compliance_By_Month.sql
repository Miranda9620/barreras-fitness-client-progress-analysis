SELECT
  Time_Period,
  ROUND(AVG(Exercise_Compliance) * 100, 1) AS Avg_Compliance
FROM `my-project-262026.barreras_fitness.client_data`
GROUP BY Time_Period
ORDER BY
  CASE
    WHEN Time_Period = 'May' THEN 1
    WHEN Time_Period = 'June' THEN 2
    WHEN Time_Period = 'July' THEN 3
END;
