json.extract! booking, :id, :user_id, :gentleman_bike, :ladies_bike, :childrens_bike, :date_from, :date_to, :price, :created_at, :updated_at
json.url booking_url(booking, format: :json)