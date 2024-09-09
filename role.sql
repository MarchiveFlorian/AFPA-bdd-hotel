-- 1
create role  application_admin
with login
password 'motdepasse';

-- 2 connexion faite

-- 3 -> SQL Error [42501]: ERROR: permission denied for table client

-- 4
grant select, insert, update, delete
on public.booking, public.client, public.hotel, public.room
to application_admin;

-- 5 requetes réussies

-- 6
create role application_client
with login 
password 'motdepasse';

-- 7
grant select 
on public.room_hotel_station
to application_client;

-- 8 requetes réussies uniquement sur la vue demandée
