class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.string :bicycle_type
      t.integer :female_bicycles
      t.integer :male_bicycles
      t.integer :kids_bicycles
      t.date :date_from
      t.date :date_to
      t.decimal :price

      t.timestamps null: false
    end
  end
end
