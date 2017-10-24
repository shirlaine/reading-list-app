Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "books#index"

  resources :books do
    put 'false', on: :member
    put 'true', on: :member
    resources :bookmarks, except: :show
  end
end
