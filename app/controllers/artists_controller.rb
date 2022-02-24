class ArtistsController < ApplicationController
  # How to find the id associated with the artist url
  def show
    @artist = Artist.find(params[:id])
  end
end
