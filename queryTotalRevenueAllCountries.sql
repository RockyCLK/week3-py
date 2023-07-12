SELECT 	co.country,
		SUM(p.amount) AS total_revenue
FROM payment p
JOIN customer cu ON p.customer_id = cu.customer_id
JOIN address ad ON cu.address_id = ad.address_id
JOIN city ct ON ad.city_id = ct.city_id
JOIN country co ON ct.country_id = co.country_id
GROUP BY co.country