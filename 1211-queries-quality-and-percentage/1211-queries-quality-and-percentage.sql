SELECT query_name,
round(AVG(rating/position), 2) quality,
round(sum(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / count(*) * 100, 2) poor_query_percentage
FROM queries
GROUP BY query_name;
