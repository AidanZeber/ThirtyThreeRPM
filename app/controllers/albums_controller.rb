class AlbumsController < ApplicationController
  def index 
    @album = Album.order("RANDOM()").first
  end

  def new 
    @album = Album.new
  end
end
