SELECT
 Time_Period,
 ROUND(AVG(Body_Weight), 1) AS Avg_Body_Weight
FROM `my-project-262026.barreras_fitness.client_data`
GROUP BY Time_Period
ORDER BY Avg_Body_Weight DESC;
