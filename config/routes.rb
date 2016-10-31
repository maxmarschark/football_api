# == Route Map
#
#         Prefix Verb URI Pattern               Controller#Action
# api_v1_players GET  /api/v1/players(.:format) api/v1/players#index
#   api_v1_teams GET  /api/v1/teams(.:format)   api/v1/teams#index
#

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :players, :teams, only: [:index]
    end
  end
end
