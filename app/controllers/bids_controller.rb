class BidsController < ApplicationController
  def create
    bid = Bid.new(bid_params)
    art = Art.find(params[:art_id])
    bid.art = art
    bid.user = current_user
    if bid.save
      redirect_to art_path(art)
    else
      render 'arts/show', notice: "Your bid is unsucessful"
    end
  end
  def bid_params
    params.require(:bid).permit(:price)
  end
end
