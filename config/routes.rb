Rails.application.routes.draw do

     devise_scope :user do
        authenticated :user do
          root 'links#index', as: :authenticated_root
        end

        unauthenticated do
          root 'devise/registrations#new', as: :unauthenticated_root
        end
      end

     devise_for :users

     get '/' => 'links#index'
     get '/links' => 'links#index'
     post '/links' => 'links#create'
     # get '/links' => 'links#index'
     # get '/products/new' => 'products#new'
     # get '/products/:id' => 'products#show'
     # post '/products' => 'products#create'
     # get '/products/:id/edit' => 'products#edit'
     # patch '/products/:id' =>'products#update'
     # delete 'products/:id' =>'products#destroy'
     # patch '/orders/:id' => 'orders#update'



end
