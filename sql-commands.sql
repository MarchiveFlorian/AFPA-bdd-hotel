-- 1
select name, city 
from hotel h ;

-- 2 (pas d'adresse renseignée donc j'ai mis city)
select first_name, last_name, city 
from client
where last_name 
like 'White';

-- 3
select name, altitude 
from station s 
where altitude < 1000;

-- 4
select number, capacity 
from room 
where capacity > 1;

-- 5
select last_name, city 
from client 
where city != 'Londres';

-- 6
select name, city, category 
from hotel 
where city = 'Bretou' 
and category > 3;

-- 7
select h.name as hotel, h.category, h.city, s.name
from hotel h 
join station s 
on h.station_id = s.id;

-- 8
select r.number, r.capacity , h.name as hotel, h.category, h.city 
from room r join hotel h on r.hotel_id = h.id;

-- 9
select r.number, r.capacity , h.name as hotel, h.category, h.city
from room r 
join hotel h 
on r.hotel_id = h.id 
where r.capacity >1 
and h.city 
like 'Bretou';

-- 10
select b.booking_date , c.last_name, c.first_name, h.name as hotel
from booking b 
join client c 
on b.client_id = c.id
join room r 
on b.room_id = r.id 
join hotel h 
on r.hotel_id = h.id;

-- 11
select r.number, r.capacity , h.name as hotel, s.name as station 
from room r 
join hotel h 
on r.hotel_id = h.id 
join station s 
on h.station_id = s.id;

-- 12
select c.last_name, c.first_name, h.name as hotel, b.stay_start_date, b.stay_end_date 
from booking b 
join client c 
on b.client_id = c.id
join room r 
on b.room_id = r.id 
join hotel h 
on r.hotel_id = h.id;

-- 13
select s.name as station, count(h.station_id) 
from hotel h 
join station s 
on h.station_id = s.id 
group by s.name; 

-- 14
select s.name as station, count(r.id) 
from room r 
join hotel h 
on r.hotel_id = h.id 
join station s 
on h.station_id = s.id 
group by s.name;

-- 15
select s.name as station, count(r.id) 
from room r 
join hotel h 
on r.hotel_id = h.id 
join station s 
on h.station_id = s.id 
where r.capacity > 1
group by s.name;

-- 16
select h.name as hotel, c.last_name 
from hotel h 
join room r 
on h.id = r.hotel_id 
join booking b 
on b.room_id = r.id 
join client c 
on b.client_id = c.id 
where c.last_name 
like 'Squire';

-- 17
select avg(stay_end_date - stay_start_date) 
from booking; 