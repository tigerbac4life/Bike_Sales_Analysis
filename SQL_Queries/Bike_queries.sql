with cte as(
	select *
	from bike_share_yr_0
	UNION
	SELECT *
	from bike_share_yr_1
)


SELECT 	dteday, season, cte.yr, weekday, hr, rider_type, riders, price, COGS,
		round((riders * price), 2) as revenue,
        round((riders * price - COGS*riders),2) as profit
FROM cte 
LEFT JOIN cost_table 
ON cte.yr = cost_table.yr
;

