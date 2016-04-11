class AlbumsController < ApplicationController
  def index 
    @album = Album.order("RANDOM()").first
  end

  def new 
    @album = Album.new
  end

  def create
    Album.create(album_params)
    redirect_to root_path
  end

  private 

  def album_params
    params.require(:album).permit(:title, :artist, :year, :genre, :description)
  end
end
