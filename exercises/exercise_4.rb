require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Surrey = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

Whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

Yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "mens store: #{store.name} has annual revenue #{store.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true)

@womens_stores.each do |store|
  if store.annual_revenue < 1000000
    puts "womens store #{store.name} has annual revenue #{store.annual_revenue}"
  end
end