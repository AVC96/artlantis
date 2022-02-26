class ArtistsController < ApplicationController
  # How to find the id associated with the artist url
  def show
    @artist = Artist.find(params[:id])
  end
end

class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
end

private
  def artist_params
    params.require( :artist ).permit(:name, :search)
  end
