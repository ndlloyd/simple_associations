class Customer < ActiveRecord::Base
  attr_accessible :contact, :name, :phone
  has_many :orders
  
 # def convert_customer_name_to_id(name)
 #   Customer.find_by_name(:name)
 # end
end
