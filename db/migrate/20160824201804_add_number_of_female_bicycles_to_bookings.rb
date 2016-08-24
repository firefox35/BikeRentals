class AddNumberOfFemaleBicyclesToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :female_bicycles, :integer
  end
end
