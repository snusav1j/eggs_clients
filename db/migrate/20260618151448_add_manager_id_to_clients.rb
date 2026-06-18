class AddManagerIdToClients < ActiveRecord::Migration[8.0]
  def change
    add_column :clients, :manager_id, :integer

    add_index :clients, :manager_id
  end
end
