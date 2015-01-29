class AddFlickInfoToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :flickr_id, :string
  end
end
