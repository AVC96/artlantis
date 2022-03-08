class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contents]
  def home
    @arts = Art.all.sample(3)
  end

  def myauctions
    # Add temp code for showing artworks
  end

  def contents
  end
end
