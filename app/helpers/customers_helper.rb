module CustomersHelper
  def orders_table
    table_data = '<table class="table table-striped"><th><span class="label label-important">Orders</span> </th>'
	table_data += "<tr> <td>Quantity</td><td>Itemname</td> <td>Totalcost</td> </tr>"
	Order.where(:customer_id => @customer.id) do |u|
	  table_data += "<tr> <td> #{u.quantity}</td><td> #{u.itemName} </td> <td> #{u.totalcost} </td> </tr> "
	end
	table_data += "</table>"
	table_data.html_safe
  end
end
