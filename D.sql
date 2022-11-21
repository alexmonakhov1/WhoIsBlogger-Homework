/*
Г) топ-3 товаров по выручке и их доля в общей выручке за любой год
*/

select
	itemid,
	sum(price) as sum_price
	
from 
	Items
	join Purchases using(itemId)

where 
	EXTRACT(YEAR FROM date) = '1999'

group by
	itemid
	
order by
	sum_price desc

limit 3