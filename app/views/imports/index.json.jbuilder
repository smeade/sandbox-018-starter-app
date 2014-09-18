json.array!(@imports) do |import|
  json.extract! import, :id, :title
  json.url import_url(import, format: :json)
end
