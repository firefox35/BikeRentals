class AddNumberOfMaleBicyclesToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :male_bicycles, :integer
  end
end
