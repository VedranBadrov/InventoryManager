json.extract! item, :id, :name, :description, :quantity, :created_at, :updated_at, :supplier
json.url item_url(item, format: :json)
