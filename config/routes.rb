Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'exercises/index'
      get 'exercises/create'
      get 'exercises/show'
      get 'exercises/destroy'
      get 'exercises/index'
      post 'exercises/create'
      get '/show/:id', to: 'exercises#show'
      delete '/destroy/:id', to: 'exercises#destroy'
    end
  end
root 'homepage#index'
get '/*path' => 'homepage#index'

end
