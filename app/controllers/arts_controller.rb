class ArtsController < ApplicationController
  skip_before_action :authenticate_user! , only: :index

  def index
    @arts = Art.all
    # @arts = Art.where.not(latitude: nil, longitude: nil)
    # # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    # @markers = @arts.geocoded.map do |art|
    #   {
    #     lat: art.latitude,
    #     lng: art.longitude
    #   }
    # end
  end

  def show
    @art = Art.find(params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    @art.save
    redirect_to art_path(@art)
  end

  private
  def art_params
    params.require(:art).permit(:cost, :location, :type, :description, :image)
  end

  def find_art
    @art = Art.find(params[:id])
  end
end
