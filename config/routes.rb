Rails.application.routes.draw do
  get 'new_question/index'

  devise_for :users
  root to: "home#index"
  get 'single_question/index' => 'single_question#index'
  get 'new_question/index' => 'new_question#index'
end
