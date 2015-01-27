json.categories do
	json.array!(@categories) do |category|
	  json.id category.id
	  json.name category.name
	end
end

json.photos do
	json.array!(@photos) do |photo|
		json.id photo.id
		json.link photo.link
		json.thumb photo.thumb
		json.category photo.category.name
	end
end