class HomeController < ApplicationController
  # GET /home
  # GET /home.json
  def index
    @categories = Category.all
    @photos = Photo.all
  end
end
