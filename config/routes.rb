Rails.application.routes.draw do
  devise_for :users
  resources :notes
  get 'pages/index'

  root 'pages#index'

  authenticated :user do
    root "notes#index", as: "authenticated_root"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
