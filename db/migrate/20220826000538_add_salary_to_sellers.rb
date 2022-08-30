class AddSalaryToSellers < ActiveRecord::Migration[7.0]
  def change
    add_column :sellers, :salary, :integer, nil: false, default: 400000
  end
end
