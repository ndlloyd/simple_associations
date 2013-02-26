# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# create 10 items
Item.create!( :name => 'PC' )
Item.create!( :name => 'Laptop' )
Item.create!( :name => 'Desk' )
Item.create!( :name => 'Chair' )
Item.create!( :name => 'Phone' )
Item.create!( :name => 'Speaker' )
Item.create!( :name => 'Printer' )
Item.create!( :name => 'Scanner' )
Item.create!( :name => 'Shredder' )
Item.create!( :name => 'Cabinet' )
# create 3 customers
Customer.create!( :name => 'SMU', :phone => '507-457-8901', :contact => 'William Mann' )
Customer.create!( :name => 'WSU', :phone => '507-453-4567', :contact => 'John Gott' )
Customer.create!( :name => 'MSC-SET', :phone => '507-452-3456', :contact => 'William Tell' )
# create 3 orders
Order.create!( :quantity => 5 , :itemName => 'PC', :totalCost => 5000.00, :customer_id => 1 )
Order.create!( :quantity => 3 , :itemName => 'Phone', :totalCost => 1209.78, :customer_id => 1 )
Order.create!( :quantity => 1 , :itemName => 'Scanner', :totalCost => 234.80, :customer_id => 1 )
Order.create!( :quantity => 5 , :itemName => 'Laptop', :totalCost => 5000.00, :customer_id => 2 )
Order.create!( :quantity => 4 , :itemName => 'Printer', :totalCost => 1209.78, :customer_id => 2 )
Order.create!( :quantity => 1 , :itemName => 'Shredder', :totalCost => 234.80, :customer_id => 2 )
Order.create!( :quantity => 5 , :itemName => 'Laptop', :totalCost => 5000.00, :customer_id => 3 )
Order.create!( :quantity => 5 , :itemName => 'Phone', :totalCost => 1209.78, :customer_id => 3 )
Order.create!( :quantity => 1 , :itemName => 'Scanner', :totalCost => 234.80, :customer_id => 3 )
