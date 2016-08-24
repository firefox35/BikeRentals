class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.boolean :gentleman_bike
      t.boolean :ladies_bike
      t.boolean :childrens_bike
      t.date :date_from
      t.date :date_to
      t.decimal :price

      t.timestamps null: false
    end
  end
end
