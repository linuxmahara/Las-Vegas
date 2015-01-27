module Api
  class HomeController < Api::ApplicationController
    # GET /home
    # GET /home.json
    def index
      @categories = Category.all
      @photos = Photo.all
    end
  end
end