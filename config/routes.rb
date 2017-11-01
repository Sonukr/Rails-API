Rails.application.routes.draw do
  devise_for :users

  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "people#index"

  namespace :api, defaults: { format: :json } do
   resources :people
  end
end