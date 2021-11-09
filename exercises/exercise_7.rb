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
puts "test for employees"
puts @store1.employees.create(first_name: "qwert", last_name: "asdf", hourly_rate: 30).valid?
puts @store1.employees.create(first_name: "qwert", last_name: "asdf", hourly_rate: 210).valid?
puts @store1.employees.create(first_name: "", last_name: "asdf", hourly_rate: 50).valid?
puts @store1.employees.create(first_name: "qwert", last_name: "", hourly_rate: 30).valid?
puts @store1.employees.create(first_name: "qw", last_name: "asdf", hourly_rate: 50).valid?

puts "test for stores"
puts Store.create(name: "Ba", annual_revenue: 300000, mens_apparel: true, womens_apparel: true).valid?
puts Store.create(name: "Bas", annual_revenue: -100, mens_apparel: true, womens_apparel: true).valid?
puts Store.create(name: "Bas", annual_revenue: 300000, mens_apparel: false, womens_apparel: false).valid?
puts Store.create(name: "Bas", annual_revenue: 300000, mens_apparel: true, womens_apparel: true).valid?
