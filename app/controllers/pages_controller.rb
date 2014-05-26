class PagesController < ApplicationController
  def index
    @cards = Card.limit(4).all
  end
end
