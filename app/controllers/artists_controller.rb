class ArtistsController < ApplicationController
  # How to find the id associated with the artist url
  def show
    @artist = Artist.find(params[:id])
  end

  def index
    @artists = Artist.all
  end

  def search
    artist = Artist.find_by(name: params[:search])
    @artists = artist.nil? ? nil : [artist]
    render :index
  end
end
