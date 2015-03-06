Rails.application.routes.draw do
  resource :session

  delete '/logout', to: 'sessions#destroy'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/jobs', to: "jobs#index"

  root 'welcome#index'
end
