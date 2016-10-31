class Api::V1::TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  def index
    @teams = Team.all.includes(:players)
    render json: @teams, include: :players
  end

  def show
    render json: @team, include: :players
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      render json: @team, status: :created
    else
      render json: @team.errors, status: :unprocessabile_entity
    end
  end

  def update
    if @team.update(team)
      render json: @team
    else
      render json: @team.errors, status: :unprocessabile_entity
    end
  end

  def destroy
    @team.destroy
  end

  private

  def set_team
    @team ||= Team.find(params[:id])
  end

  def team_params
    params.require(:team)
    .permit(
      :team_city,
      :team_name,
      :mascot
    )
  end
end
