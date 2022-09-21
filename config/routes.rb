Rails.application.routes.draw do
  resources :books
  get "status" => "status#index", defaults: { format: "json" }
end
