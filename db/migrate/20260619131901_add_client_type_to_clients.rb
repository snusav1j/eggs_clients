class AddClientTypeToClients < ActiveRecord::Migration[8.0]
  def change
    add_column :clients, :client_type, :integer
    add_index :clients, :client_type
  end
end
