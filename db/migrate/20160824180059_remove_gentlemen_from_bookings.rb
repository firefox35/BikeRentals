class RemoveGentlemenFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :gentlemen, :string
  end
end
