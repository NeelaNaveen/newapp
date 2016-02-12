json.array!(@mytables) do |mytable|
  json.extract! mytable, :id, :name, :email
  json.url mytable_url(mytable, format: :json)
end
