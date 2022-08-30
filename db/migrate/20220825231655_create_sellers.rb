class CreateSellers < ActiveRecord::Migration[7.0]
  def change
    create_table :sellers do |t|
      t.string :rut
      t.string :name
      t.string :last_name
      t.date :birth_date
      t.string :department

      t.timestamps
    end
  end
end
