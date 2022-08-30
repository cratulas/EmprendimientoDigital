class AddTotalPaidToClients < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :total_paid, :integer
  end
end
