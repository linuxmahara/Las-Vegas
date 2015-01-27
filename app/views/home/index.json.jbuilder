json.categories do
	json.array!(@categories) do |category|
	  json.id category.id
	  json.name category.name
	end
end

json.photos do
	json.array!(@photos) do |photo|
	  json.extract! photo, :id, :link, :thumb
	end
end