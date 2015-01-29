class JobsController < ApplicationController

  # GET /home
  # GET /home.json
  def index
    
    flickr.access_token = "72157650528569831-01b0e12f7084bb32"
    flickr.access_secret = "6d186a4cb2bc01f4"
    job = Job.new
    job.id = params[:id]
    @photos = job.photos
    @category = params[:category]
    puts @category
    @photos.each do |photo|
      p = Photo.new_flickr(photo.id)
      if p.nil?
        p = Photo.new
        p.flickr_id = photo.id
        p.url_z = photo.url_z
        p.url_o = photo.url_o
        p.url_m = photo.url_m
        p.category_id = @category.to_i
        p.save
      else
        p.url_z = photo.url_z
        p.url_o = photo.url_o
        p.url_m = photo.url_m
        p.category_id = @category.to_i
        p.save
      end
    end 
    
    render :json => @photos.to_json
    

  end
end
