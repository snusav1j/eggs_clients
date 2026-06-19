class AddColumnsCountryCityToClients < ActiveRecord::Migration[8.0]
  def change
    add_column :clients, :country, :string
    add_column :clients, :city, :string
    add_column :clients, :inn, :string
    add_column :clients, :ogrn, :string
  end
end
