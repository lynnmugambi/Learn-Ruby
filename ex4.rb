# num of cars
cars = 100
# car accomodation
space_in_a_car = 4.0
# num of drivers
drivers = 30
# num of pasengers
passengers = 90
# num of cars without drivers
cars_not_driven = cars - drivers
# num of cars with drivers
cars_driven = drivers
# total car space
carpool_capacity = cars_driven * space_in_a_car
# average of car space
average_passengers_per_car = passengers / cars_driven



puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

