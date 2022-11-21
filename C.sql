/*
В) какой товар дает наибольший вклад в выручку за последний год
*/

with last_year_highest_item as (
select
	max(EXTRACT(YEAR FROM date)) as last_year,
	itemId,
	sum(price)

from 
	Items
	join Purchases using(itemId)

group by
	date,
	itemId

order by
	last_year,
	sum(price) desc

limit 1
)

select itemid 
from last_year_highest_item