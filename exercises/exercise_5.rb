require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@stores = Store.all
puts "annual_total:#{@stores.sum(:annual_revenue)}"
puts "annual_average:#{@stores.average(:annual_revenue)}"
puts "number of stores which sell more than 1M: #{@stores.where('annual_revenue >= ?', 1000000).count}"
