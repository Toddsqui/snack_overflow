Rails.application.routes.draw do
  get 'new_question/index'

  devise_for :users
  root to: "home#index"
  resources :single_question, only: [:show, :new, :create]
end
