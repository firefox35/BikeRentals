class RemoveChildrensBikeFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :childrens_bike, :boolean
  end
end
