/*

А) какую сумму в среднем в месяц тратит:
- пользователи в возрастном диапазоне от 18 до 25 лет включительно   "2 125,00 ?"
- пользователи в возрастном диапазоне от 26 до 35 лет включительно

*/
with from18to25 as (
select	
	row_number() over() as r,
	sum(price) / 12 as avg_in_month_from_18_to_25

from 
	Items
	join Purchases using(itemId)
	join Users using(userId)

where
	age between 18 and 25
),

from26to35 as (
select
	row_number() over() as r,
	sum(price) / 12 as avg_in_month_from_26_to_35

from 
	Items
	join Purchases using(itemId)
	join Users using(userId)

where
	age between 26 and 35
)

select 
	avg_in_month_from_18_to_25, 
	avg_in_month_from_26_to_35 
from 
	from18to25
	join from26to35 using(r)