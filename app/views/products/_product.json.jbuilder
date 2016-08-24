json.extract! product, :id, :name, :description, :category, :price, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)