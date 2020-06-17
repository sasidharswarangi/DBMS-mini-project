json.extract! ship, :id, :name, :ship_type, :insurance_id, :captain, :beginning, :destination, :created_at, :updated_at
json.url ship_url(ship, format: :json)
