class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :book_id
      t.integer :order_id
      t.float :unit_price
      t.integer :quantity
      t.integer :total_price

      t.timestamps
    end
  end
end
