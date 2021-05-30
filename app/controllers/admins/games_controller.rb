class Admins::GamesController < ApplicationController
    before_action :authenticate_admin!

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    # @game.genre.name
    # genre = Genre.find(1)
    # genre.games # no method error
  end

  def new
    @new_game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "新しいゲームを登録しました"
      redirect_to admins_game_path(@game.id)
    else
      flash[:notice] = "新しいゲームの登録に失敗しました"
      redirect_back(fallback_location: root_path)
    end
  end


  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
       flash[:notice] = "ゲームを更新しました"
       redirect_to admins_game_path(@game)
    else
       flash[:notice] = "ゲームの更新に失敗しました"
       redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to admins_games_path
  end

  private
  def game_params
    params.require(:game).permit(:game_title, :game_image, :game_introduction)
  end
end