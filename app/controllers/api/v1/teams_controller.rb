class Api::V1::TeamsController < ApplicationController
  before_action :set_teams, only: [:show, :update, :desroy]

  def index
    @teams = Team.all
    render json: @teams
  end

  def show
    render json: @teams
  end

  def create
    @team = Team.new(team-params)

    if @team.save
      render json: @team, status: created: # 200 OK
    else
      render json: @team.errors, status: :unprocessabile_entity #304
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
