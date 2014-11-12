class PagesController < ApplicationController
  def index
    @cards = Card.all.shuffle[0..5]
  end
end
