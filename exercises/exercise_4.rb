require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create(name:"Surrey", annual_revenue:224000, mens_apparel:false, womens_apparel:true)
Whistler = Store.create(name:"Whistler", annual_revenue:1900000, mens_apparel:true, womens_apparel:false)
Yaletown  = Store.create(name:"Yaletown", annual_revenue:430000, mens_apparel:true, womens_apparel:true)

# stores that carry men's apparel 
@mens_stores = Store.where(mens_apparel:true)
@mens_stores.each do |store|
  puts "stores carry men's appareal: #{store.name} store's annual revennue is #{store.annual_revenue}"
end

# stores that carry women's apparel of which annual revenue < $1000000
@womens_stores_less_than_1M = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)
@womens_stores_less_than_1M.each do |store|
  puts "stores carry women's appareal & revenue less than 1M: #{store.name} store's annual revennue is #{store.annual_revenue}"
end

