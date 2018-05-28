Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/auth/google_oauth2', as: :google_oauth2_login
  get '/auth/google_oauth2/callback', to: 'sessions#create'
end
