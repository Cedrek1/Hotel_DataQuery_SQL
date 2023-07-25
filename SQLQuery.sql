

With hotels as 
(
select * 
from dbo.['2018$']
Union
select * 
from dbo.['2019$']
Union
select * 
from dbo.['2020$']
)


/*select 
arrival_date_year,
hotel,
round(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr),2) as revenue
from hotels
group by arrival_date_year,hotel*/

select * from hotels
left join dbo.market_segment$
ON hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
ON meal_cost$.meal = hotels.meal