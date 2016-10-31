class Api::V1::TeamsController < ApplicationController
  before_action :set_teams, only: [:show, :update, :desroy]

  def index
    @teams = Team.all
    render json: @teams
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
