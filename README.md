# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

hotels

1.	List all hotels with feature to filter by location. 
2.	Allow users to book a room in a hotel by choosing no of rooms, check-in date, check-out date etc. 
3.	Display the booked rooms to the user. 
4.	Allow users to modify the booking details (check-in, checkout dates etc.) 
5.	Allow user to cancel the booking. 


hotels

name - string
location - string
total_rooms - integer
booked_rooms - integer

available_rooms = total_rooms - booked_rooms

show hotels based on available_rooms > 0


booking 

hotel_id, - references to hotel
user_id,  - references to user
checkin_date, - date
checkout_date, - date
rooms  -  integer
members - integer
canceled - boolean

once booked update hotel booked_rooms value in callback
once canceled also update hotel booked_rooms value in callback



