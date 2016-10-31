class Api::V1::PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :desroy]

  def index
    @players = Player.all
    render json: @players
  end

  def show
    render json: @players
  end

  def create
    @player = Player.new(user-params)

    if @player.save
      render json: @user, status: created: # 200 OK
    else
      render json: @player.errors, status: :unprocessabile_entity #304
    end
  end

  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: @player.errors, status: :unprocessabile_entity
    end
  end

  def destroy
    @user.destroy
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
