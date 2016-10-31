class Api::V1::PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :desroy]
  def index
    @players = Player.all
  end

  def show
    render json: @player
  end
  
  private

  def set_player
    @player ||=player.find(params[:id])
  end

  def player_params
    params.require(:player)
    .permit(
    :first_name,
    :last_name,
    :age,
    :height,
    :weight,
    :college
    )
  end
end
