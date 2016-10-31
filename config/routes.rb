# == Route Map
#
#         Prefix Verb   URI Pattern                   Controller#Action
# api_v1_players GET    /api/v1/players(.:format)     api/v1/players#index
#                POST   /api/v1/players(.:format)     api/v1/players#create
#  api_v1_player GET    /api/v1/players/:id(.:format) api/v1/players#show
#                PATCH  /api/v1/players/:id(.:format) api/v1/players#update
#                PUT    /api/v1/players/:id(.:format) api/v1/players#update
#                DELETE /api/v1/players/:id(.:format) api/v1/players#destroy
#   api_v1_teams GET    /api/v1/teams(.:format)       api/v1/teams#index
#                POST   /api/v1/teams(.:format)       api/v1/teams#create
#    api_v1_team GET    /api/v1/teams/:id(.:format)   api/v1/teams#show
#                PATCH  /api/v1/teams/:id(.:format)   api/v1/teams#update
#                PUT    /api/v1/teams/:id(.:format)   api/v1/teams#update
#                DELETE /api/v1/teams/:id(.:format)   api/v1/teams#destroy
#

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :players
      resources :teams
    end
  end
end
