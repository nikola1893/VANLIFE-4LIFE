class CreateVans < ActiveRecord::Migration[6.1]
  def change
    create_table :vans do |t|
      t.text :description
      t.boolean :available
      t.decimal :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
