class HomesController < ApplicationController
  def top
    @games = Game.all.order(created_at: :desc).first(2)
  end
  
  def about
  end
end
