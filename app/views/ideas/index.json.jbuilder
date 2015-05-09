json.array!(@ideas) do |idea|
  json.extract! idea, :id, :name, :description, :piture
  json.url idea_url(idea, format: :json)
end
