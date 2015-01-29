class AddMorePhotoInformation < ActiveRecord::Migration
  def change
    add_column :photos, :flickr_id, :string
    add_column :photos, :url_z, :string
    add_column :photos, :url_m, :string
    add_column :photos, :url_o, :string
    add_column :photos, :country, :string
    add_index :photos, :flickr_id

  end
end
