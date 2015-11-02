Rails.application.routes.draw do
  get 'new_question/index'

  devise_for :users
  root to: "home#index"
  get 'single_question/new', to: 'question#new', as: 'new_question'
  post 'single_question/create', to: 'single_question#create', as: 'create_question'
  get 'single_question/:id', to: 'single_question#show', as: 'question'
end
