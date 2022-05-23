class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :van_rating
      t.references :user, null: false, foreign_key: true
      t.references :van, null: false, foreign_key: true

      t.timestamps
    end
  end
end
