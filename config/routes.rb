Rails.application.routes.draw do
  root 'life#index'

  resources :life, :path => "/" do
    collection do
      post 'run' => 'life#run' 
    end
  end
end
