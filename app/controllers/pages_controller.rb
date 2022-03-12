class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contents]
  def home
    @arts = Art.all.sample(3)
    # @closingsoon =Art.select {|art| Art.auction_end_time}
  end

  def my_auctions
    @artworks = Art.joins(:bids).where(bids: { user_id: current_user.id }).distinct
  end

  def contents
  end
end
