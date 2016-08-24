class RemoveGentlemenFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :gentemen, :string
  end
end
