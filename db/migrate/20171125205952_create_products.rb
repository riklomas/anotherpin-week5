class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.string :image_5
      t.integer :price
      t.boolean :is_featured, default: false
      t.string :collection_date
      t.text :description
      t.boolean :is_sold_out, default: false

      t.timestamps
    end
  end
end
