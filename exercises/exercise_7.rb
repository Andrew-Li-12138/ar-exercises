require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# Employees must always have a first name present
# Employees must always have a last name present
# Employees have a hourly_rate that is a number (integer) between 40 and 200
# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)

class Employee
validates :first_name, presence: true
validates :last_name, presence: true
validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
validates :store, presence:true
end
  
# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more
# Stores must carry at least one of the men's or women's apparel 

class Store
validates :name, presence: true, length: { minimum: 3 }
validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0}
validate :must_carry_apparel

def must_carry_apparel
  if !mens_apparel && !womens_apparel
    errors.add(:mens_apparel, "must carry at least one type of apparel - men's or women's")
    errors.add(:womens_apparel, "must carry at least one type of apparel - men's or women's")
  end
 end
end

# Ask the user for a store name (store it in a variable)
puts "please enter a store name"
new_store_name = gets.chomp

# Attempt to create a store with the inputted name 
#but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
new_store = Store.new(name: new_store_name)

# Display the error messages provided back from ActiveRecord to the user (one on each line)
# after you attempt to save/create the record
if new_store.save
  puts "new store created"
else
  puts "Validation failed. Cannot create new store. Error message detail:"
  new_store.errors.full_messages.each {|message| puts message}
end




