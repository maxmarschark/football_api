Rails.application.routes.draw do
  namespace :Api do
    namespace :v1 do
      resources :players, :teams
    end
  end
end
