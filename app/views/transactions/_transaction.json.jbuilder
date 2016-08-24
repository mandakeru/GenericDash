json.extract! transaction, :id, :title, :description, :category, :customer_id, :product_id, :total_price, :price, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)