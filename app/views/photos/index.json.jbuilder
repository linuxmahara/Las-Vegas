json.array!(@photos) do |photo|
  json.extract! photo, :id, :link, :thumb, :category_id
  json.url photo_url(photo, format: :json)
end
