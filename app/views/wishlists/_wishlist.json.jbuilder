json.extract! wishlist, :id, :name, :price, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
