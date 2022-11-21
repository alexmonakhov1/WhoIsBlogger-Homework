/*

Б) в каком месяце года выручка от пользователей в возрастном диапазоне 35+ самая большая

*/

with month_with_price as (
select
	to_char(date, 'Month') as month,
	sum(price) as sum_price
	
from 
	Items
	join Purchases using(itemId)
	join Users using(userId)

where
	age > 34

group by
	date

order by 
	sum_price desc

limit 1)

select month from month_with_price