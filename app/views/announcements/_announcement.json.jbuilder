json.extract! announcement, :id, :purpose, :location, :rating, :ban, :hot_sale, :visibility, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)
