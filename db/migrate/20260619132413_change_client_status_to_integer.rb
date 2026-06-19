class ChangeClientStatusToInteger < ActiveRecord::Migration[8.0]
  def change
    remove_column :clients, :status
    add_column :clients, :status, :integer, null: false, default: 1
  end
end
