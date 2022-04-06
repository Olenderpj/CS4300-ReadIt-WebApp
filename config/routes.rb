Rails.application.routes.draw do
  resources :meetings

  resources :book

  resources :books do
    collection do
      get :search
    end
  end
  devise_for :users
  root to: "home#index"

  get 'home/search'
  
   #calendar routes
   get '/calendar' => 'calendar#index'


   get '/show' => 'meeting#show'

   # get 'book/list'
   # get 'book/delete'
   # get 'book/update'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
