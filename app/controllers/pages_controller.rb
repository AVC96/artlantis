class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @arts = Art.all.sample(3)
  end
  def my_auctions
    # Add temp code for showing artworks
    @bids = Bid.where(user_id: current_user.id)
    # @bid.user = current_user
    @art = Art.where(id:params[:art_id])
    raise
    # @bid.art = art
  end
end
