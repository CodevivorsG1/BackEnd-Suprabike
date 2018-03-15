json.extract! user, :id, :name, :surname, :gender, :email, :phoneNum, :cellphone, :created_at, :updated_at
json.url user_url(user, format: :json)
