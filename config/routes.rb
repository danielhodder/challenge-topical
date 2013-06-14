ChallengeTopical::Application.routes.draw do
  resources :topics, only: [:index, :show, :new, :create]
  root "topics#index"

  get '/login', to: 'users#login'
end