require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee 
  belongs_to :store
end

@store1.employees.create(first_name: "Talia", last_name: "Gladys", hourly_rate: 60)
@store1.employees.create(first_name: "Asuran", last_name: "Zala", hourly_rate: 65)
@store1.employees.create(first_name: "Meyrin", last_name: "Hawke", hourly_rate: 32)
@store1.employees.create(first_name: "Shinn", last_name: "Asuka", hourly_rate: 62)

@store2.employees.create(first_name: "Kira", last_name: "Yamato", hourly_rate: 66)
@store2.employees.create(first_name: "Lacus", last_name: "Clyne", hourly_rate: 70)
@store2.employees.create(first_name: "Murrue", last_name: "Ramius", hourly_rate: 45)
@store2.employees.create(first_name: "Mu", last_name: "Flaga", hourly_rate: 55)





