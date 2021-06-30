Rails.application.routes.draw do
  get 'parks/search/:parkCode', to: "parks#search"
  resources :parks
  resources :nps
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
