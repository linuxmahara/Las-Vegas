class Job
  attr_accessor :id

  def photos
    flickr.photos.search(:user_id=> self.id, :extras => "original_format, url_z, url_m, url_o, tags")
  end
  
end
