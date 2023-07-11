SELECT 	TO_CHAR(p.payment_date, 'yyyy-mm-dd') date_of_revenue,
		SUM(p.amount) AS daily_revenue
FROM payment p
JOIN staff stf ON p.staff_id = stf.staff_id
JOIN store str ON stf.store_id = str.store_id
JOIN address ad ON str.address_id = ad.address_id
JOIN city ct ON ad.city_id = ct.city_id
JOIN country co ON ct.country_id = co.country_id
WHERE co.country = 'Australia'
GROUP BY date_of_revenue, co.country
ORDER BY date_of_revenue asc, co.country asc