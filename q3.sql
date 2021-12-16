select ord.ship_country as pais, shi.company_name as empresa, avg(ord.freight)
from shippers shi join orders ord on (shi.shipper_id = ord.ship_via)
group by cube(pais, empresa)
order by pais asc, empresa asc
