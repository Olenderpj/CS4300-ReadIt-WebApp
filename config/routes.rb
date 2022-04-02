Rails.application.routes.draw do
  resources :meetings
  resources :books do
    collection do
      get :search
    end
  end
  devise_for :users
  root to: "home#index"

  get 'home/search'

  # book routes
   get 'book/new'
   post 'book/create'
   get 'book/edit'
   patch 'book/update'
   get 'book/show'

   #calendar routes
   get '/calendar' => 'calendar#index'

   # get 'book/list'
   # get 'book/delete'
   # get 'book/update'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
