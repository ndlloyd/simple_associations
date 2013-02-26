class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :item
  attr_accessor :customer_name
  attr_accessible :itemName, :quantity, 
  :totalCost, :customer_name, :customer_id
  before_validation :convert_customer_name_to_id
  validates :customer_id, 
	:presence=> 
	  { :message=>"Customer name must be provided" }
private
#  def convert_customer_name_to_id
#    customer = Customer.find_by_name(self.customer.name)
#    self.customer_id = customer.id unless self.customer.nil?
#  end
  def convert_customer_name_to_id
    self.customer_id=Customer.find_by_name(self.customer.name).id unless self.customer.nil?
  end
end
