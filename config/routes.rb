Rails.application.routes.draw do
  root 'life#index'

  resources :life, :path => "/" do
    collection do
      post 'start' => 'life#start' 
      post 'clear' => 'life#clear' 
    end
  end
end
