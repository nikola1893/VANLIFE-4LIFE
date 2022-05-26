class AddAddressToVan < ActiveRecord::Migration[6.1]
  def change
    add_column :vans, :address, :string
  end
end
