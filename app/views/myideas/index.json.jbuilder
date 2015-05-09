json.array!(@myideas) do |myidea|
  json.extract! myidea, :id, :name, :description, :picture
  json.url myidea_url(myidea, format: :json)
end
