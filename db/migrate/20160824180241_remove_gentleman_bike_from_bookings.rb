class RemoveGentlemanBikeFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :gentleman_bike, :boolean
  end
end
