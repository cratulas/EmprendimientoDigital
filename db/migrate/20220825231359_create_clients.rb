class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.references :state, foreign_key: true 
      t.string :email

      t.timestamps
    end
  end
end
