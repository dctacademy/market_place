json.extract! product, :id, :name, :price, :category, :description, :release_date, :is_available, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)