class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :name
      t.string :category
      t.string :brand
      t.integer :stock

      t.timestamps
    end
  end
end
