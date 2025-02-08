SELECT date_id, make_name,
count(DISTINCT lead_id) unique_leads,
count(DISTINCT partner_id) unique_partners
FROM DailySales
GROUP BY date_id, make_name;