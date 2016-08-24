class AddNumberOfKidsBicyclesToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :kids_bicycles, :integer
  end
end
