class BidsController < ApplicationController
  def create
    @bid = Bid.new(bid_params)
    @bid = Bid.find(params[:art_id])
    @bid.art = @art
    @bid.save
    redirect_to art_path(@art)
  end

end
