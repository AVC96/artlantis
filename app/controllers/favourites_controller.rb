class FavouritesController < ApplicationController

  def index
    @favourites = Favourites.all
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def new
    @favourite = Favourite.new
  end

  private

  def find_favourite
    @favourite = Favourite.find(params[:id])
  end

  def art_params
    params.require(:art).permit(:cost, :location, :type, :description, :image)
  end

end
