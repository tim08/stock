json.extract! product, :id, :name, :kind_of_packing_id, :created_at, :updated_at
json.url product_url(product, format: :json)