Rails.application.routes.draw do
  resources :meetings

  resources :book

  resources :book do
    delete :remove
  end

  resources :book do
    resources :tags, only: [] do
      member do
        delete :remove
      end
    end
  end  

  resources :books do
    collection do
      get :search
    end
  end
  devise_for :users
  root to: "home#index"

  get 'home/search'
  get '/alread' => 'home#alread'
  get '/willread' => 'home#willread'

  get '/tags' => 'tags#index', as: 'tags'
  
   #calendar routes
   get '/calendar' => 'calendar#index'


   get '/show' => 'meeting#show'

   # get 'book/list'
   # get 'book/delete'
   # get 'book/update'
   

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
