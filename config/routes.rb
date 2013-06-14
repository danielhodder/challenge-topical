ChallengeTopical::Application.routes.draw do
  resources :topics, only: [:index, :show, :new, :create]
  root "topics#index"
end