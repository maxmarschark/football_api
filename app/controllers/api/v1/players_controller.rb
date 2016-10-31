class Api::V1::PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]

  def index
    @players = Player.all.includes(:team)
    render json: @players, include: :team
  end

  def show
    render json: @player, include: :team
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      render json: @player, status: :created
    else
      render json: @player.errors, status: :unprocessabile_entity
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
    @player ||= Player.find(params[:id])
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
