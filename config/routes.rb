Rails.application.routes.draw do
  resources :home
  root "home#index"
  get "origin", :to => "folders#root_directory", as: "origin"
  resources :folder_files
  resources :folders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
