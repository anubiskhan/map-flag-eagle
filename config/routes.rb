Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/maps/new', to: 'maps#new'
      post '/maps', to: 'maps#create'
    end
  end

  get '/', to: 'welcome#index'

  get '/auth/google_oauth2', as: :google_oauth2_login
  get '/auth/google_oauth2/callback', to: 'sessions#create'
  get :logout, to: 'sessions#destroy'
  resources :orders, only: [:new]
  resources :maps, only: [:new]
end
