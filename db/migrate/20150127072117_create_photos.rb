class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :link
      t.string :thumb
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :photos, :categories
  end
end
