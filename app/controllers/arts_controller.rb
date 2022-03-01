class ArtsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @arts = Art.all
  end

  def show
    @art = Art.find(params[:id])
    @artist = @art.artist
    # @bid = Bid.find_by(art_id: params[:id], price)
    @sim_art_category = Art.where(category: @art.category).sample(4)
  end

  def new
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
    if @art.save!
      redirect_to art_path(@art)
    else
      render 'new'
    end
  end

  private

  def art_params
    params.require(:art).permit(:cost, :location, :type, :description, :image)
  end

  def find_art
    @art = Art.find(params[:id])
  end

end
