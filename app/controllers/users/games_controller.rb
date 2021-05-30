class Users::GamesController < ApplicationController
  def index
    @games = Game.page(params[:page]).per(8)
  end

  def show
    @game = Game.find(params[:id])
  end
end
