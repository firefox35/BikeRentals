class Booking < ActiveRecord::Base
   
   def self.search(search_for)
       Booking.where("user_id = ?",search_for)
   end   
end
