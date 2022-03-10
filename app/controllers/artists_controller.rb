class ArtistsController < ApplicationController
  # How to find the id associated with the artist url
  def show
    puts params
    @artist = Artist.find(params[:id])
  end

  def index
    if params[:search].present?
      # SEARCH CODE
      @artists = Artist.where("name ILIKE :search OR location ILIKE :search", search: "%#{params[:search]}%")
    else
      @artists = Artist.all
    end
  end

  # def search
  #   artist = Artist.find_by(name: params[:search])
  #   @artists = artist.nil? ? nil : [artist]
  #   render :index
  # end
end
