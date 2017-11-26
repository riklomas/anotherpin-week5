class AddCartToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :cart_id, :integer
  end
end
