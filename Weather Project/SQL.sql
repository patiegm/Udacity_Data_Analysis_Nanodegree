select g.year, g.avg_temp g_avg_temp, c.city, c.avg_temp
from  city_data c
inner join global_data g on c.year = g.year
where c.city = 'Edinburgh'