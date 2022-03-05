class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @arts = Art.all.sample(3)
  end

  def myauctions
    # Add temp code for showing artworks
  end
end
