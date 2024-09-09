-- init
CREATE OR REPLACE VIEW hotel_station
AS
SELECT h.id AS hotel_id,
h.station_id,
h.name as "Hotel name",
h.category,
h.address,
h.city,
s.name AS "Station name",
s.altitude
FROM hotel h
JOIN station s ON h.station_id = s.id;

select * from hotel_station;

drop view hotel_station;

-- 1
CREATE OR REPLACE VIEW booking_client
AS
select b.*, c.last_name, c.first_name
from booking b 
join client c on b.client_id = c.id;

select * from booking_client;

-- 2
CREATE OR REPLACE VIEW room_hotel_station
AS
select r.number as room, h.name as hotel, s.name as station
from room r 
join hotel h on r.hotel_id = h.id
join station s on h.station_id = s.id;

select * from room_hotel_station;

-- 3
CREATE OR REPLACE VIEW client_hotel
AS
select c.last_name, c.first_name, h.name as hotel
from client c 
join booking b on b.client_id = c.id
join room r on r.id = b.room_id
join hotel h on h.id = r.hotel_id;

select * from room_hotel_station;