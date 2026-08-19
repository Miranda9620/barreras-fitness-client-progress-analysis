SELECT
 Client_ID,
 ROUND(AVG(Exercise_Compliance) * 100, 1) AS Avg_Compliance
FROM `my-project-262026.barreras_fitness.client_data`
GROUP BY Client_ID
ORDER BY Avg_Compliance DESC;
