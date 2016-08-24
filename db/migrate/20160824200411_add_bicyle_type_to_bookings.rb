class AddBicyleTypeToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :bicycle_type, :string
  end
end
