
SELECT * FROM booking as successful
where booking_status = 'Success'


select vehicle_type, round(avg(ride_distance),2) as avg_ride
from booking
group by vehicle_type


select count (*) from booking as canceled
where booking_status = 'Canceled by Customer'


select customer_id, count(booking_id) as total_rides
from booking
group by customer_id
order by total_rides desc limit 5 


select count(*) from booking as driver_cancel
where canceled_rides_by_driver  = 'Personal & Car related issue'


select max(driver_ratings) as max_rating,
min(driver_ratings) as min_rating
from booking where vehicle_type = 'Prime Sedan'


select * from booking as upi_payments
where payment_method = 'UPI'


select vehicle_type ,round(avg (customer_rating) :: numeric,2) as avg_cust_rating
from booking
group by vehicle_type


select sum(booking_value) as total_value
from booking
where booking_status = 'Success' 


select booking_id , incomplete_rides_reason as incomplete_rides_reason
from booking
where incomplete_rides = 'Yes'