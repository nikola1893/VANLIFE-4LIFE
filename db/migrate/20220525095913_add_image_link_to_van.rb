class AddImageLinkToVan < ActiveRecord::Migration[6.1]
  def change
    add_column :vans, :image_link, :string
  end
end
