Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'posts#homepage'

  resources :posts do
    collection do
        get 'homepage'
        post 'homepage'
      end
  end
end
