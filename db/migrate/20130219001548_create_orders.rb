class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.string :itemName
      t.decimal :totalCost

      t.timestamps
    end
  end
end
