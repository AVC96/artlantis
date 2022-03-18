class BidsController < ApplicationController
  def create
    bid = Bid.new(bid_params)
    art = Art.find(params[:art_id])
    bid.art = art
    bid.user = current_user
    redirect_to art_path(art) if bid.save
  end

  def bid_params
    params.require(:bid).permit(:price)
  end
end
