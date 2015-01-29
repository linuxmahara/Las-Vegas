class Photo < ActiveRecord::Base
  belongs_to :category
  
  def self.new_flickr(flickr_id)
    Photo.find_by_flickr_id(flickr_id)
  end
end
