Rails.application.routes.draw do
  root "goods#index"
  #get "#goods"
  resources :goods
  get "/*path" => "goods#index"
  get "goods/index"
  post "goods/create"
  get "/show/:id", to: "goods#show"
  delete "/destroy/:id", to: "goods#destroy"

  # root "homepage#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
