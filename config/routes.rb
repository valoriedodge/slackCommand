Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    #  match '/events', to: 'events#preflight', via: [:options]
     resources :events, only: [:create]
   end
end
