Rails.application.routes.draw do
  resource :session

  delete '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/jobs', to: "jobs#index"
  get '/auth/:provider/callback', to: "sessions#create"
  delete '/logout', to: "sessoins#destroy"

  root 'welcome#index'
end
