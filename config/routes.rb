Rails.application.routes.draw do
  resources :ainimals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
root "ainimals#index"
end
