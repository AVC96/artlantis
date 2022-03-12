class BidsController < ApplicationController
  def create
    bid = Bid.new(bid_params)
    art = Art.find(params[:art_id])
    bid.art = art
    bid.user = current_user
    if art.bids.any?
      if bid.price > art.bids.last.price
        bid.save!
          redirect_to art_path(art)
      else
        redirect_to art_path(art), notice: "Your bid is unsucessful"
    #     render 'arts/show', locals: {@art => art}, notice: "Your bid is unsucessful"
      end
    else
      if bid.price >= art.cost
        bid.save!
          redirect_to art_path(art)
      else
        redirect_to art_path(art), notice: "Your bid is unsucessful"
        # render 'arts/show', locals: {@art => art}, notice: "Your bid is unsucessful"
      end
    end
  end

  def bid_params
    params.require(:bid).permit(:price)
  end
end
