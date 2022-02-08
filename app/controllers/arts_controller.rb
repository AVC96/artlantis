class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end

  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    @art = Restaurant.new(art_params)
    @art.save
    redirect_to art_path(@art)
  end

  def edit
    @art = Art.find(params[:id])
  end

  def update
    @art = Art.find(params[:id])
    @art.update(art_params)

    redirect_to art_path(@art)
  end

  private

  def art_params
    params.require(:art).permit(:cost, :location, :type, :description, :image)
  end

end
