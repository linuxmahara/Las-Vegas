json.categories do
	json.array!(@categories) do |category|
	  json.id category.id
	  json.name category.name
	end
end

json.photos do
	json.array!(@photos) do |photo|
		json.id photo.id
    json.url_z photo.url_z
    json.url_o photo.url_o
    json.url_m photo.url_m
    json.category_id photo.category_id
    json.category_name photo.category.name
	end
end