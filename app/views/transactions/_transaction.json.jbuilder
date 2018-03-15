json.extract! transaction, :id, :date, :type, :total, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
