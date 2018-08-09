Rails.application.routes.draw do
  resources :candies
  root to: "candies#index"

  get "/css", controller: "candies", action: "modal"
  get "/test", controller: "candies", action: "test"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
