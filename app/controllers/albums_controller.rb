class AlbumsController < ApplicationController
  def index 
    @album = Album.order("RANDOM()").first
  end
end
