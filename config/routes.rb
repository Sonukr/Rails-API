Rails.application.routes.draw do
  devise_for :users

  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "people#index"


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :people
      devise_for :users
    end
  end
end
