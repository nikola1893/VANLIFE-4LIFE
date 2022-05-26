class AddCategoryToVans < ActiveRecord::Migration[6.1]
  def change
    add_column :vans, :category, :string
  end
end
