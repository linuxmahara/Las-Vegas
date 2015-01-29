class HomeController < ApplicationController
  # GET /home
  # GET /home.json
  def index
    @categories = Category.all
    puts @categories.count
    @photos = Photo.all
  end
end
