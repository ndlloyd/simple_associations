class Order < ActiveRecord::Base
  attr_accessible :itemName, :quantity, 
  :totalCost, :customer_name, :customer_id
  before_validation :convert_customer_name_to_id
  validates :customer_id, 
	:presence=> 
	  { :message=>"Customer name must be provided" }
  belongs_to :customer
  has_one :item
end
