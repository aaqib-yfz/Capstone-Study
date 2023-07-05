select AVG( ride_time3) as mean
FROM aaqib.dbo.data3 d 

--average ride time is 18 mins

select MAX(ride_time3)
from aaqib.dbo.data3 d

--maximum ride length is 59 mins


select Top 1(day_of_week)
from aaqib.dbo.data3 d 

--sunday is the busiest

	

select AVG(ride_time3) as avg_ride_time_for_members
from aaqib.dbo.data3 d 
WHERE member_casual = 'member'

--average ride time for members is 16


select AVG(ride_time3) as avg_ride_time_for_casual
from aaqib.dbo.data3 d 
WHERE member_casual = 'casual'

--average ride time for casual is 23 mins


--Average ride time on each day
declare @i int = 1 
while @i <= 7
	begin
		SELECT AVG(ride_time3) as avg_ride_time
		from aaqib.dbo.data3 d 
		WHERE day_of_week = @i
		PRINT CONCAT('d',@i);  
		set @i = @i+1;
		
	end;
	
--average ride time on each day in minutes
--1 = 20
--2=17
--3= 18
--4 = 15
--5= 15
--6 =16
--7=19

SELECT COUNT( ride_id)  
from aaqib.dbo.data3 d 
where day_of_week = 7


--number of rides on each day
declare @i int = 1 
while @i <= 7
	begin
		SELECT COUNT(ride_id ) as Number0fRides
		from aaqib.dbo.data3 d 
		WHERE day_of_week = @i  
		set @i = @i+1;
	end;
--
--1= 17,915
--2=10,745
--3=12,813
--4=8,718
--5=11,703
--6=9,972
--7=12,910

