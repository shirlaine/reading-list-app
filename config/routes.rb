Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    put 'false', on: :member
    put 'true', on: :member
    resources :bookmarks, except: :show
  end
end
