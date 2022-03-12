class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def new
    @favourite = Favourite.new
  end

  def create
    # set_favourite_params
    @favourite = Favourite.new(set_favourite_params)
    @favourite.save!
  end

  private

  def set_favourite_params
    @art = Art.find(params[:param1])
    @user = current_user
    {art_id: @art.id, user_id: @user.id}
  end

  def find_favourite
    @favourite = Favourite.find(params[:id])
  end

  def art_params
    params.require(:art).permit(:cost, :location, :type, :description, :image)
  end
end
