class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  
  def show 
    @game = Game.find(params[:id])
  end
  def new
    @game = Game.new

  end

  def create
    @game= Game.new(game_strong_params)
    if @game.save
        redirect_to game_path(@game)
    else
        render :new
    end  

  end

  def edit
    @game = Game.find(params[:id])
    render :edit

  end

  def update
    game= Game.find(params[:id])
        @games= Game.update(game_strong_params)
        if @game.valid?
            redirect_to game_path(@game)
        else   
            render :edit
        end  

  end

  def detroy
    User.destroy(params[:id])
    redirect_to games_path

  end

  def game_strong_params
    params.require(:game).permit(:name, :developer, :release_date, :rating)
  end
end
