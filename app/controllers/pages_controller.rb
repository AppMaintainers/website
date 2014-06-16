class PagesController < ApplicationController
  def index
    @cards = Card.limit(6).all
  end
end
