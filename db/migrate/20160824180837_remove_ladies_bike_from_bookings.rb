class RemoveLadiesBikeFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :ladies_bike, :boolean
  end
end
